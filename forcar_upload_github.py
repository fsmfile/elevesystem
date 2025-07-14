#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para fazer upload do arquivo AURELIOPNEUS.json para o GitHub
"""

import json
import urllib.request
import base64
from pathlib import Path

# Token fornecido pelo usuário
TOKEN = "[REDACTED]ZECof0HKo0mREzstUwdJp4ytXlIPNa30SWjj"
GITHUB_USER = "fsmfile"
GITHUB_REPO = "elevesystem"
GITHUB_BRANCH = "main"

def fazer_upload_arquivo(filename):
    """Faz upload de um arquivo local para o GitHub"""
    
    # Caminho do arquivo local
    configs_dir = Path(__file__).parent / "configs"
    arquivo_local = configs_dir / filename
    
    if not arquivo_local.exists():
        print(f"❌ Arquivo não encontrado: {arquivo_local}")
        return False
    
    print(f"📁 Arquivo encontrado: {arquivo_local}")
    
    # Ler o conteúdo do arquivo
    try:
        with open(arquivo_local, 'r', encoding='utf-8') as f:
            conteudo = f.read()
        print(f"📄 Conteúdo carregado: {len(conteudo)} caracteres")
    except Exception as e:
        print(f"❌ Erro ao ler arquivo: {e}")
        return False
    
    # URL da API do GitHub
    url = f"https://api.github.com/repos/{GITHUB_USER}/{GITHUB_REPO}/contents/configs/{filename}"
    
    # Preparar payload
    payload = json.dumps({
        "message": f"Upload manual de {filename} via script",
        "content": base64.b64encode(conteudo.encode()).decode(),
        "branch": GITHUB_BRANCH
    })
    
    print(f"🔄 Fazendo upload para: {url}")
    
    try:
        # Criar requisição
        req = urllib.request.Request(url, data=payload.encode(), method="PUT")
        req.add_header("Authorization", f"token {TOKEN}")
        req.add_header("Content-Type", "application/json")
        req.add_header("User-Agent", "EleveSystem-ManualUpload")
        
        # Fazer upload
        with urllib.request.urlopen(req) as resp:
            if resp.status in (200, 201):
                response_data = json.loads(resp.read().decode())
                print(f"✅ Upload realizado com sucesso!")
                print(f"📝 URL do arquivo: {response_data.get('content', {}).get('html_url', 'N/A')}")
                return True
            else:
                print(f"❌ Erro no upload - Status: {resp.status}")
                return False
                
    except urllib.error.HTTPError as e:
        print(f"❌ Erro HTTP: {e.code} - {e.reason}")
        if e.code == 422:
            print("   ℹ️  Arquivo já existe. Tentando atualizar...")
            return atualizar_arquivo_existente(filename, conteudo)
        return False
    except Exception as e:
        print(f"❌ Erro inesperado: {e}")
        return False

def atualizar_arquivo_existente(filename, conteudo):
    """Atualiza um arquivo que já existe no GitHub"""
    
    # Primeiro, obter o SHA do arquivo existente
    url_get = f"https://api.github.com/repos/{GITHUB_USER}/{GITHUB_REPO}/contents/configs/{filename}"
    
    try:
        req_get = urllib.request.Request(url_get)
        req_get.add_header("Authorization", f"token {TOKEN}")
        req_get.add_header("User-Agent", "EleveSystem-GetSHA")
        
        with urllib.request.urlopen(req_get) as resp:
            if resp.status == 200:
                data = json.loads(resp.read().decode())
                sha = data.get('sha')
                print(f"📝 SHA do arquivo existente: {sha}")
            else:
                print(f"❌ Erro ao obter SHA: {resp.status}")
                return False
                
    except Exception as e:
        print(f"❌ Erro ao obter SHA: {e}")
        return False
    
    # Agora atualizar o arquivo
    payload = json.dumps({
        "message": f"Atualização de {filename} via script",
        "content": base64.b64encode(conteudo.encode()).decode(),
        "sha": sha,
        "branch": GITHUB_BRANCH
    })
    
    try:
        req_put = urllib.request.Request(url_get, data=payload.encode(), method="PUT")
        req_put.add_header("Authorization", f"token {TOKEN}")
        req_put.add_header("Content-Type", "application/json")
        req_put.add_header("User-Agent", "EleveSystem-Update")
        
        with urllib.request.urlopen(req_put) as resp:
            if resp.status == 200:
                print(f"✅ Arquivo atualizado com sucesso!")
                return True
            else:
                print(f"❌ Erro na atualização - Status: {resp.status}")
                return False
                
    except Exception as e:
        print(f"❌ Erro na atualização: {e}")
        return False

def listar_arquivos_locais():
    """Lista arquivos JSON na pasta configs local"""
    configs_dir = Path(__file__).parent / "configs"
    
    if not configs_dir.exists():
        print("❌ Pasta configs não encontrada")
        return []
    
    arquivos = list(configs_dir.glob("*.json"))
    print(f"📁 Arquivos encontrados na pasta configs:")
    
    for i, arquivo in enumerate(arquivos, 1):
        print(f"   {i}. {arquivo.name}")
    
    return arquivos

def main():
    print("="*60)
    print("🚀 UPLOAD MANUAL PARA GITHUB")
    print("="*60)
    
    # Verificar se AURELIOPNEUS.json existe
    filename = "AURELIOPNEUS.json"
    configs_dir = Path(__file__).parent / "configs"
    arquivo_especifico = configs_dir / filename
    
    if arquivo_especifico.exists():
        print(f"🎯 Arquivo {filename} encontrado!")
        print("Fazendo upload...")
        
        if fazer_upload_arquivo(filename):
            print(f"\n🎉 Sucesso! O arquivo {filename} foi enviado para o GitHub!")
            print(f"🔗 Agora está disponível em:")
            print(f"   https://raw.githubusercontent.com/{GITHUB_USER}/{GITHUB_REPO}/{GITHUB_BRANCH}/configs/{filename}")
        else:
            print(f"\n❌ Falha no upload de {filename}")
    else:
        print(f"❌ Arquivo {filename} não encontrado na pasta configs local")
        print("\n📁 Listando arquivos disponíveis:")
        arquivos = listar_arquivos_locais()
        
        if arquivos:
            print(f"\n🤔 Deseja fazer upload de algum destes arquivos?")
            print("Digite o número do arquivo ou 0 para sair:")
            
            try:
                escolha = int(input("Escolha: "))
                if 1 <= escolha <= len(arquivos):
                    arquivo_escolhido = arquivos[escolha - 1]
                    print(f"\n🔄 Fazendo upload de {arquivo_escolhido.name}...")
                    
                    if fazer_upload_arquivo(arquivo_escolhido.name):
                        print(f"\n🎉 Upload de {arquivo_escolhido.name} concluído!")
                    else:
                        print(f"\n❌ Falha no upload de {arquivo_escolhido.name}")
                elif escolha == 0:
                    print("👋 Saindo...")
                else:
                    print("❌ Escolha inválida")
            except ValueError:
                print("❌ Digite um número válido")
            except KeyboardInterrupt:
                print("\n👋 Operação cancelada")

if __name__ == "__main__":
    main() 