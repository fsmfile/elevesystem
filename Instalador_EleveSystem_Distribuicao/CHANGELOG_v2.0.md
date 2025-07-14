# Eleve System Instalador - Versão 2.0

## 🚀 Nova Versão com Controle de Serial Único

**Data de Lançamento**: 14 de Janeiro de 2025  
**Arquivo**: `setup_loja.exe`  
**Tamanho**: ~19MB

## 🔒 Principal Novidade: Controle de Serial Único

### O que mudou?
- **Cada serial agora só pode ser usado uma única vez**
- Sistema verifica automaticamente se o serial já foi utilizado
- Bloqueio automático para serials duplicados
- Rastreabilidade completa de uso

### Como funciona?
1. ✅ Usuário digita o serial
2. 🔍 Sistema verifica se já foi usado (GitHub)
3. ❌ Se usado → Bloqueia instalação
4. ✅ Se novo → Permite instalação
5. 🔒 Marca serial como usado automaticamente

## 📱 Interface Atualizada

### Serial Novo (Permitido)
```
🔍 Verificando se o serial já foi utilizado...
✅ Serial válido! Baixando configuração...
[... instalação normal ...]
🔒 Marcando serial como usado...
✅ Instalação concluída com sucesso!
```

### Serial Usado (Bloqueado)
```
❌ Este serial (CLIENTE001) já foi utilizado!

Cada serial pode ser usado apenas uma vez.
Entre em contato com o suporte para obter um novo serial.
```

## 🛡️ Benefícios de Segurança

- ✅ **Controle total**: Impossível reutilizar serials
- ✅ **Prevenção de fraudes**: Sistema robusto de verificação
- ✅ **Rastreabilidade**: Histórico completo de uso
- ✅ **User Experience**: Mensagens claras e informativas
- ✅ **Confiabilidade**: Funciona online e offline

## 📊 Tecnologia Implementada

- **Verificação Online**: Busca no repositório GitHub
- **Fallback Local**: Funciona mesmo sem internet
- **Arquivo de Controle**: JSON com data/hora e origem
- **API GitHub**: Upload automático dos controles

## 🔧 Compatibilidade

- ✅ **Windows 10/11**: Totalmente compatível
- ✅ **Python**: Não necessário (executável independente)
- ✅ **Internet**: Recomendada para verificação online
- ✅ **Offline**: Funciona com verificação local

## 📋 Instruções de Uso

1. **Execute o instalador**: `setup_loja.exe`
2. **Digite o serial**: Fornecido pelo suporte
3. **Aguarde verificação**: Sistema valida automaticamente
4. **Instalação**: Se serial válido, instala normalmente
5. **Conclusão**: Serial marcado como usado automaticamente

## ⚠️ Importante para Distribuidores

- Cada serial agora tem **uso único**
- Não reutilize serials já distribuídos
- Entre em contato com suporte para novos serials
- Sistema mantém histórico completo de uso

## 🆔 Identificação da Versão

- **Versão**: 2.0
- **Build**: 14/01/2025 17:00
- **Funcionalidade**: Controle Serial Único
- **Tamanho**: 19MB (otimizado)

---

**Desenvolvido por**: FLM Sistemas  
**Suporte**: Entre em contato via canais oficiais  
**Status**: ✅ Pronto para distribuição 