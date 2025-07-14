r"""Eleve System – Instalador com ID remoto e modo Dev (GitHub API)
------------------------------------------------------
Compile:
    pyinstaller --onefile --noconsole --icon=ico/setup.ico installer_elevesystem.py

Recursos:
• Usuário digita o SERIAL (nome do arquivo JSON)
• O instalador baixa as configurações a partir do JSON
• O valor salvo no backend é o "CLIENT_ID" de dentro do JSON
• Modo Dev ativado com Ctrl+Shift+C e senha 4865753:
    - Permite criar novo JSON com formulário (Serial + campos de configuração)
    - Salva automaticamente em https://github.com/fsmfile/elevesystem/configs/
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

ICON_PATH = Path(__file__).parent / "ico" / "setup.ico"

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

def download_with_progress(url: str, dest: Path, label: tk.Label):
    if not url or dest.exists(): return
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
    dev_win.title("Cadastrar novo cliente")
    dev_win.geometry("560x460")
    if ICON_PATH.exists():
        try: dev_win.iconbitmap(str(ICON_PATH))
        except: pass

    serial_frame = ttk.Frame(dev_win)
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

    frame = ttk.Frame(dev_win, padding=10)
    frame.pack(fill='both', expand=True)
    entradas = {}
    for i, (chave, val) in enumerate(campos.items()):
        ttk.Label(frame, text=chave).grid(row=i, column=0, sticky='e', padx=6, pady=5)
        ent = ttk.Entry(frame, width=45)
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

    ttk.Button(dev_win, text="Salvar no GitHub", command=salvar).pack(pady=15)

...
def instalar(config: dict, label: tk.Label, btn: ttk.Button):
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

        if not fe.exists():
            download_with_progress(config['FRONTEND_URL'], fe, label)
            progresso.append("✔ Frontend instalado")
        else:
            progresso.append("✔ Frontend já presente")

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

        label.config(fg='green', text="\n".join(progresso + ["✅ Instalação concluída com sucesso!"]))

    except Exception as e:
        label.config(fg='red', text=f"❌ Erro: {e}")
    finally:
        btn.config(state='normal')


def main_gui():
    style = Style("flatly")
    root = style.master
    root.title("Eleve System – Instalador via ID")
    root.geometry("560x300")
    if ICON_PATH.exists():
        try: root.iconbitmap(str(ICON_PATH))
        except: pass

    frame = ttk.Frame(root, padding=20)
    frame.pack(fill='both', expand=True)

    ttk.Label(frame, text="Digite o SERIAL:", font=('Segoe UI', 11)).pack(pady=(0, 10))
    entrada_id = ttk.Entry(frame, font=('Segoe UI', 12))
    entrada_id.pack(ipady=4)

    progresso = tk.Label(frame, text='', font=('Segoe UI', 10))
    progresso.pack(pady=10)

    botao_instalar = ttk.Button(frame, text='Buscar Configuração e Instalar')
    botao_instalar.pack(ipady=4, pady=(10, 0))

    def ao_clicar():
        serial = entrada_id.get().strip()
        if not serial:
            messagebox.showerror("Erro", "Informe um SERIAL válido.")
            return
        try:
            config = baixar_config_por_serial(serial)
            instalar(config, progresso, botao_instalar)
        except Exception as e:
            progresso.config(fg='red', text=f"❌ {e}")

    botao_instalar.config(command=ao_clicar)

    def atalho_dev(event):
        senha = simpledialog.askstring("Senha", "Digite a senha do desenvolvedor:", show="*")
        if senha == "4865753":
            abrir_modo_dev(root)

    root.bind_all("<Control-Shift-c>", atalho_dev)
    root.bind_all("<Control-Shift-C>", atalho_dev)
    root.mainloop()

if __name__ == '__main__':
    main_gui()
