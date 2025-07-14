#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DIAGNÓSTICO COMPLETO - Sistema de Licenças
==========================================
Analisa todos os clientes e identifica problemas de segurança
"""

import requests
from datetime import datetime, timedelta

def diagnostico_completo():
    print("🔍 DIAGNÓSTICO COMPLETO DO SISTEMA DE LICENÇAS")
    print("=" * 60)
    
    # Data atual (informada pelo usuário)
    hoje = datetime(2025, 7, 14)
    print(f"📅 Data de referência: {hoje.strftime('%d/%m/%Y')}")
    print("=" * 60)
    
    # URL da planilha
    url = 'https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0'
    
    # Headers corretos
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
    }
    
    try:
        # Busca dados da planilha
        response = requests.get(url, headers=headers, timeout=10)
        
        if response.status_code != 200:
            print(f"❌ Erro ao acessar planilha: Status {response.status_code}")
            return
        
        # Processa CSV
        linhas = response.text.strip().split('\n')
        
        if len(linhas) < 2:
            print("❌ Planilha vazia ou sem dados")
            return
        
        print(f"📋 CONTEÚDO DA PLANILHA:")
        print(response.text)
        print("\n" + "=" * 60)
        
        # Analisa cada cliente
        clientes_problema = []
        clientes_validos = []
        clientes_sem_data = []
        
        for i, linha in enumerate(linhas[1:], 1):  # Pula cabeçalho
            if linha.strip():
                campos = linha.split(',')
                
                if len(campos) >= 2:
                    cliente = campos[0].strip()
                    data_expira = campos[1].strip()
                    
                    print(f"\n📊 CLIENTE {i}: {cliente}")
                    print(f"   Data na planilha: '{data_expira}'")
                    
                    # Verifica status
                    if not data_expira or data_expira == '':
                        print("   ✅ LICENÇA INDEFINIDA (sem data de expiração)")
                        clientes_sem_data.append(cliente)
                    else:
                        try:
                            data_exp = datetime.strptime(data_expira, '%d/%m/%Y')
                            
                            if data_exp.date() >= hoje.date():
                                dias_restantes = (data_exp.date() - hoje.date()).days
                                print(f"   ✅ LICENÇA VÁLIDA (expira em {dias_restantes} dias)")
                                clientes_validos.append((cliente, dias_restantes))
                            else:
                                dias_vencida = (hoje.date() - data_exp.date()).days
                                print(f"   ❌ LICENÇA EXPIRADA há {dias_vencida} dias")
                                print(f"   🚨 PROBLEMA DE SEGURANÇA DETECTADO!")
                                clientes_problema.append((cliente, dias_vencida))
                                
                        except ValueError:
                            print(f"   ⚠️  Formato de data inválido: {data_expira}")
        
        # Resumo executivo
        print("\n" + "=" * 60)
        print("📊 RESUMO EXECUTIVO")
        print("=" * 60)
        
        print(f"\n✅ CLIENTES COM LICENÇA VÁLIDA: {len(clientes_validos)}")
        for cliente, dias in clientes_validos:
            print(f"   • {cliente} (expira em {dias} dias)")
        
        print(f"\n📄 CLIENTES COM LICENÇA INDEFINIDA: {len(clientes_sem_data)}")
        for cliente in clientes_sem_data:
            print(f"   • {cliente}")
        
        print(f"\n🚨 CLIENTES COM PROBLEMA DE SEGURANÇA: {len(clientes_problema)}")
        for cliente, dias in clientes_problema:
            print(f"   • {cliente} (expirado há {dias} dias)")
        
        # Alertas
        if clientes_problema:
            print("\n" + "⚠️" * 20)
            print("🚨 ALERTA CRÍTICO DE SEGURANÇA!")
            print("⚠️" * 20)
            print(f"\n{len(clientes_problema)} cliente(s) com licenças expiradas ainda podem estar")
            print("acessando o sistema devido à falha na lógica de carência!")
            print("\nPROBLEMA: Sistema ativa carência automaticamente quando")
            print("não consegue verificar online, permitindo acesso indevido.")
            print("\n🎯 AÇÃO NECESSÁRIA:")
            print("1. Implementar correção urgente")
            print("2. Auditar logs de acesso destes clientes")
            print("3. Contactar clientes para renovação")
        
        # Próximas expirações
        proximas_expirações = []
        for cliente, dias in clientes_validos:
            if dias <= 30:  # Próximos 30 dias
                proximas_expirações.append((cliente, dias))
        
        if proximas_expirações:
            print(f"\n📋 LICENÇAS EXPIRANDO NOS PRÓXIMOS 30 DIAS: {len(proximas_expirações)}")
            for cliente, dias in sorted(proximas_expirações, key=lambda x: x[1]):
                if dias <= 7:
                    emoji = "🔴"
                elif dias <= 15:
                    emoji = "🟡"
                else:
                    emoji = "🟢"
                print(f"   {emoji} {cliente} (em {dias} dias)")
        
        print("\n" + "=" * 60)
        print("💡 RECOMENDAÇÕES IMEDIATAS")
        print("=" * 60)
        
        if clientes_problema:
            print("\n🚨 URGENTE - Problemas de Segurança:")
            print("1. Implementar Mod_VerificacaoLicenca_CorrigidoDefinitivo.bas")
            print("2. Ou aplicar patch emergencial no código atual")
            print("3. Auditar acesso dos clientes expirados")
            
        if proximas_expirações:
            print("\n📞 COMERCIAL - Renovações Pendentes:")
            print("1. Contactar clientes com expiração próxima")
            print("2. Enviar lembretes automáticos")
            print("3. Oferecer renovação antecipada")
        
        print(f"\n✅ SISTEMA - Melhorias:")
        print("1. Implementar alertas automáticos de expiração")
        print("2. Log detalhado de verificações de licença")
        print("3. Dashboard de monitoramento em tempo real")
        print("4. Backup automático da planilha de licenças")
        
    except Exception as e:
        print(f"❌ Erro no diagnóstico: {e}")

if __name__ == "__main__":
    diagnostico_completo() 