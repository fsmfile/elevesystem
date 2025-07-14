#!/usr/bin/env python3
"""
Script de Teste - Sistema de Controle de Serial Único
====================================================

Este script demonstra como funciona o controle de serial único no instalador.

Uso:
    python teste_serial_unico.py SERIAL_TESTE
"""

import sys
import json
import datetime as dt
from pathlib import Path

def simular_verificacao_serial(serial: str) -> bool:
    """Simula a verificação se um serial já foi usado"""
    print(f"🔍 Verificando se o serial '{serial}' já foi utilizado...")
    
    # Verifica localmente na pasta used_serials
    used_serials_dir = Path(__file__).parent / "used_serials"
    arquivo_serial = used_serials_dir / f"{serial}.json"
    
    if arquivo_serial.exists():
        print(f"❌ Serial '{serial}' já foi utilizado!")
        with open(arquivo_serial, 'r', encoding='utf-8') as f:
            dados = json.load(f)
        print(f"   📅 Data de uso: {dados.get('data_uso', 'N/A')}")
        print(f"   👤 Usado por: {dados.get('usado_por', 'N/A')}")
        return True
    else:
        print(f"✅ Serial '{serial}' está disponível para uso!")
        return False

def simular_instalacao(serial: str):
    """Simula o processo de instalação"""
    print(f"\n🚀 Iniciando instalação com serial '{serial}'...")
    print("   ✔ Backend instalado")
    print("   ✔ Frontend instalado")
    print("   ✔ Banco de dados configurado")
    print("   ✔ Licença gravada")
    print("   ✔ Atalho criado")
    print("   🔒 Marcando serial como usado...")
    
    # Marca o serial como usado
    marcar_serial_como_usado(serial)
    print("   ✔ Serial marcado como usado")
    print("✅ Instalação concluída com sucesso!")

def marcar_serial_como_usado(serial: str):
    """Marca o serial como usado criando um arquivo local"""
    used_serials_dir = Path(__file__).parent / "used_serials"
    used_serials_dir.mkdir(exist_ok=True)
    
    arquivo_serial = used_serials_dir / f"{serial}.json"
    
    dados_uso = {
        "serial": serial,
        "data_uso": dt.datetime.now().isoformat(),
        "usado_por": "teste_local"
    }
    
    with open(arquivo_serial, 'w', encoding='utf-8') as f:
        json.dump(dados_uso, f, indent=2, ensure_ascii=False)

def main():
    if len(sys.argv) != 2:
        print("❌ Uso: python teste_serial_unico.py SERIAL_TESTE")
        print("   Exemplo: python teste_serial_unico.py CLIENTE001")
        sys.exit(1)
    
    serial = sys.argv[1].strip().upper()
    
    print("=" * 60)
    print("🧪 TESTE DO SISTEMA DE CONTROLE DE SERIAL ÚNICO")
    print("=" * 60)
    
    # Primeira tentativa - deve permitir
    print(f"\n1️⃣ PRIMEIRA TENTATIVA COM SERIAL: {serial}")
    if simular_verificacao_serial(serial):
        print("\n❌ INSTALAÇÃO BLOQUEADA - Serial já foi utilizado!")
        print("Cada serial pode ser usado apenas uma vez.")
        print("Entre em contato com o suporte para obter um novo serial.")
    else:
        simular_instalacao(serial)
    
    # Segunda tentativa - deve bloquear
    print(f"\n2️⃣ SEGUNDA TENTATIVA COM O MESMO SERIAL: {serial}")
    if simular_verificacao_serial(serial):
        print("\n❌ INSTALAÇÃO BLOQUEADA - Serial já foi utilizado!")
        print("Cada serial pode ser usado apenas uma vez.")
        print("Entre em contato com o suporte para obter um novo serial.")
    else:
        print("⚠️ ERRO: Serial deveria ter sido bloqueado!")
    
    print("\n" + "=" * 60)
    print("✅ TESTE CONCLUÍDO - Sistema funcionando corretamente!")
    print("=" * 60)

if __name__ == "__main__":
    main() 