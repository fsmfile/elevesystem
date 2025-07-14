#!/usr/bin/env python3
"""
Script para criar atalho do Eleve System manualmente
===================================================

Use este script se o instalador não conseguir criar o atalho automaticamente.

Uso:
    python criar_atalho.py [caminho_do_frontend]
"""

import os
import sys
from pathlib import Path

def criar_atalho_manual(frontend_path: str):
    """Cria atalho do Eleve System no desktop"""
    try:
        import win32com.client
        
        # Verifica se o arquivo existe
        frontend = Path(frontend_path)
        if not frontend.exists():
            print(f"❌ Arquivo não encontrado: {frontend_path}")
            return False
        
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
            print("❌ Desktop não encontrado.")
            return False
        
        # Nome do atalho
        nome_atalho = "Eleve System.lnk"
        atalho = desktop / nome_atalho
        
        # Remove atalho existente se houver
        if atalho.exists():
            try:
                atalho.unlink()
                print("✓ Atalho existente removido")
            except:
                pass
        
        # Cria novo atalho
        shell = win32com.client.Dispatch('WScript.Shell')
        lnk = shell.CreateShortCut(str(atalho))
        lnk.Targetpath = str(frontend)
        lnk.WorkingDirectory = str(frontend.parent)
        lnk.Description = "Eleve System - Sistema de Gestão Empresarial"
        
        # Adiciona ícone se disponível
        icone_path = frontend.parent.parent / "ico" / "setup.ico"
        if icone_path.exists():
            lnk.IconLocation = f"{str(icone_path)},0"
        
        lnk.save()
        print(f"✅ Atalho criado com sucesso!")
        print(f"   Localização: {atalho}")
        print(f"   Executável: {frontend}")
        return True
        
    except PermissionError:
        print("❌ Sem permissão para criar atalho no desktop.")
        print("   Tente executar como administrador.")
        return False
        
    except Exception as e:
        print(f"❌ Erro ao criar atalho: {e}")
        return False

def main():
    if len(sys.argv) != 2:
        print("Uso: python criar_atalho.py [caminho_do_frontend]")
        print("Exemplo: python criar_atalho.py C:\\FLMSistemas\\FLMSistemas_automacao.accdr")
        print()
        print("Locais comuns do frontend:")
        print("  C:\\FLMSistemas\\FLMSistemas_automacao.accdr")
        print("  C:\\Program Files\\FLMSistemas\\FLMSistemas_automacao.accdr")
        sys.exit(1)
    
    frontend_path = sys.argv[1]
    
    print("=== Criador de Atalho - Eleve System ===")
    print(f"Frontend: {frontend_path}")
    print()
    
    if criar_atalho_manual(frontend_path):
        print()
        print("🎉 Atalho criado com sucesso!")
        print("   Você pode agora executar o Eleve System pelo atalho no desktop.")
    else:
        print()
        print("❌ Não foi possível criar o atalho.")
        print("   Você pode executar o sistema diretamente pelo arquivo .accdr")

if __name__ == "__main__":
    main() 