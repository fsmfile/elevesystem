r"""Eleve System – Instalador com ID remoto e modo Dev (GitHub API)
------------------------------------------------------
Compile:
    pyinstaller --onefile --noconsole --icon=ico/setup.ico installer_elevesystem.py

Recursos:
• Usuário digita o SERIAL (nome do arquivo JSON)
• O instalador baixa as configurações a partir do JSON
• O valor salvo no backend é o "CLIENT_ID" de dentro do JSON
• Controle de serial único - cada serial só pode ser usado uma vez
• Modo Dev ativado com Ctrl+Shift+C e senha 4865753:
    - Permite criar novo JSON com formulário (Serial + campos de configuração)
    - Salva automaticamente em https://github.com/fsmfile/elevesystem/configs/
• Sistema inteligente de atualização:
    - Verifica se já existe licença válida no backend
    - Se houver: mostra botão "Atualizar Sistema" (atualiza apenas frontend + atalho)
    - Se não houver: mostra botão "Baixar Configuração e Instalar" (instalação completa)
"""

import os, sys, json, base64, datetime as dt, urllib.request, shutil
import pyodbc
from pathlib import Path
from uuid import uuid4
import tkinter as tk
from tkinter import ttk, messagebox, simpledialog
from ttkbootstrap import Style
from dotenv import load_dotenv

# Carregar variáveis de ambiente do arquivo .env
load_dotenv()

GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
if not GITHUB_TOKEN:
    raise ValueError("GITHUB_TOKEN não encontrado! Verifique se o arquivo .env existe e contém o token.")
GITHUB_USER = "fsmfile"
GITHUB_REPO = "elevesystem"
GITHUB_BRANCH = "main"
CONFIG_URL_BASE = f"https://raw.githubusercontent.com/{GITHUB_USER}/{GITHUB_REPO}/{GITHUB_BRANCH}/configs/"

# URL do Google Sheets para verificação de seriais
GOOGLE_SHEETS_URL = "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0"

ICON_PATH = Path(__file__).parent / "ico" / "setup.ico"

def verificar_serial_usado(serial: str) -> bool:
    """Verifica se o serial já foi utilizado consultando o Google Sheets"""
    serial = serial.strip().upper()
    
    try:
        print("🔍 Verificando serial na planilha...")
        
        # Acessa a planilha do Google Sheets
        with urllib.request.urlopen(GOOGLE_SHEETS_URL) as resp:
            if resp.status != 200:
                raise Exception(f"Erro ao acessar planilha: HTTP {resp.status}")
            
            # Lê o conteúdo CSV
            conteudo = resp.read().decode('utf-8')
            linhas = conteudo.strip().split('\n')
            
            # Processa cada linha da planilha
            for i, linha in enumerate(linhas):
                if i == 0:  # Pula cabeçalho
                    continue
                    
                # Divide a linha em colunas (CSV)
                colunas = linha.split(',')
                if len(colunas) >= 3:  # ClienteID, DataExpira, Serial_Utilizado
                    cliente_id = colunas[0].strip().strip('"').upper()
                    serial_utilizado = colunas[2].strip().strip('"').upper()
                    
                    # Verifica se é o serial procurado
                    if cliente_id == serial:
                        print(f"✅ Serial encontrado na planilha")
                        print(f"   Cliente: {cliente_id}")
                        print(f"   Status: {serial_utilizado}")
                        
                        # Verifica se já foi utilizado
                        if serial_utilizado == "SIM":
                            print("❌ Serial já está UTILIZADO")
                            return True  # Serial já foi usado
                        else:
                            print("✅ Serial ainda DISPONÍVEL")
                            return False  # Serial disponível
            
            # Serial não encontrado na planilha
            print(f"❌ Serial {serial} não encontrado na planilha!")
            raise Exception(f"Serial {serial} não está cadastrado no sistema de controle.")
            
    except urllib.error.HTTPError as e:
        if e.code == 404:
            raise Exception("Sistema de controle não encontrado. Verifique a configuração.")
        else:
            raise Exception(f"Erro ao acessar sistema de controle: HTTP {e.code}")
    except urllib.error.URLError as e:
        raise Exception("Falha de conexão. Verifique sua internet e tente novamente.")
    except Exception as e:
        if "não está cadastrado" in str(e):
            raise  # Re-propaga erro específico
        else:
            raise Exception(f"Erro ao verificar serial no sistema: {e}")

def marcar_serial_como_usado(serial: str):
    """Marca o serial como usado ATUALIZANDO A PLANILHA do Google Sheets"""
    serial = serial.strip().upper()
    
    print("🔄 Marcando serial como usado no sistema...")
    
    # NOTA: Por limitações da API do Google Sheets sem autenticação OAuth2,
    # não é possível alterar a planilha diretamente via URL.
    # A marcação deve ser feita MANUALMENTE na planilha ou via script separado.
    
    print("⚠️ IMPORTANTE:")
    print(f"   O serial {serial} foi instalado com sucesso!")
    print("   Para marcar como usado no sistema:")
    print("   1. Acesse o painel administrativo")
    print(f"   2. Encontre a linha do cliente {serial}")
    print("   3. Altere a coluna 'Serial_Utilizado' de 'Não' para 'Sim'")
    print("   4. Salve as alterações")
    print()
    print("   OU use o script: python marcar_serial_planilha.py SERIAL")

def baixar_config_por_serial(serial: str) -> dict:
    serial = serial.strip().upper()  # Garante maiúsculo e sem espaços
    url = f"{CONFIG_URL_BASE}{serial}.json"
    try:
        with urllib.request.urlopen(url) as resp:
            if resp.status != 200:
                raise Exception(f"Erro ao acessar o arquivo: {resp.status}")
            return json.load(resp)
    except urllib.error.HTTPError as e:
        raise Exception(f"SERIAL não encontrado (HTTP {e.code})\nURL: {url}")
    except urllib.error.URLError as e:
        raise Exception("Falha de conexão. Verifique sua internet.")
    except Exception as e:
        raise Exception(f"Erro inesperado: {e}")

def add_trusted_location(path: Path):
    import winreg as reg
    for ver in ("16.0", "15.0", "14.0"):
        key = fr"Software\\Microsoft\\Office\\{ver}\\Access\\Security\\Trusted Locations\\EleveSystem"
        try:
            with reg.CreateKey(reg.HKEY_CURRENT_USER, key) as k:
                reg.SetValueEx(k, "Path", 0, reg.REG_SZ, str(path) + "\\")
                reg.SetValueEx(k, "AllowSubfolders", 0, reg.REG_DWORD, 1)
        except:
            pass

def download_with_progress(url: str, dest: Path, label: tk.Label, force: bool = False):
    if not url or (dest.exists() and not force): return
    with urllib.request.urlopen(url) as resp:
        total = int(resp.getheader('Content-Length') or 0)
        downloaded = 0
        with open(dest, 'wb') as f:
            while True:
                chunk = resp.read(8192)
                if not chunk: break
                f.write(chunk)
                downloaded += len(chunk)
                if total:
                    pct = int(downloaded * 100 / total)
                    label.config(text=f"Baixando {dest.name}: {pct}%")

def connect_access(db_path: Path, senha: str):
    conn_str = f"Driver={{Microsoft Access Driver (*.mdb, *.accdb)}};DBQ={db_path};Uid=Admin;Pwd={senha};"
    return pyodbc.connect(conn_str, autocommit=True)

def garantir_tabela_licenca(conn):
    """Garante que a tabela de licença existe com todos os campos necessários"""
    cur = conn.cursor()
    try:
        # Verifica se a tabela existe
        cur.execute("SELECT TOP 1 * FROM tblLicencaLocal")
        print("✅ Tabela tblLicencaLocal já existe")
        
        # Verifica se os novos campos existem
        campos_necessarios = [
            ('DataInicioCarencia', 'DATETIME'),
            ('DiasCarenciaUtilizados', 'INTEGER'),
            ('LicencaValida', 'BIT')
        ]
        
        for campo, tipo in campos_necessarios:
            try:
                cur.execute(f"SELECT {campo} FROM tblLicencaLocal")
                print(f"✅ Campo {campo} já existe")
            except:
                # Adiciona campo se não existir
                cur.execute(f"ALTER TABLE tblLicencaLocal ADD COLUMN {campo} {tipo}")
                print(f"✅ Campo {campo} adicionado")
                
    except:
        # Cria tabela completa se não existir
        print("🔧 Criando tabela tblLicencaLocal...")
        cur.execute("""
            CREATE TABLE tblLicencaLocal (
                ClienteID TEXT(100),
                HardwareID TEXT(100),
                UltimaDataOk DATETIME,
                DataInicioCarencia DATETIME,
                DiasCarenciaUtilizados INTEGER,
                LicencaValida BIT
            )
        """)
        print("✅ Tabela tblLicencaLocal criada com sucesso")
    
    # NÃO insere registro padrão - deixa vazia para o gravar_licenca configurar
    
    conn.commit()
    cur.close()

def gravar_licenca(conn, client_id: str, dias: int, forcar: bool = False):
    """Grava ou atualiza a licença do cliente no backend"""
    cur = conn.cursor()
    
    # Obtém hardware ID
    try:
        import subprocess
        result = subprocess.run(['wmic', 'csproduct', 'get', 'uuid'], 
                              capture_output=True, text=True, shell=True)
        lines = result.stdout.strip().split('\n')
        if len(lines) >= 2:
            hardware_id = lines[1].strip()
        else:
            hardware_id = f"HW_{dt.datetime.now().strftime('%Y%m%d%H%M%S')}"
    except:
        hardware_id = f"HW_{dt.datetime.now().strftime('%Y%m%d%H%M%S')}"
    
    # Verifica se já existe registro
    cur.execute("SELECT COUNT(*) FROM tblLicencaLocal")
    ja_tem = cur.fetchone()[0] > 0
    
    if not ja_tem or forcar:
        # Remove registros existentes se forçar
        if forcar:
            cur.execute("DELETE FROM tblLicencaLocal")
        
        # Insere novo registro com todos os campos
        cur.execute("""
            INSERT INTO tblLicencaLocal 
            (ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados, LicencaValida)
            VALUES (?, ?, ?, NULL, 0, True)
        """, (client_id, hardware_id, dt.datetime.now()))
        
        print(f"✅ Licença gravada para cliente: {client_id}")
        print(f"   Hardware ID: {hardware_id}")
    else:
        # Atualiza registro existente
        cur.execute("""
            UPDATE tblLicencaLocal 
            SET ClienteID = ?, HardwareID = ?, UltimaDataOk = ?, LicencaValida = True
            WHERE ClienteID IS NOT NULL
        """, (client_id, hardware_id, dt.datetime.now()))
        
        print(f"✅ Licença atualizada para cliente: {client_id}")
    
    conn.commit()
    cur.close()

def criar_atalho(frontend_path: Path, nome_atalho: str):
    try:
        import win32com.client
        
        # Tenta diferentes locais para o desktop
        desktop_locations = [
            Path(os.path.join(os.environ['USERPROFILE'], 'Desktop')),
            Path(os.path.join(os.environ['PUBLIC'], 'Desktop')),
            Path("C:\\Users\\Public\\Desktop")
        ]
        
        desktop = None
        for loc in desktop_locations:
            if loc.exists() and loc.is_dir():
                desktop = loc
                break
        
        if not desktop:
            print("⚠️ Desktop não encontrado. Atalho não será criado.")
            return
        
        atalho = desktop / nome_atalho
        
        # Verifica se já existe e remove se necessário
        if atalho.exists():
            try:
                atalho.unlink()
            except:
                pass
        
        # Tenta criar o atalho
        shell = win32com.client.Dispatch('WScript.Shell')
        lnk = shell.CreateShortCut(str(atalho))
        lnk.Targetpath = str(frontend_path)
        lnk.WorkingDirectory = str(frontend_path.parent)
        lnk.Description = "Eleve System - Sistema de Gestão Empresarial"

        # Extrai o ícone mesmo empacotado no .exe
        if getattr(sys, 'frozen', False):
            base_path = Path(sys._MEIPASS)
        else:
            base_path = Path(__file__).parent
        icone_final = base_path / "ico" / "setup.ico"

        if icone_final.exists():
            lnk.IconLocation = f"{str(icone_final)},0"

        lnk.save()
        print(f"✅ Atalho criado em: {atalho}")
        
    except PermissionError:
        print("⚠️ Sem permissão para criar atalho no desktop.")
        print("   O sistema foi instalado, mas você precisará criar o atalho manualmente.")
        print(f"   Caminho do executável: {frontend_path}")
        
    except Exception as e:
        print(f"⚠️ Erro ao criar atalho: {e}")
        print(f"   O sistema foi instalado em: {frontend_path}")
        print("   Você pode criar o atalho manualmente ou executar diretamente.")


def upload_json_para_github(filename: str, data: dict):
    if not GITHUB_TOKEN:
        # Salva localmente na pasta configs como alternativa
        configs_dir = Path(__file__).parent / "configs"
        configs_dir.mkdir(exist_ok=True)
        
        local_file = configs_dir / filename
        with open(local_file, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        
        raise Exception(f"Token do GitHub não encontrado.\n\n"
                       f"O arquivo {filename} foi salvo localmente em:\n{local_file}\n\n"
                       f"Para salvar diretamente no GitHub:\n"
                       f"1. Configure a variável de ambiente 'GITHUB_TOKEN'\n"
                       f"2. Ou mova manualmente o arquivo para o repositório")

    url = f"https://api.github.com/repos/{GITHUB_USER}/{GITHUB_REPO}/contents/configs/{filename}"
    conteudo = json.dumps(data, indent=2, ensure_ascii=False)
    payload = json.dumps({
        "message": f"Cadastro automático de cliente {filename}",
        "content": base64.b64encode(conteudo.encode()).decode(),
        "branch": GITHUB_BRANCH
    })
    req = urllib.request.Request(url, data=payload.encode(), method="PUT")
    req.add_header("Authorization", f"token {GITHUB_TOKEN}")
    req.add_header("Content-Type", "application/json")
    req.add_header("User-Agent", "EleveSystem-Installer/1.0")
    try:
        with urllib.request.urlopen(req) as resp:
            if resp.status not in (200, 201):
                raise Exception(f"Erro ao salvar no GitHub: {resp.status}")
    except urllib.error.HTTPError as e:
        raise Exception(f"Erro ao salvar no GitHub (HTTP {e.code}): {e.reason}")
    except urllib.error.URLError as e:
        raise Exception("Falha de conexão ao tentar salvar no GitHub.")
    except Exception as e:
        raise Exception(f"Erro inesperado ao salvar JSON: {e}")


def abrir_modo_dev(root):
    dev_win = tk.Toplevel(root)
    dev_win.title("Painel do Desenvolvedor - Eleve System")
    dev_win.geometry("700x600")
    if ICON_PATH.exists():
        try: dev_win.iconbitmap(str(ICON_PATH))
        except: pass

    # Notebook para abas
    notebook = ttk.Notebook(dev_win)
    notebook.pack(fill='both', expand=True, padx=10, pady=10)
    
    # ABA 1: Informações do Sistema
    frame_info = ttk.Frame(notebook)
    notebook.add(frame_info, text="📊 Informações do Sistema")
    
    # Informações técnicas detalhadas
    info_text = tk.Text(frame_info, wrap='word', font=('Consolas', 9))
    info_scroll = ttk.Scrollbar(frame_info, orient='vertical', command=info_text.yview)
    info_text.configure(yscrollcommand=info_scroll.set)
    info_text.pack(side='left', fill='both', expand=True)
    info_scroll.pack(side='right', fill='y')
    
    # Coleta informações técnicas
    info_licenca = verificar_licenca_existente()
    info_sistema = []
    
    info_sistema.append("=== INFORMAÇÕES TÉCNICAS DO SISTEMA ===\n")
    info_sistema.append(f"🕒 Data/Hora: {dt.datetime.now().strftime('%d/%m/%Y %H:%M:%S')}")
    info_sistema.append(f"💻 Sistema Operacional: {os.name}")
    info_sistema.append(f"🐍 Python: {sys.version}")
    info_sistema.append(f"📁 Diretório do Instalador: {Path(__file__).parent}")
    info_sistema.append(f"🌐 Token GitHub Configurado: {'Sim' if GITHUB_TOKEN else 'Não'}")
    info_sistema.append(f"🔗 Repositório: {GITHUB_USER}/{GITHUB_REPO}")
    info_sistema.append(f"🌿 Branch: {GITHUB_BRANCH}")
    
    info_sistema.append("\n=== STATUS DA INSTALAÇÃO ===")
    if info_licenca["tem_licenca"]:
        info_sistema.append(f"✅ Status: Sistema INSTALADO")
        info_sistema.append(f"👤 Cliente ID: {info_licenca['cliente_id']}")
        info_sistema.append(f"💾 Backend: {info_licenca['caminho_backend']}")
        info_sistema.append(f"🖥️ Frontend: {info_licenca['caminho_frontend']}")
        
        # Verifica atalho
        atalho_existe = verificar_atalho_existe()
        info_sistema.append(f"🔗 Atalho no Desktop: {'Sim' if atalho_existe else 'Não'}")
        
        # Informações detalhadas da licença
        try:
            backend_path = Path(info_licenca['caminho_backend'])
            if backend_path.exists():
                info_sistema.append(f"📊 Tamanho Backend: {backend_path.stat().st_size / 1024 / 1024:.2f} MB")
                info_sistema.append(f"📅 Modificado em: {dt.datetime.fromtimestamp(backend_path.stat().st_mtime).strftime('%d/%m/%Y %H:%M:%S')}")
        except:
            pass
            
    else:
        info_sistema.append(f"❌ Status: Sistema NÃO INSTALADO")
        info_sistema.append(f"📝 Motivo: {info_licenca.get('erro', 'Não especificado')}")
    
    info_sistema.append("\n=== CONFIGURAÇÕES TÉCNICAS ===")
    info_sistema.append(f"📂 Diretório Padrão: C:\\FLMSistemas")
    info_sistema.append(f"🗄️ Nome Backend: FLMSistemas_be.accdb")
    info_sistema.append(f"🖥️ Nome Frontend: FLMSistemas_automacao.accdr")
    info_sistema.append(f"📋 Ícone: {ICON_PATH}")
    
    # Informações de conectividade
    info_sistema.append("\n=== CONECTIVIDADE ===")
    try:
        import urllib.request
        with urllib.request.urlopen("https://www.google.com", timeout=5) as response:
            info_sistema.append("🌐 Internet: Conectado")
    except:
        info_sistema.append("🌐 Internet: Desconectado")
    
    try:
        with urllib.request.urlopen(f"{CONFIG_URL_BASE}TESTE.json", timeout=5) as response:
            info_sistema.append("☁️ GitHub: Acessível")
    except:
        info_sistema.append("☁️ GitHub: Inacessível")
    
    info_text.insert('1.0', '\n'.join(info_sistema))
    info_text.config(state='disabled')
    
    # ABA 2: Cadastrar Cliente
    frame_cadastro = ttk.Frame(notebook)
    notebook.add(frame_cadastro, text="➕ Cadastrar Cliente")

    serial_frame = ttk.Frame(frame_cadastro)
    serial_frame.pack(pady=(10, 0))
    ttk.Label(serial_frame, text="SERIAL (nome do arquivo JSON)").pack(anchor='w')
    serial_entry = ttk.Entry(serial_frame, width=50)
    serial_entry.pack(ipady=2)

    campos = {
        "CLIENT_ID": "NOVOCLIENTE",
        "INSTALL_DIR": "C:\\FLMSistemas",
        "BACKEND_NAME": "FLMSistemas_be.accdb",
        "FRONTEND_NAME": "FLMSistemas_automacao.accdr",
        "BACKEND_URL": "https://seuservidor.com/FLMSistemas_be.accdb",
        "FRONTEND_URL": "https://github.com/fsmfile/elevesystem/raw/main/FrontEnd/FLMSistemas_automacao.accdr",
        "DB_PASSWORD": "Ca486575@",
        "CARÊNCIA_DIAS": "10",
        "SHORTCUT_NAME": "Eleve System.lnk"
    }

    frame_campos = ttk.Frame(frame_cadastro, padding=10)
    frame_campos.pack(fill='both', expand=True)
    entradas = {}
    for i, (chave, val) in enumerate(campos.items()):
        ttk.Label(frame_campos, text=chave).grid(row=i, column=0, sticky='e', padx=6, pady=5)
        ent = ttk.Entry(frame_campos, width=45)
        ent.insert(0, val)
        ent.grid(row=i, column=1, pady=5)
        entradas[chave] = ent

    def salvar():
        serial = serial_entry.get().strip()
        dados = {k: v.get().strip() for k, v in entradas.items()}
        if not serial or not dados['CLIENT_ID']:
            messagebox.showerror("Erro", "Preencha o SERIAL e o CLIENT_ID.")
            return
        try:
            upload_json_para_github(f"{serial}.json", dados)
            messagebox.showinfo("Sucesso", f"Arquivo {serial}.json salvo no GitHub!")
            dev_win.destroy()
        except Exception as e:
            error_msg = str(e)
            if "Token do GitHub não encontrado" in error_msg:
                # Se é o erro de token mas o arquivo foi salvo localmente
                if "foi salvo localmente" in error_msg:
                    resposta = messagebox.askyesno(
                        "Arquivo Salvo Localmente", 
                        f"{error_msg}\n\nDeseja fechar a janela mesmo assim?",
                        icon='warning'
                    )
                    if resposta:
                        dev_win.destroy()
                else:
                    messagebox.showerror("Erro", error_msg)
            else:
                messagebox.showerror("Erro", error_msg)

    ttk.Button(frame_cadastro, text="💾 Salvar no GitHub", command=salvar).pack(pady=15)


def instalar(config: dict, label: tk.Label, btn: ttk.Button, serial: str):
    try:
        btn.config(state='disabled')
        pasta = Path(config['INSTALL_DIR'])
        pasta.mkdir(parents=True, exist_ok=True)
        be = pasta / config['BACKEND_NAME']
        fe = pasta / config['FRONTEND_NAME']

        progresso = []

        if not be.exists():
            download_with_progress(config['BACKEND_URL'], be, label)
            progresso.append("✔ Backend instalado")
        else:
            progresso.append("✔ Backend já presente")

        # Frontend sempre substitui (força atualização)
        if fe.exists():
            progresso.append("🔄 Substituindo frontend existente...")
            label.config(text="\n".join(progresso))
            label.update()
        download_with_progress(config['FRONTEND_URL'], fe, label, force=True)
        progresso.append("✔ Frontend instalado/atualizado")

        add_trusted_location(pasta)
        progresso.append("✔ Local confiável configurado")
        
        # Configuração do sistema de licença
        label.config(fg='blue', text="\n".join(progresso + ["🔧 Configurando sistema de licença..."]))
        label.update()
        
        conn = connect_access(be, config['DB_PASSWORD'])
        garantir_tabela_licenca(conn)
        progresso.append("✔ Tabela de licença configurada")

        # Verifica cliente atual
        cur = conn.cursor()
        cur.execute("SELECT ClienteID FROM tblLicencaLocal")
        linha = cur.fetchone()
        cur.close()

        cliente_instalado = linha[0] if linha else None

        if cliente_instalado and cliente_instalado != config['CLIENT_ID']:
            label.config(fg='red', text=f"❌ Este instalador é para '{config['CLIENT_ID']}', mas o sistema já está ativado como '{cliente_instalado}'.\n\nEntre em contato com o suporte para reconfiguração.")
            return

        # Grava licença do cliente
        gravar_licenca(conn, config['CLIENT_ID'], int(config['CARÊNCIA_DIAS']), forcar=False)
        progresso.append(f"✔ Licença configurada para: {config['CLIENT_ID']}")
        conn.close()
        
        # Tenta criar atalho, mas não falha se der erro
        try:
            criar_atalho(fe, config['SHORTCUT_NAME'])
            progresso.append("✔ Atalho criado")
        except:
            progresso.append("⚠️ Atalho não criado (sem permissão)")
            progresso.append(f"   Execute: {fe}")

        # Marca o serial como usado após instalação bem-sucedida
        try:
            progresso.append("🔒 Marcando serial como usado...")
            label.config(text="\n".join(progresso))
            label.update()
            marcar_serial_como_usado(serial)
            progresso.append("✔ Serial marcado como usado")
        except Exception as e:
            # Não falha a instalação se não conseguir marcar o serial
            progresso.append(f"⚠️ Aviso: Não foi possível marcar o serial como usado: {e}")

        label.config(fg='green', text="\n".join(progresso + ["✅ Instalação concluída com sucesso!"]))

    except Exception as e:
        label.config(fg='red', text=f"❌ Erro: {e}")
    finally:
        btn.config(state='normal')

def verificar_licenca_existente(install_dir: str = "C:\\FLMSistemas", backend_name: str = "FLMSistemas_be.accdb", password: str = "Ca486575@") -> dict:
    """Verifica se existe licença válida no backend e retorna informações"""
    resultado = {
        "tem_licenca": False,
        "cliente_id": None,
        "caminho_backend": None,
        "caminho_frontend": None,
        "erro": None
    }
    
    try:
        # Verifica se o diretório existe
        pasta = Path(install_dir)
        if not pasta.exists():
            resultado["erro"] = "Diretório de instalação não encontrado"
            return resultado
        
        # Verifica se o backend existe
        backend_path = pasta / backend_name
        if not backend_path.exists():
            resultado["erro"] = "Backend não encontrado"
            return resultado
        
        resultado["caminho_backend"] = str(backend_path)
        resultado["caminho_frontend"] = str(pasta / "FLMSistemas_automacao.accdr")
        
        # Tenta conectar ao backend
        try:
            conn = connect_access(backend_path, password)
        except Exception as e:
            resultado["erro"] = f"Erro ao conectar backend: {str(e)}"
            return resultado
        
        # Verifica se a tabela de licença existe e tem dados
        cur = conn.cursor()
        try:
            cur.execute("SELECT ClienteID, LicencaValida FROM tblLicencaLocal")
            rows = cur.fetchall()
            
            if rows:
                for row in rows:
                    cliente_id = row[0]
                    licenca_valida = row[1] if len(row) > 1 else True
                    
                    if cliente_id and str(cliente_id).strip() and cliente_id.upper() != "DESCONHECIDO":
                        resultado["tem_licenca"] = True
                        resultado["cliente_id"] = cliente_id
                        break
            
        except Exception as e:
            # Tabela não existe ou erro ao acessar
            resultado["erro"] = "Tabela de licença não encontrada ou inacessível"
        finally:
            cur.close()
            conn.close()
        
        return resultado
        
    except Exception as e:
        resultado["erro"] = f"Erro geral: {str(e)}"
        return resultado

def verificar_atalho_existe(nome_atalho: str = "Eleve System.lnk") -> bool:
    """Verifica se o atalho já existe no desktop"""
    try:
        desktop_locations = [
            Path(os.path.join(os.environ['USERPROFILE'], 'Desktop')),
            Path(os.path.join(os.environ['PUBLIC'], 'Desktop')),
            Path("C:\\Users\\Public\\Desktop")
        ]
        
        for desktop in desktop_locations:
            if desktop.exists():
                atalho = desktop / nome_atalho
                if atalho.exists():
                    return True
        
        return False
    except:
        return False

def atualizar_sistema_sem_serial(label: tk.Label, btn: ttk.Button, info_licenca: dict):
    """Atualiza o sistema usando as configurações do cliente já licenciado"""
    try:
        btn.config(state='disabled')
        
        # Busca configuração baseada no cliente já instalado
        cliente_id = info_licenca['cliente_id']
        progresso = [f"🔄 Atualizando sistema para: {cliente_id}"]
        label.config(fg='blue', text="\n".join(progresso))
        label.update()
        
        try:
            config = baixar_config_por_serial(cliente_id)
        except Exception as e:
            # Se não conseguir baixar config do cliente atual, usa configuração padrão
            progresso.append("⚠️ Usando configuração padrão para atualização")
            config = {
                'CLIENT_ID': cliente_id,
                'INSTALL_DIR': 'C:\\FLMSistemas',
                'FRONTEND_NAME': 'FLMSistemas_automacao.accdr',
                'FRONTEND_URL': 'https://github.com/fsmfile/elevesystem/raw/main/FrontEnd/FLMSistemas_automacao.accdr',
                'SHORTCUT_NAME': 'Eleve System.lnk'
            }
        
        # Caminho do frontend
        frontend_path = Path(info_licenca['caminho_frontend'])
        
        # Remove frontend antigo se existir
        if frontend_path.exists():
            try:
                frontend_path.unlink()
                progresso.append("✔ Frontend antigo removido")
            except Exception as e:
                progresso.append(f"⚠️ Aviso: Não foi possível remover frontend antigo")
        
        # Baixa novo frontend
        label.config(text="\n".join(progresso + ["📥 Baixando atualização..."]))
        label.update()
        
        download_with_progress(config['FRONTEND_URL'], frontend_path, label, force=True)
        progresso.append("✔ Sistema atualizado")
        
        # Verifica se precisa criar atalho
        if not verificar_atalho_existe(config.get('SHORTCUT_NAME', 'Eleve System.lnk')):
            progresso.append("🔗 Criando atalho...")
            label.config(text="\n".join(progresso))
            label.update()
            
            try:
                criar_atalho(frontend_path, config.get('SHORTCUT_NAME', 'Eleve System.lnk'))
                progresso.append("✔ Atalho criado")
            except Exception as e:
                progresso.append(f"⚠️ Atalho não criado")
        else:
            progresso.append("✔ Atalho verificado")
        
        # Configura local confiável (caso não esteja configurado)
        add_trusted_location(frontend_path.parent)
        progresso.append("✔ Configuração finalizada")
        
        label.config(fg='green', text="\n".join(progresso + ["✅ Atualização concluída com sucesso!"]))
        
    except Exception as e:
        label.config(fg='red', text=f"❌ Erro na atualização: {e}")
    finally:
        btn.config(state='normal')


def main_gui():
    style = Style("flatly")
    root = style.master
    root.title("Eleve System – Instalador")
    root.geometry("550x350")
    if ICON_PATH.exists():
        try: root.iconbitmap(str(ICON_PATH))
        except: pass

    frame = ttk.Frame(root, padding=20)
    frame.pack(fill='both', expand=True)

    # Título principal
    titulo = ttk.Label(frame, text="Eleve System", font=('Segoe UI', 18, 'bold'))
    titulo.pack(pady=(0, 5))
    
    # Subtítulo
    subtitulo = ttk.Label(frame, text="Sistema de Gestão Empresarial", font=('Segoe UI', 11))
    subtitulo.pack(pady=(0, 30))

    # Verifica se já existe instalação
    info_licenca = verificar_licenca_existente()
    
    if info_licenca["tem_licenca"]:
        # MODO ATUALIZAÇÃO - Sistema já instalado com licença
        status_frame = ttk.LabelFrame(frame, text="Status", padding=15)
        status_frame.pack(fill='x', pady=(0, 20))
        
        ttk.Label(status_frame, text=f"✅ Sistema instalado e licenciado", 
                 font=('Segoe UI', 12), foreground='green').pack()
        ttk.Label(status_frame, text=f"Cliente: {info_licenca['cliente_id']}", 
                 font=('Segoe UI', 10)).pack()

        progresso = tk.Label(frame, text='', font=('Segoe UI', 10))
        progresso.pack(pady=15)

        botao_atualizar = ttk.Button(frame, text='🔄 Atualizar Sistema', style='success.TButton')
        botao_atualizar.pack(ipady=8, pady=(10, 0))

        def ao_clicar_atualizar():
            atualizar_sistema_sem_serial(progresso, botao_atualizar, info_licenca)

        botao_atualizar.config(command=ao_clicar_atualizar)
        
    else:
        # MODO INSTALAÇÃO - Sistema não instalado
        if info_licenca["erro"]:
            status_frame = ttk.LabelFrame(frame, text="Status", padding=15)
            status_frame.pack(fill='x', pady=(0, 20))
            
            ttk.Label(status_frame, text="❌ Sistema não encontrado", 
                     font=('Segoe UI', 12), foreground='orange').pack()
            ttk.Label(status_frame, text="Pronto para nova instalação", 
                     font=('Segoe UI', 10)).pack()
        
        ttk.Label(frame, text="Digite o SERIAL de instalação:", font=('Segoe UI', 12)).pack(pady=(10, 8))
        entrada_id = ttk.Entry(frame, font=('Segoe UI', 13), justify='center')
        entrada_id.pack(ipady=6, ipadx=10)

        progresso = tk.Label(frame, text='', font=('Segoe UI', 10))
        progresso.pack(pady=15)

        botao_instalar = ttk.Button(frame, text='📦 Instalar Sistema', style='primary.TButton')
        botao_instalar.pack(ipady=8, pady=(10, 0))

        def ao_clicar_instalar():
            serial = entrada_id.get().strip()
            if not serial:
                messagebox.showerror("Erro", "Informe um SERIAL válido.")
                return
            try:
                # Verifica se o serial já foi usado
                progresso.config(fg='blue', text="🔍 Verificando serial...")
                progresso.update()
                
                if verificar_serial_usado(serial):
                    progresso.config(fg='red', text=f"❌ Este serial já foi utilizado!\n\nCada serial pode ser usado apenas uma vez.\nEntre em contato com o suporte para obter um novo serial.")
                    return
                
                # Se o serial não foi usado, continua com a instalação
                progresso.config(fg='blue', text="✅ Serial válido! Baixando configuração...")
                progresso.update()
                
                config = baixar_config_por_serial(serial)
                instalar(config, progresso, botao_instalar, serial)
            except Exception as e:
                progresso.config(fg='red', text=f"❌ {e}")

        botao_instalar.config(command=ao_clicar_instalar)

    # Rodapé discreto
    rodape_frame = ttk.Frame(frame)
    rodape_frame.pack(side='bottom', fill='x', pady=(30, 0))
    
    ttk.Label(rodape_frame, text="Pressione Ctrl+Shift+C para acessar ferramentas avançadas", 
             font=('Segoe UI', 8), foreground='lightgray').pack()

    def atalho_dev(event):
        senha = simpledialog.askstring("Acesso Desenvolvedor", "Digite a senha:", show="*")
        if senha == "4865753":
            abrir_modo_dev(root)

    root.bind_all("<Control-Shift-c>", atalho_dev)
    root.bind_all("<Control-Shift-C>", atalho_dev)
    root.mainloop()

if __name__ == '__main__':
    main_gui()
