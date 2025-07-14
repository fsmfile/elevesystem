#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ATUALIZAÇÃO DE LICENÇAS - Para Sistema Funcionar
===============================================
Calcula datas válidas para os clientes testarem o sistema
"""

from datetime import datetime, timedelta

def calcular_licencas_validas():
    print("🔧 ATUALIZANDO LICENÇAS PARA FUNCIONAMENTO CORRETO")
    print("=" * 60)
    
    # Data atual (informada pelo usuário)
    hoje = datetime(2025, 7, 14)
    print(f"📅 Data atual: {hoje.strftime('%d/%m/%Y')}")
    print("=" * 60)
    
    # Clientes atuais com problema
    clientes = {
        'LPPNEUS': {'atual': '11/07/2025', 'expirado_ha': 3},
        'TESTE': {'atual': '13/06/2025', 'expirado_ha': 31}
    }
    
    print("📋 SITUAÇÃO ATUAL:")
    for cliente, info in clientes.items():
        print(f"   ❌ {cliente}: {info['atual']} (expirado há {info['expirado_ha']} dias)")
    
    print("\n🎯 NOVAS DATAS RECOMENDADAS:")
    print("=" * 60)
    
    # Calcula novas datas válidas
    novas_datas = {}
    
    for cliente in clientes.keys():
        # Data válida por 30 dias
        nova_data = hoje + timedelta(days=30)
        nova_data_str = nova_data.strftime('%d/%m/%Y')
        novas_datas[cliente] = nova_data_str
        
        print(f"   ✅ {cliente}: {nova_data_str} (válida por 30 dias)")
    
    print("\n📝 INSTRUÇÕES PARA ATUALIZAR:")
    print("=" * 60)
    print("1. Acesse: https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/")
    print("2. Faça login com sua conta Google")
    print("3. Atualize as datas conforme abaixo:")
    print("")
    
    for cliente, nova_data in novas_datas.items():
        atual = clientes[cliente]['atual']
        print(f"   📝 {cliente}:")
        print(f"      ANTES: {atual}")
        print(f"      DEPOIS: {nova_data}")
        print("")
    
    print("4. Salve as alterações (Ctrl+S)")
    print("5. Execute o teste de validação")
    
    print("\n🔒 GARANTIA DE SEGURANÇA:")
    print("=" * 60)
    print("✅ Código Mod_VerificacaoLicenca_CorrigidoDefinitivo já implementado")
    print("✅ Sistema verificará corretamente as datas")
    print("✅ Carência só ativará quando realmente sem internet")
    print("✅ Licenças expiradas serão bloqueadas automaticamente")
    
    print("\n📊 RESULTADO ESPERADO:")
    print("=" * 60)
    print("✅ LPPNEUS: Sistema abrirá normalmente")
    print("✅ TESTE: Sistema abrirá normalmente") 
    print("✅ Ambos mostrarão: 'Licença válida (Google Sheets)'")
    print("✅ Quando expirarem, serão bloqueados automaticamente")
    
    print("\n🧪 VALIDAÇÃO:")
    print("=" * 60)
    print("Após atualizar as datas, execute:")
    print("   python verificar_lppneus.py")
    print("")
    print("Deve mostrar:")
    print("   ✅ LICENÇA VÁLIDA - Não expirou ainda")
    
    return novas_datas

def gerar_csv_atualizado():
    """Gera o CSV atualizado para referência"""
    novas_datas = calcular_licencas_validas()
    
    print("\n📄 CONTEÚDO ATUALIZADO DA PLANILHA:")
    print("=" * 60)
    print("ClienteID,DataExpira,Hash")
    for cliente, data in novas_datas.items():
        print(f"{cliente},{data},")
    
    print("\n💾 CSV salvo em: licencas_atualizadas.csv")
    
    # Salva arquivo para referência
    with open('licencas_atualizadas.csv', 'w') as f:
        f.write("ClienteID,DataExpira,Hash\n")
        for cliente, data in novas_datas.items():
            f.write(f"{cliente},{data},\n")

if __name__ == "__main__":
    gerar_csv_atualizado() 