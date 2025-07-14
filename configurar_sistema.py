#!/usr/bin/env python3
"""
Script de Configuração Automática do Sistema
============================================

Este script configura automaticamente o sistema de verificação de licença
e aplica todas as atualizações necessárias.

Uso:
    python configurar_sistema.py [caminho_do_backend] [client_id]
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
            print(f"❌ Erro ao conectar ao backend: {e}")
            return None

def obter_hardware_id():
    """Obtém o ID único do hardware"""
    try:
        import subprocess
        result = subprocess.run(['wmic', 'csproduct', 'get', 'uuid'], 
                              capture_output=True, text=True, shell=True)
        lines = result.stdout.strip().split('\n')
        if len(lines) >= 2:
            return lines[1].strip()
        return "UNKNOWN"
    except:
        return "UNKNOWN"

def configurar_tabela_licenca(conn, client_id):
    """Configura a tabela de licença com os novos campos"""
    print("🔧 Configurando tabela de licença...")
    
    cur = conn.cursor()
    
    try:
        # Verifica se a tabela existe
        cur.execute("SELECT TOP 1 * FROM tblLicencaLocal")
        print("✅ Tabela tblLicencaLocal existe")
    except:
        # Cria a tabela se não existir
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
        print("✅ Tabela tblLicencaLocal criada")
    
    # Adiciona campos se não existirem
    campos_para_adicionar = [
        ('DataInicioCarencia', 'DATETIME'),
        ('DiasCarenciaUtilizados', 'INTEGER'),
        ('LicencaValida', 'BIT')
    ]
    
    for campo, tipo in campos_para_adicionar:
        try:
            cur.execute(f"SELECT {campo} FROM tblLicencaLocal")
            print(f"✅ Campo {campo} já existe")
        except:
            cur.execute(f"ALTER TABLE tblLicencaLocal ADD COLUMN {campo} {tipo}")
            print(f"✅ Campo {campo} adicionado")
    
    # Insere ou atualiza registro
    hardware_id = obter_hardware_id()
    data_atual = dt.datetime.now()
    
    cur.execute("SELECT COUNT(*) FROM tblLicencaLocal")
    if cur.fetchone()[0] == 0:
        # Insere novo registro
        cur.execute("""
            INSERT INTO tblLicencaLocal 
            (ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados, LicencaValida)
            VALUES (?, ?, ?, NULL, 0, 1)
        """, (client_id, hardware_id, data_atual))
        print("✅ Registro de licença criado")
    else:
        # Atualiza registro existente
        cur.execute("""
            UPDATE tblLicencaLocal 
            SET ClienteID = ?, HardwareID = ?, UltimaDataOk = ?, LicencaValida = 1
            WHERE ClienteID IS NOT NULL
        """, (client_id, hardware_id, data_atual))
        print("✅ Registro de licença atualizado")
    
    conn.commit()
    cur.close()
    return True

def configurar_modulos_vba():
    """Configura os módulos VBA necessários"""
    print("\n📝 Configurando módulos VBA...")
    
    # Lista de módulos necessários
    modulos = [
        'Mod_VerificacaoLicenca.bas',
        'Form_chk_Start_Novo.bas',
        'Form_frm_StatusLicenca.bas'
    ]
    
    for modulo in modulos:
        caminho_modulo = Path('docs/modules') / modulo
        if caminho_modulo.exists():
            print(f"✅ Módulo {modulo} encontrado")
        else:
            print(f"⚠️ Módulo {modulo} não encontrado")
    
    print("📋 Para importar os módulos VBA:")
    print("   1. Abra o Access")
    print("   2. Vá em Ferramentas > Visual Basic")
    print("   3. Clique com botão direito em Módulos")
    print("   4. Selecione 'Importar arquivo'")
    print("   5. Importe os arquivos .bas da pasta docs/modules/")
    
    return True

def configurar_consultas_sql(conn):
    """Configura as consultas SQL necessárias"""
    print("\n🗄️ Configurando consultas SQL...")
    
    # Lista de consultas necessárias
    consultas = [
        'Cs_CriarTblLicencaLocal.sql'
    ]
    
    for consulta in consultas:
        caminho_consulta = Path('docs/queries') / consulta
        if caminho_consulta.exists():
            print(f"✅ Consulta {consulta} encontrada")
        else:
            print(f"⚠️ Consulta {consulta} não encontrada")
    
    print("📋 Para executar as consultas SQL:")
    print("   1. Abra o Access")
    print("   2. Vá em Consultas")
    print("   3. Clique em 'Criar consulta no modo Design'")
    print("   4. Clique em 'SQL'")
    print("   5. Cole o conteúdo dos arquivos .sql da pasta docs/queries/")
    print("   6. Execute as consultas")
    
    return True

def verificar_configuracao(conn):
    """Verifica se a configuração está correta"""
    print("\n🔍 Verificando configuração...")
    
    cur = conn.cursor()
    
    try:
        # Verifica tabela
        cur.execute("SELECT * FROM tblLicencaLocal")
        rows = cur.fetchall()
        
        if rows:
            row = rows[0]
            print(f"✅ Cliente ID: {row[0]}")
            print(f"✅ Hardware ID: {row[1]}")
            print(f"✅ Última verificação: {row[2]}")
            print(f"✅ Data início carência: {row[3]}")
            print(f"✅ Dias carência utilizados: {row[4]}")
            print(f"✅ Licença válida: {row[5]}")
            
            # Verifica se a licença está válida
            if row[5]:
                print("✅ Sistema configurado e funcionando!")
                return True
            else:
                print("⚠️ Licença marcada como inválida")
                return False
        else:
            print("❌ Nenhum registro encontrado na tabela")
            return False
            
    except Exception as e:
        print(f"❌ Erro ao verificar configuração: {e}")
        return False
    
    cur.close()

def main():
    if len(sys.argv) != 3:
        print("Uso: python configurar_sistema.py [caminho_do_backend] [client_id]")
        print("Exemplo: python configurar_sistema.py C:\\FLMSistemas\\Backend\\EleveSystem.mdb CLIENTE001")
        return
    
    caminho_backend = sys.argv[1]
    client_id = sys.argv[2]
    
    if not Path(caminho_backend).exists():
        print(f"❌ Arquivo não encontrado: {caminho_backend}")
        return
    
    print("⚙️ Iniciando configuração do sistema...")
    print("=" * 50)
    
    # Conecta ao backend
    conn = conectar_backend(caminho_backend)
    if not conn:
        return
    
    # Executa configurações
    sucesso = True
    
    if not configurar_tabela_licenca(conn, client_id):
        sucesso = False
    
    if not configurar_modulos_vba():
        sucesso = False
    
    if not configurar_consultas_sql(conn):
        sucesso = False
    
    if not verificar_configuracao(conn):
        sucesso = False
    
    conn.close()
    
    print("\n" + "=" * 50)
    if sucesso:
        print("✅ Configuração concluída com sucesso!")
        print("🎉 Sistema pronto para uso")
        print("\n📋 Próximos passos:")
        print("   1. Importe os módulos VBA no Access")
        print("   2. Execute as consultas SQL necessárias")
        print("   3. Teste o sistema com: python teste_licenca.py")
    else:
        print("❌ Alguns erros ocorreram durante a configuração")
        print("🔧 Verifique os erros acima e tente novamente")

if __name__ == "__main__":
    main() 