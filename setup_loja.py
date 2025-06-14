r"""Eleve System – Installer com ID remoto (via GitHub)
------------------------------------------------------------
Compile:
    pyinstaller --onefile --noconsole --icon=ico/setup.ico installer_elevesystem.py

Recursos:
• Ao abrir, o usuário informa um ID único (ex: LPP001)
• O instalador busca as configurações desse ID em um JSON remoto (GitHub)
• Ex: https://raw.githubusercontent.com/fsmfile/elevesystem/main/configs/LPP001.json
• Com base nisso, realiza toda a instalação automaticamente
• Nenhum registro local usado, nem arquivos externos
• Progresso visível, ícone personalizado, atalho criado com mesmo ícone
"""

import os, sys, json, datetime as dt, urllib.request, shutil
import pyodbc
from pathlib import Path
from uuid import uuid4
from threading import Thread
import tkinter as tk
from tkinter import ttk, messagebox, simpledialog

ICON_PATH = Path(__file__).parent / "ico" / "setup.ico"  # ícone profissional na pasta /ico
CONFIG_URL_BASE = "https://raw.githubusercontent.com/fsmfile/elevesystem/main/configs/"

# ----------------- Baixar configuração via ID -----------------
def baixar_config_por_id(cliente_id: str) -> dict:
    url = f"{CONFIG_URL_BASE}{cliente_id}.json"
    try:
        with urllib.request.urlopen(url) as resp:
            return json.load(resp)
    except Exception as e:
        raise RuntimeError(f"Não foi possível carregar a configuração para o ID '{cliente_id}': {e}")

# ----------------- Trusted Location -----------------
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

# ----------------- Download com progresso -----------------
def download_with_progress(url: str, dest: Path, label: tk.Label):
    if not url or dest.exists():
        return
    try:
        with urllib.request.urlopen(url) as resp:
            total = int(resp.getheader('Content-Length') or 0)
            downloaded = 0
            block = 8192
            with open(dest, 'wb') as f:
                while True:
                    chunk = resp.read(block)
                    if not chunk:
                        break
                    f.write(chunk)
                    downloaded += len(chunk)
                    if total:
                        pct = int(downloaded * 100 / total)
                        label.config(text=f"Baixando {dest.name}: {pct}%")
    except Exception as err:
        label.config(fg='red', text=f"❌ Erro ao baixar {dest.name}: {err}")
        raise

# ----------------- Access e licença -----------------
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

def gravar_licenca(conn, cliente_id: str, dias_tolerancia: int):
    cur = conn.cursor()
    cur.execute("DELETE FROM tblLicencaLocal;")
    cur.execute("INSERT INTO tblLicencaLocal VALUES (?,?,?);", (
        cliente_id, uuid4().hex, dt.datetime.now() - dt.timedelta(days=dias_tolerancia)))
    cur.close()

# ----------------- Atalho Desktop -----------------
def criar_atalho(frontend_path: Path, nome_atalho: str):
    try:
        import win32com.client
    except ImportError:
        return
    desktop = Path(os.path.join(os.environ['USERPROFILE'], 'Desktop'))
    atalho = desktop / nome_atalho
    shell = win32com.client.Dispatch('WScript.Shell')
    lnk = shell.CreateShortCut(str(atalho))
    lnk.Targetpath = str(frontend_path)
    lnk.WorkingDirectory = str(frontend_path.parent)
    if ICON_PATH.exists():
        lnk.IconLocation = str(ICON_PATH)
    lnk.save()

# ----------------- Instalação principal -----------------
def instalar(config: dict, label: tk.Label, btn: ttk.Button):
    try:
        btn.config(state='disabled')
        pasta = Path(config['INSTALL_DIR'])
        pasta.mkdir(parents=True, exist_ok=True)

        be = pasta / config['BACKEND_NAME']
        fe = pasta / config['FRONTEND_NAME']

        download_with_progress(config['BACKEND_URL'], be, label)
        download_with_progress(config['FRONTEND_URL'], fe, label)

        if not be.exists():
            raise FileNotFoundError(f"Backend não encontrado: {be}")

        label.config(text='Registrando local confiável...')
        add_trusted_location(pasta)

        label.config(text='Gravando licença...')
        conn = connect_access(be, config['DB_PASSWORD'])
        garantir_tabela_licenca(conn)
        gravar_licenca(conn, config['CLIENT_ID'], int(config['CARÊNCIA_DIAS']))
        conn.close()

        label.config(text='Criando atalho...')
        criar_atalho(fe, config['SHORTCUT_NAME'])

        label.config(fg='green', text='✅ Instalação concluída com sucesso!')

    except Exception as e:
        label.config(fg='red', text=f"❌ Erro: {e}")
    finally:
        btn.config(state='normal')

# ----------------- UI Principal -----------------
def main_gui():
    root = tk.Tk()
    root.title("Eleve System – Instalador via ID")
    root.geometry("560x300")
    if ICON_PATH.exists():
        try:
            root.iconbitmap(str(ICON_PATH))
        except:
            pass

    frame = ttk.Frame(root, padding=20)
    frame.pack(fill='both', expand=True)

    ttk.Label(frame, text="Digite o ID do cliente para iniciar a instalação:", font=('Segoe UI', 11)).pack(pady=(0, 10))
    entrada_id = ttk.Entry(frame, font=('Segoe UI', 12))
    entrada_id.pack(ipady=4)

    progresso = tk.Label(frame, text='', font=('Segoe UI', 10))
    progresso.pack(pady=10)

    botao_instalar = ttk.Button(frame, text='Buscar Configuração e Instalar')
    botao_instalar.pack(ipady=4, pady=(10, 0))

    def ao_clicar():
        cliente_id = entrada_id.get().strip()
        if not cliente_id:
            messagebox.showerror("Erro", "Por favor, informe um ID válido.")
            return
        try:
            config = baixar_config_por_id(cliente_id)
            instalar(config, progresso, botao_instalar)
        except Exception as e:
            progresso.config(fg='red', text=f"Erro: {e}")

    botao_instalar.config(command=ao_clicar)
    root.mainloop()

if __name__ == '__main__':
    main_gui()
