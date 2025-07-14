#!/usr/bin/env python3
"""
Eleve System – Python Launcher v0.3
===================================

Inicia o front-end protegido do Access (`EleveSystem.accde`) cobrindo:

- Access completo (Office 365/2016+)
- Access Runtime (x86 ou x64)
- Ausência total → instala Runtime silenciosamente

Adicional:
- Define ícone da janela do Access em tempo de execução
- Define título personalizado na janela

Dependências:
```
pip install pywin32 pyodbc
```
"""

import ctypes
import logging
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
from typing import Optional

try:
    import winreg
    import win32com.client as win32
    import win32gui
    import win32con
except ImportError:
    print("Erro: módulos 'pywin32' não encontrados. Execute 'pip install pywin32'.")
    sys.exit(1)

# ---------------------------------------------------------------------------
APP_NAME = "EleveSystem"
ACCDE_NAME = "EleveSystem.accde"
ICO_NAME = "eleve.ico"
LOCAL_DIR = Path(os.getenv("LOCALAPPDATA", tempfile.gettempdir())) / APP_NAME
ACCESS_REG_PATHS = (
    r"SOFTWARE\Microsoft\Office\16.0\Access Runtime",
    r"SOFTWARE\WOW6432Node\Microsoft\Office\16.0\Access Runtime",
    r"SOFTWARE\Microsoft\Office\16.0\Access\InstallRoot",
    r"SOFTWARE\WOW6432Node\Microsoft\Office\16.0\Access\InstallRoot",
)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[logging.StreamHandler(sys.stdout)],
)
log = logging.getLogger(APP_NAME)

# ---------------------------------------------------------------------------
def is_admin() -> bool:
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except Exception:
        return False

def find_access_exe() -> Optional[Path]:
    for root in (winreg.HKEY_LOCAL_MACHINE, winreg.HKEY_CURRENT_USER):
        for subkey in ACCESS_REG_PATHS:
            try:
                with winreg.OpenKey(root, subkey) as key:
                    path, _ = winreg.QueryValueEx(key, "Path")
                    exe = Path(path) / "MSACCESS.EXE"
                    if exe.exists():
                        return exe
            except FileNotFoundError:
                continue
    # fallback: pastas conhecidas
    for pf in ["ProgramFiles", "ProgramFiles(x86)"]:
        base = Path(os.getenv(pf, "")) / "Microsoft Office" / "root" / "Office16"
        exe = base / "MSACCESS.EXE"
        if exe.exists():
            return exe
    return None

def install_access_runtime():
    inst = Path(__file__).with_name("accessruntime_x64.msi")
    if not inst.exists():
        log.error("Instalador accessruntime_x64.msi não encontrado.")
        sys.exit(1)
    subprocess.call(["msiexec", "/i", str(inst), "/quiet", "/qn", "/norestart"])

def ensure_local_accde() -> Path:
    LOCAL_DIR.mkdir(parents=True, exist_ok=True)
    target = LOCAL_DIR / ACCDE_NAME
    if target.exists():
        return target
    origem = Path(sys.argv[0]).with_name(ACCDE_NAME)
    if not origem.exists():
        log.error("%s não encontrado.", ACCDE_NAME)
        sys.exit(1)
    shutil.copy2(origem, target)
    return target

def set_window_icon_title(hwnd, icon_path: Path, title: str):
    WM_SETICON = 0x0080
    hicon = win32gui.LoadImage(0, str(icon_path), win32con.IMAGE_ICON, 0, 0,
                               win32con.LR_LOADFROMFILE | win32con.LR_DEFAULTSIZE)
    for size in (0, 1):  # small & big
        ctypes.windll.user32.SendMessageW(hwnd, WM_SETICON, size, hicon)
    win32gui.SetWindowText(hwnd, title)

def launch_access(accde_path: Path, access_exe: Path, cmd: str = ""):
    app = win32.Dispatch("Access.Application")
    app.Visible = True
    app.OpenCurrentDatabase(str(accde_path))
    hwnd = app.hWndAccessApp

    ico = Path(sys.argv[0]).with_name(ICO_NAME)
    if ico.exists():
        set_window_icon_title(hwnd, ico, "Eleve System")
    else:
        log.warning("Ícone %s não encontrado para personalização.", ico)

    if cmd:
        app.SetOption("Command", cmd)
    try:
        app.DoCmd.RunCommand(603)  # acCmdAppMinimize
    except Exception:
        pass
    app.UserControl = True

# ---------------------------------------------------------------------------
def main():
    log.info("=== Iniciando %s Launcher ===", APP_NAME)
    exe = find_access_exe()
    if not exe:
        log.warning("Microsoft Access não encontrado.")
        if is_admin():
            install_access_runtime()
            exe = find_access_exe()
        if not exe:
            log.error("Access não instalado mesmo após tentativa automática.")
            sys.exit(1)
    accde = ensure_local_accde()
    launch_access(accde, exe)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("Encerrado.")