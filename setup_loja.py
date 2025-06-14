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

GITHUB_TOKEN = "[REDACTED]zDP4ZX5nI5z0K0Uejx8bU2AIswUc9M4AC1QU"
GITHUB_USER = "fsmfile"
GITHUB_REPO = "elevesystem"
GITHUB_BRANCH = "main"
CONFIG_URL_BASE = f"https://raw.githubusercontent.com/{GITHUB_USER}/{GITHUB_REPO}/{GITHUB_BRANCH}/configs/"

ICON_PATH = Path(__file__).parent / "ico" / "setup.ico"

def baixar_config_por_serial(serial: str) -> dict:
    url = f"{CONFIG_URL_BASE}{serial}.json"
    try:
        with urllib.request.urlopen(url) as resp:
            if resp.status != 200:
                raise Exception(f"Erro ao acessar o arquivo: {resp.status}")
            return json.load(resp)
    except urllib.error.HTTPError as e:
        raise Exception(f"SERIAL não encontrado (HTTP {e.code})")
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
    cur = conn.cursor()
    try:
        cur.execute("SELECT TOP 1 * FROM tblLicencaLocal")
    except:
        cur.execute("CREATE TABLE tblLicencaLocal (ClienteID TEXT(100), HardwareID TEXT(100), UltimaDataOk DATETIME);")
    cur.close()

def gravar_licenca(conn, client_id: str, dias: int, forcar: bool = False):
    cur = conn.cursor()
    cur.execute("SELECT COUNT(*) FROM tblLicencaLocal")
    ja_tem = cur.fetchone()[0] > 0
    if not ja_tem or forcar:
        cur.execute("DELETE FROM tblLicencaLocal;")
        cur.execute("INSERT INTO tblLicencaLocal VALUES (?,?,?);", (
            client_id, uuid4().hex, dt.datetime.now() - dt.timedelta(days=dias)))
    cur.close()

def criar_atalho(frontend_path: Path, nome_atalho: str):
    try:
        import win32com.client
        desktop = Path(os.path.join(os.environ['USERPROFILE'], 'Desktop'))
        atalho = desktop / nome_atalho
        shell = win32com.client.Dispatch('WScript.Shell')
        lnk = shell.CreateShortCut(str(atalho))
        lnk.Targetpath = str(frontend_path)
        lnk.WorkingDirectory = str(frontend_path.parent)

        # Extrai o ícone mesmo empacotado no .exe
        if getattr(sys, 'frozen', False):
            base_path = Path(sys._MEIPASS)
        else:
            base_path = Path(__file__).parent
        icone_final = base_path / "ico" / "setup.ico"

        if icone_final.exists():
            lnk.IconLocation = f"{str(icone_final)},0"

        lnk.save()
    except Exception as e:
        print("Erro ao criar atalho:", e)


def upload_json_para_github(filename: str, data: dict):
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
    with urllib.request.urlopen(req) as resp:
        if resp.status not in (200, 201):
            raise Exception(f"Erro ao salvar no GitHub: {resp.status}")

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
            messagebox.showerror("Erro", str(e))

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
        conn = connect_access(be, config['DB_PASSWORD'])
        garantir_tabela_licenca(conn)

        cur = conn.cursor()
        cur.execute("SELECT ClienteID FROM tblLicencaLocal")
        linha = cur.fetchone()
        cur.close()

        cliente_instalado = linha[0] if linha else None

        if cliente_instalado and cliente_instalado != config['CLIENT_ID']:
            label.config(fg='red', text=f"❌ Este instalador é para '{config['CLIENT_ID']}', mas o sistema já está ativado como '{cliente_instalado}'.\n\nEntre em contato com o suporte para reconfiguração.")
            return

        gravar_licenca(conn, config['CLIENT_ID'], int(config['CARÊNCIA_DIAS']), forcar=False)
        conn.close()
        criar_atalho(fe, config['SHORTCUT_NAME'])
        progresso.append("✔ Atalho criado")

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
