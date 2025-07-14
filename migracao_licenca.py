#!/usr/bin/env python3
"""
Script de Migração do Sistema de Licença
========================================

Este script atualiza sistemas existentes para o novo sistema de verificação de licença
com controle de carência e verificação online.

Uso:
    python migracao_licenca.py [caminho_do_backend]
"""

import os
import sys
import pyodbc
import datetime as dt
from pathlib import Path

def conectar_backend(caminho_backend):
    """Conecta ao backend do Access"""
    try:
        # Tenta primeiro sem senha
        conn_str = f"Driver={{Microsoft Access Driver (*.mdb, *.accdb)}};DBQ={caminho_backend};"
        return pyodbc.connect(conn_str)
    except:
        try:
            # Se falhar, tenta com senha
            conn_str = f"Driver={{Microsoft Access Driver (*.mdb, *.accdb)}};DBQ={caminho_backend};PWD=Ca486575@;"
            return pyodbc.connect(conn_str)
        except Exception as e:
            print(f"Erro ao conectar ao backend: {e}")
            return None

def atualizar_tabela_licenca(conn):
    """Atualiza a tabela de licença com os novos campos"""
    cur = conn.cursor()
    
    try:
        # Verifica se a tabela existe
        cur.execute("SELECT TOP 1 * FROM tblLicencaLocal")
        print("✓ Tabela tblLicencaLocal encontrada")
        
        # Verifica se os novos campos existem
        campos_existentes = []
        try:
            cur.execute("SELECT DataInicioCarencia FROM tblLicencaLocal")
            campos_existentes.append("DataInicioCarencia")
        except:
            pass
            
        try:
            cur.execute("SELECT DiasCarenciaUtilizados FROM tblLicencaLocal")
            campos_existentes.append("DiasCarenciaUtilizados")
        except:
            pass
            
        try:
            cur.execute("SELECT LicencaValida FROM tblLicencaLocal")
            campos_existentes.append("LicencaValida")
        except:
            pass
        
        # Adiciona campos que não existem
        if "DataInicioCarencia" not in campos_existentes:
            cur.execute("ALTER TABLE tblLicencaLocal ADD COLUMN DataInicioCarencia DATETIME")
            print("✓ Campo DataInicioCarencia adicionado")
            
        if "DiasCarenciaUtilizados" not in campos_existentes:
            cur.execute("ALTER TABLE tblLicencaLocal ADD COLUMN DiasCarenciaUtilizados INTEGER")
            print("✓ Campo DiasCarenciaUtilizados adicionado")
            
        if "LicencaValida" not in campos_existentes:
            cur.execute("ALTER TABLE tblLicencaLocal ADD COLUMN LicencaValida BIT")
            print("✓ Campo LicencaValida adicionado")
        
        # Atualiza registros existentes
        cur.execute("UPDATE tblLicencaLocal SET LicencaValida = 1 WHERE LicencaValida IS NULL")
        print("✓ Registros existentes atualizados")
        
        conn.commit()
        print("✓ Migração concluída com sucesso!")
        
    except Exception as e:
        print(f"❌ Erro durante a migração: {e}")
        conn.rollback()
    finally:
        cur.close()

def criar_backup(caminho_backend):
    """Cria backup do backend antes da migração"""
    try:
        backup_path = Path(caminho_backend).with_suffix('.accdb.bak')
        if not backup_path.exists():
            import shutil
            shutil.copy2(caminho_backend, backup_path)
            print(f"✓ Backup criado: {backup_path}")
        else:
            print(f"✓ Backup já existe: {backup_path}")
        return True
    except Exception as e:
        print(f"❌ Erro ao criar backup: {e}")
        return False

def main():
    if len(sys.argv) != 2:
        print("Uso: python migracao_licenca.py [caminho_do_backend]")
        print("Exemplo: python migracao_licenca.py C:\\FLMSistemas\\FLMSistemas_be.accdb")
        sys.exit(1)
    
    caminho_backend = sys.argv[1]
    
    if not os.path.exists(caminho_backend):
        print(f"❌ Arquivo não encontrado: {caminho_backend}")
        sys.exit(1)
    
    print("=== Migração do Sistema de Licença ===")
    print(f"Backend: {caminho_backend}")
    print()
    
    # Cria backup
    if not criar_backup(caminho_backend):
        print("❌ Não foi possível criar backup. Migração cancelada.")
        sys.exit(1)
    
    # Conecta ao backend
    conn = conectar_backend(caminho_backend)
    if not conn:
        print("❌ Não foi possível conectar ao backend.")
        sys.exit(1)
    
    # Executa migração
    atualizar_tabela_licenca(conn)
    
    # Fecha conexão
    conn.close()
    
    print()
    print("=== Instruções Pós-Migração ===")
    print("1. Substitua o arquivo Form_chk_Start.bas pelo novo Form_chk_Start_Novo.bas")
    print("2. Adicione o módulo Mod_VerificacaoLicenca.bas ao projeto")
    print("3. Execute a consulta Cs_CriarTblLicencaLocal.sql se necessário")
    print("4. Teste o sistema para verificar se a migração foi bem-sucedida")

if __name__ == "__main__":
    main() 