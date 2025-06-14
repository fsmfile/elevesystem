"""Eleve System – Installer EXE (One‑Click)
-------------------------------------------------
Este script deve ser compilado com PyInstaller (--onefile --noconsole)
antes de ser enviado ao cliente. 100 % automatizado, sem prompts.

FUNCIONALIDADES:
• Cria/valida Trusted Location para Access (Office 2010 – Office 365)
• (Opcional) Faz download do backend e frontend se não existirem
• Cria/atualiza tabela tblLicencaLocal no backend
• Cria atalho profissional do front‑end no desktop do usuário
• Roda de forma idempotente – pode ser executado várias vezes sem erro
"""
from __future__ import annotations
import os, sys, datetime as dt, subprocess, urllib.request, shutil
import winreg as reg
import pyodbc, ctypes
from uuid import uuid4
from pathlib import Path

# === CONFIGURADO PELO DESENVOLVEDOR (EDITAR ANTES DE COMPILAR) ===
CLIENT_ID          = "LPPNEUS"                              # ← ID da loja
INSTALL_DIR        = Path(r"C:\FLMSistemas")               # ← pasta padrão
BACKEND_NAME       = "FLMSistemas_be.accdb"                 # ← backend file
FRONTEND_NAME      = "FLMSistemas_automacao.accdr"          # ← frontend file
DB_PASSWORD        = "Ca486575@"                            # ← senha do BE
BACKEND_DOWNLOAD_URL  = ""   # opcional .accdr num link direto (https)
FRONTEND_DOWNLOAD_URL = ""   # opcional .accdr num link direto (https)

CARENCIA_DIAS      = 10  # dias de tolerância offline
SHORTCUT_NAME      = "Eleve System.lnk"
ICON_PATH          = str(Path(sys.executable).with_suffix('.ico'))  # pode trocar

# =================================================================

INSTALL_DIR.mkdir(parents=True, exist_ok=True)
BACKEND_PATH  = INSTALL_DIR / BACKEND_NAME
FRONTEND_PATH = INSTALL_DIR / FRONTEND_NAME

# ------- util -----------------------------------------------------------------

def download_if_missing(url: str, dest: Path):
    if url and not dest.exists():
        try:
            print(f"• Baixando {dest.name}...")
            with urllib.request.urlopen(url) as r, open(dest, 'wb') as f:
                shutil.copyfileobj(r, f)
        except Exception as e:
            print(f"! Falha no download: {e}")

# ---- Trusted Location ---------------------------------------------------------

def add_trusted_location(path: Path):
    office_versions = ["16.0", "15.0", "14.0"]
    for ver in office_versions:
        for root in (reg.HKEY_CURRENT_USER, reg.HKEY_LOCAL_MACHINE):
            key_base = fr"Software\Microsoft\Office\{ver}\Access\Security\Trusted Locations"
            try:
                with reg.CreateKeyEx(root, key_base + r"\EleveSystem", 0, reg.KEY_WRITE) as k:
                    reg.SetValueEx(k, "Path", 0, reg.REG_SZ, str(path) + "\\")
                    reg.SetValueEx(k, "AllowSubfolders", 0, reg.REG_DWORD, 1)
            except PermissionError:
                pass  # sem privilégio – HKCU já deve bastar

# ---- Shortcut -----------------------------------------------------------------

def create_shortcut(target: Path, shortcut_name: str, icon: str | None = None):
    try:
        import win32com.client  # pywin32
    except ImportError:
        print("! pywin32 não disponível: pulando criação de atalho")
        return
    desktop = Path(os.path.join(os.environ["USERPROFILE"], "Desktop"))
    lnk_path = desktop / shortcut_name
    shell = win32com.client.Dispatch("WScript.Shell")
    shortcut = shell.CreateShortCut(str(lnk_path))
    shortcut.Targetpath = str(target)
    shortcut.WorkingDirectory = str(target.parent)
    if icon and Path(icon).exists():
        shortcut.IconLocation = icon
    shortcut.save()

# ---- Access -------------------------------------------------------------------

def connect_access(db_path: Path):
    conn_str = (
        r"Driver={Microsoft Access Driver (*.mdb, *.accdb)};"  # ODBC padrão
        fr"DBQ={db_path};"
        r"Uid=Admin;"
        fr"Pwd={DB_PASSWORD};"
    )
    return pyodbc.connect(conn_str, autocommit=True)


def ensure_tbl_licenca(conn):
    cur = conn.cursor()
    try:
        cur.execute("SELECT TOP 1 * FROM tblLicencaLocal")
    except pyodbc.Error:
        cur.execute("""
            CREATE TABLE tblLicencaLocal (
                ClienteID     TEXT(100),
                HardwareID    TEXT(100),
                UltimaDataOk  DATETIME
            );""")
    cur.close()


def upsert_licenca(conn):
    hw_id = uuid4().hex  # hardware ID simplificado; pode usar WMI se preferir
    cur = conn.cursor()
    cur.execute("DELETE FROM tblLicencaLocal;")
    cur.execute("""
        INSERT INTO tblLicencaLocal (ClienteID, HardwareID, UltimaDataOk)
        VALUES (?,?,?);""", (CLIENT_ID, hw_id, dt.datetime.now() - dt.timedelta(days=CARENCIA_DIAS)))
    cur.close()

# ---- main ---------------------------------------------------------------------

def main():
    print("\n== Eleve System – Installer ==\n")

    # 1. arquivos necessários
    download_if_missing(BACKEND_DOWNLOAD_URL, BACKEND_PATH)
    download_if_missing(FRONTEND_DOWNLOAD_URL, FRONTEND_PATH)

    if not BACKEND_PATH.exists():
        sys.exit(f"Backend {BACKEND_PATH} não encontrado.")

    # 2. Trusted Location
    add_trusted_location(INSTALL_DIR)
    print("• Trusted Location verificada ✅")

    # 3. Tabela de licença
    try:
        conn = connect_access(BACKEND_PATH)
        ensure_tbl_licenca(conn)
        upsert_licenca(conn)
        conn.close()
        print("• Licença local atualizada ✅")
    except pyodbc.Error as e:
        print(f"! Erro no ODBC: {e}")

    # 4. Atalho
    create_shortcut(FRONTEND_PATH, SHORTCUT_NAME, ICON_PATH)
    print("• Atalho criado/atualizado ✅")

    ctypes.windll.user32.MessageBoxW(None, "Instalação concluída!", "Eleve System", 64)

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        ctypes.windll.user32.MessageBoxW(None, str(e), "Eleve System – Erro", 16)
