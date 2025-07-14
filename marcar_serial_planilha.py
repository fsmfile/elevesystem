#!/usr/bin/env python3
"""
Script para Marcar Serial como Usado na Planilha
================================================

Este script atualiza a planilha Google Sheets marcando um serial como usado.

Uso:
    python marcar_serial_planilha.py SERIAL

Exemplo:
    python marcar_serial_planilha.py LPPNEUS
"""

import sys
import urllib.request
import urllib.error

# URL da planilha
GOOGLE_SHEETS_URL = "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0"

def verificar_serial_na_planilha(serial):
    """Verifica o status atual do serial na planilha"""
    serial = serial.strip().upper()
    
    try:
        print(f"🔍 Verificando serial {serial} na planilha...")
        
        with urllib.request.urlopen(GOOGLE_SHEETS_URL) as resp:
            if resp.status != 200:
                raise Exception(f"Erro ao acessar planilha: HTTP {resp.status}")
            
            conteudo = resp.read().decode('utf-8')
            linhas = conteudo.strip().split('\n')
            
            for i, linha in enumerate(linhas):
                if i == 0:  # Pula cabeçalho
                    continue
                    
                colunas = linha.split(',')
                if len(colunas) >= 3:
                    cliente_id = colunas[0].strip().strip('"').upper()
                    data_expira = colunas[1].strip().strip('"')
                    serial_utilizado = colunas[2].strip().strip('"').upper()
                    
                    if cliente_id == serial:
                        print(f"✅ Serial encontrado:")
                        print(f"   Cliente: {cliente_id}")
                        print(f"   Data Expiração: {data_expira}")
                        print(f"   Status: {serial_utilizado}")
                        
                        return serial_utilizado == "SIM"
            
            print(f"❌ Serial {serial} não encontrado na planilha!")
            return None
            
    except Exception as e:
        print(f"❌ Erro ao verificar planilha: {e}")
        return None

def mostrar_instrucoes_manuais(serial):
    """Mostra instruções para marcação manual"""
    print("\n" + "="*60)
    print("📋 INSTRUÇÕES PARA MARCAR SERIAL COMO USADO")
    print("="*60)
    print()
    print("Como a Google Sheets API requer autenticação OAuth2 complexa,")
    print("a marcação deve ser feita manualmente. Siga os passos:")
    print()
    print("1. 🌐 Acesse a planilha:")
    print("   https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/")
    print()
    print(f"2. 🔍 Encontre a linha do cliente: {serial}")
    print()
    print("3. 📝 Na coluna 'Serial_Utilizado':")
    print("   - Mude de 'Não' para 'Sim'")
    print()
    print("4. 💾 Salve a planilha (Ctrl+S)")
    print()
    print("5. ✅ Pronto! O serial estará marcado como usado")
    print()
    print("="*60)
    print("💡 DICA: Mantenha a aba da planilha aberta para marcações futuras")
    print("="*60)

def marcar_serial_automatico(serial):
    """
    FUNÇÃO PLACEHOLDER para futura implementação com OAuth2
    
    Para implementar marcação automática, seria necessário:
    1. Configurar OAuth2 com Google Sheets API
    2. Obter credenciais de service account
    3. Usar biblioteca gspread com autenticação
    
    Exemplo de implementação futura:
    
    import gspread
    from google.oauth2.service_account import Credentials
    
    scope = ['https://spreadsheets.google.com/feeds',
             'https://www.googleapis.com/auth/drive']
    
    creds = Credentials.from_service_account_file('service_account.json', scopes=scope)
    client = gspread.authorize(creds)
    
    sheet = client.open_by_key('1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI').sheet1
    
    # Encontrar linha do serial e atualizar
    cell = sheet.find(serial)
    if cell:
        sheet.update_cell(cell.row, 3, 'Sim')  # Coluna 3 = Serial_Utilizado
    """
    print("🔧 Marcação automática não implementada ainda.")
    print("   Requer configuração OAuth2 com Google Sheets API.")
    print("   Use a marcação manual por enquanto.")

def main():
    if len(sys.argv) != 2:
        print("❌ Uso: python marcar_serial_planilha.py SERIAL")
        print("   Exemplo: python marcar_serial_planilha.py LPPNEUS")
        return
    
    serial = sys.argv[1]
    
    print("🚀 MARCADOR DE SERIAL - PLANILHA GOOGLE SHEETS")
    print("="*60)
    
    # Verifica status atual
    status = verificar_serial_na_planilha(serial)
    
    if status is None:
        print(f"\n❌ Serial {serial} não encontrado na planilha!")
        print("   Verifique se o serial está cadastrado.")
        return
    elif status:
        print(f"\n⚠️ Serial {serial} já está marcado como USADO!")
        resposta = input("Deseja ver as instruções mesmo assim? (s/N): ")
        if resposta.lower() != 's':
            return
    else:
        print(f"\n✅ Serial {serial} está disponível para marcação.")
    
    # Tenta marcação automática (placeholder)
    print(f"\n🔄 Tentando marcar {serial} automaticamente...")
    marcar_serial_automatico(serial)
    
    # Mostra instruções manuais
    mostrar_instrucoes_manuais(serial)

if __name__ == "__main__":
    main() 