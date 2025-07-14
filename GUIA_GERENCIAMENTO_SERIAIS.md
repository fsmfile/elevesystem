# Guia de Gerenciamento de Seriais - Eleve System

## 📍 Onde Ficam Armazenados os Seriais Utilizados

### 1. **No GitHub (Online)**
```
https://github.com/fsmfile/elevesystem/used_serials/
```
- Cada serial usado cria um arquivo: `{SERIAL}.json`
- Exemplo: `CLIENTE001.json`, `LPP002.json`

### 2. **Localmente (Offline)**
```
C:\FLMSistemas\Modernizacao_EleveSystem\used_serials\
```
- Backup local quando não há conexão com GitHub
- Mesma estrutura de arquivos JSON

## 🔧 Como Gerenciar os Seriais

### Script de Gerenciamento
Use o script `gerenciar_seriais.py` para facilitar o controle:

```bash
# Listar todos os seriais utilizados
python gerenciar_seriais.py listar

# Verificar se um serial específico foi usado
python gerenciar_seriais.py verificar CLIENTE001

# Liberar um serial para reuso
python gerenciar_seriais.py liberar CLIENTE001

# Fazer backup dos seriais locais
python gerenciar_seriais.py backup
```

## 🚀 Cenários Comuns

### Cenário 1: Teste com Serial de Cliente
**Situação**: Você fez teste com serial `CLIENTE001` e agora quer liberar para o cliente real.

**Solução**:
```bash
# 1. Verificar se o serial foi usado
python gerenciar_seriais.py verificar CLIENTE001

# 2. Liberar o serial
python gerenciar_seriais.py liberar CLIENTE001

# 3. Confirmar que foi liberado
python gerenciar_seriais.py verificar CLIENTE001
```

### Cenário 2: Cliente Precisa Reinstalar
**Situação**: Cliente perdeu o sistema e precisa reinstalar com o mesmo serial.

**Solução**:
```bash
# 1. Verificar se o serial está bloqueado
python gerenciar_seriais.py verificar CLIENTE001

# 2. Se estiver bloqueado, liberar
python gerenciar_seriais.py liberar CLIENTE001

# 3. Informar ao cliente que pode usar o serial novamente
```

### Cenário 3: Migração de Sistema
**Situação**: Cliente migrou para novo computador e precisa usar o mesmo serial.

**Solução**:
```bash
# 1. Liberar o serial antigo
python gerenciar_seriais.py liberar CLIENTE001

# 2. Cliente instala no novo computador
# 3. Serial será marcado como usado automaticamente
```

## 📊 Estrutura dos Arquivos de Controle

Cada arquivo `{SERIAL}.json` contém:
```json
{
  "serial": "CLIENTE001",
  "data_uso": "2024-01-15T14:30:00.123456",
  "usado_por": "instalador_oficial"
}
```

## 🛡️ Segurança e Boas Práticas

### ✅ Recomendado
- **Sempre verificar** antes de liberar um serial
- **Fazer backup** antes de operações críticas
- **Documentar** quando e por que um serial foi liberado
- **Comunicar** ao cliente quando liberar seu serial

### ❌ Evitar
- Liberar seriais sem verificar se realmente é necessário
- Liberar seriais de clientes ativos sem aviso
- Não documentar as operações de liberação
- Liberar seriais em lote sem verificação individual

## 🔍 Verificação Manual

### No GitHub (Online)
1. Acesse: https://github.com/fsmfile/elevesystem/tree/main/used_serials
2. Procure pelo arquivo `{SERIAL}.json`
3. Se existir = Serial usado
4. Se não existir = Serial disponível

### Localmente
1. Navegue até: `C:\FLMSistemas\Modernizacao_EleveSystem\used_serials\`
2. Procure pelo arquivo `{SERIAL}.json`
3. Se existir = Serial usado localmente

## 📋 Checklist de Liberação

Antes de liberar um serial, verifique:

- [ ] **Identificação**: Qual serial precisa ser liberado?
- [ ] **Motivo**: Por que está sendo liberado?
- [ ] **Cliente**: O cliente está ciente da operação?
- [ ] **Backup**: Backup dos dados foi feito?
- [ ] **Verificação**: Serial realmente está bloqueado?
- [ ] **Documentação**: Operação foi documentada?

## 🚨 Casos Especiais

### Serial Usado em Múltiplos Locais
Se um serial foi usado tanto localmente quanto no GitHub:
```bash
# O script remove automaticamente de ambos os locais
python gerenciar_seriais.py liberar CLIENTE001
```

### Erro de Conexão
Se não conseguir acessar o GitHub:
```bash
# Remove apenas localmente
python gerenciar_seriais.py liberar CLIENTE001
# Tenta novamente quando tiver internet
```

### Serial Não Encontrado
Se o serial não for encontrado:
```bash
# Verifica se realmente existe
python gerenciar_seriais.py verificar CLIENTE001
# Se não existe, já está disponível
```

## 📞 Suporte

Para dúvidas sobre gerenciamento de seriais:
1. Use o script `gerenciar_seriais.py`
2. Consulte este guia
3. Entre em contato com o suporte técnico

---

**Importante**: Sempre documente as operações de liberação de seriais para manter o controle e histórico das operações. 