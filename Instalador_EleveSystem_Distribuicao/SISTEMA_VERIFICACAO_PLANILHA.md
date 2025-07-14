# 🚀 Sistema de Verificação via Google Sheets

## 📋 Visão Geral

O sistema foi **completamente reformulado** para usar Google Sheets ao invés do GitHub para controle de seriais. Esta abordagem é **muito mais simples, prática e eficiente**.

### ✅ **Vantagens da Nova Abordagem:**
- **Simplicidade total** - sem complexidade do GitHub
- **Controle visual** - planilha fácil de gerenciar
- **Sem gerenciador necessário** - controle direto na planilha
- **Mudanças instantâneas** - atualização em tempo real
- **Liberação fácil** - apenas mude "Sim" para "Não"

## 🔧 Como Funciona

### 1. **Estrutura da Planilha**
```
| ClienteID | DataExpira  | Serial_Utilizado |
|-----------|-------------|------------------|
| LPPNEUS   | 10/08/2025  | Sim              |
| TESTE     | 13/06/2025  | Não              |
```

### 2. **Verificação no Instalador**
1. Cliente digita o serial (ex: `LPPNEUS`)
2. Instalador acessa a planilha automaticamente
3. Busca pela linha do serial
4. Verifica coluna `Serial_Utilizado`:
   - **"Sim"** = ❌ Instalação bloqueada
   - **"Não"** = ✅ Instalação permitida

### 3. **Controle de Uso**
- **Para bloquear**: Mude de "Não" para "Sim"
- **Para liberar**: Mude de "Sim" para "Não"
- **Efeito**: Instantâneo - próxima verificação já usa novo valor

## 🌐 Planilha de Controle

### **Link de Acesso:**
https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/

### **Configuração:**
- **URL de Exportação:** https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0
- **Formato:** CSV automaticamente lido pelo instalador
- **Acesso:** Público para leitura (necessário para funcionamento)

## 📊 Operações

### ✅ **Liberar Serial (Permitir Reuso)**
1. Acesse a planilha
2. Encontre a linha do serial
3. Na coluna `Serial_Utilizado`, mude de **"Sim"** para **"Não"**
4. Salve (Ctrl+S)
5. ✅ **Pronto!** Serial liberado instantaneamente

### ❌ **Bloquear Serial (Marcar como Usado)**
1. Acesse a planilha
2. Encontre a linha do serial
3. Na coluna `Serial_Utilizado`, mude de **"Não"** para **"Sim"**
4. Salve (Ctrl+S)
5. ✅ **Pronto!** Serial bloqueado instantaneamente

### 📝 **Adicionar Novo Serial**
1. Acesse a planilha
2. Adicione nova linha com:
   - **ClienteID:** Nome do serial
   - **DataExpira:** Data de expiração (opcional)
   - **Serial_Utilizado:** "Não" (disponível) ou "Sim" (usado)
3. Salve (Ctrl+S)

## 🧪 Scripts de Teste

### **Testar Verificação:**
```bash
python teste_instalacao_planilha.py
```

### **Verificar Serial Específico:**
```bash
python marcar_serial_planilha.py LPPNEUS
```

## 📋 Exemplos Práticos

### **Cenário 1: Cliente Quer Reinstalar**
**Situação:** Cliente `LPPNEUS` precisa reinstalar o sistema
**Solução:**
1. Acesse a planilha
2. Mude `LPPNEUS` de "Sim" para "Não"
3. Cliente pode reinstalar imediatamente
4. Após instalação, mude de volta para "Sim" se necessário

### **Cenário 2: Novo Cliente**
**Situação:** Novo cliente `CLIENTE001`
**Solução:**
1. Adicione linha na planilha:
   ```
   | CLIENTE001 | 31/12/2025 | Não |
   ```
2. Crie arquivo de configuração `configs/CLIENTE001.json`
3. Cliente já pode instalar

### **Cenário 3: Bloqueio de Emergência**
**Situação:** Precisa bloquear cliente `TESTE` imediatamente
**Solução:**
1. Acesse a planilha
2. Mude `TESTE` de "Não" para "Sim"
3. Próxima tentativa de instalação será bloqueada

## ⚡ Comparação: Antes vs Agora

### ❌ **Sistema Anterior (GitHub)**
- Criação/remoção de arquivos JSON
- Problema de cache/propagação
- Pasta sumindo inexplicavelmente
- Gerenciador complexo necessário
- Liberação complicada

### ✅ **Sistema Atual (Planilha)**
- Apenas mudar "Sim"/"Não" na planilha
- Mudanças instantâneas
- Visual e intuitivo
- Sem ferramentas extras
- Liberação com 1 clique

## 🔧 Configuração Técnica

### **No Instalador (`setup_loja.py`):**
```python
GOOGLE_SHEETS_URL = "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0"

def verificar_serial_usado(serial):
    # Acessa planilha e verifica coluna Serial_Utilizado
    # Retorna True se "Sim", False se "Não"
```

### **Fluxo de Verificação:**
```
1. Instalador acessa URL da planilha
2. Baixa conteúdo CSV
3. Procura linha do serial
4. Verifica valor da coluna Serial_Utilizado
5. Permite/bloqueia instalação
```

## 🎯 Vantagens Principais

### 🚀 **Simplicidade**
- **Sem GitHub:** Elimina toda complexidade de API
- **Visual:** Planilha é intuitiva para qualquer pessoa
- **Instantâneo:** Mudanças têm efeito imediato

### 🔧 **Controle Total**
- **Fácil de gerenciar:** Qualquer pessoa pode usar
- **Backup automático:** Google mantém histórico
- **Acesso compartilhado:** Múltiplas pessoas podem gerenciar

### ⚡ **Eficiência**
- **Sem instalação:** Funciona em qualquer navegador
- **Sem sync:** Não há problemas de sincronização
- **Sem cache:** Sempre dados atualizados

## 🎉 Conclusão

O novo sistema via Google Sheets é **infinitamente mais simples e eficaz**:

- ✅ **Para liberar:** Mude "Sim" para "Não" na planilha
- ✅ **Para bloquear:** Mude "Não" para "Sim" na planilha  
- ✅ **Para adicionar:** Nova linha na planilha
- ✅ **Efeito:** Instantâneo e confiável

**Acabaram os problemas de:**
- ❌ Pasta sumindo do GitHub
- ❌ Gerenciadores complexos
- ❌ Cache e propagação
- ❌ Tokens e APIs

**Agora é:** Abrir planilha → Mudar valor → Salvar → **Pronto!** 🎉 