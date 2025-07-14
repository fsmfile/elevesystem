# Changelog - Instalador Eleve System v2.0

## 📅 Data: 14/07/2025
## 🔄 Versão: 2.0

### ✨ Novas Funcionalidades

#### 🔒 Controle de Serial Único
- **Verificação na Planilha Google**: O instalador agora verifica se o serial já foi utilizado consultando a planilha Google Sheets
- **Bloqueio Automático**: Seriais já utilizados são bloqueados automaticamente
- **Mensagens Informativas**: Feedback claro sobre o status do serial

#### 🎯 Sistema Inteligente de Instalação
- **Detecção de Licença Existente**: Verifica se já existe uma licença válida no sistema
- **Modo Atualização**: Se houver licença válida, oferece opção de atualizar apenas o sistema
- **Instalação Completa**: Se não houver licença, faz instalação completa

#### 🛠️ Modo Desenvolvedor Aprimorado
- **Atalho de Teclado**: `Ctrl + Shift + C` para acessar o modo desenvolvedor
- **Senha de Segurança**: Senha `4865753` para autenticação
- **Criação de Configurações**: Interface para criar novas configurações de cliente
- **Upload Automático**: Salva automaticamente no GitHub

### 🔧 Melhorias Técnicas

#### 📊 Integração com Google Sheets
- **URL da Planilha**: `https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0`
- **Estrutura da Planilha**: ClienteID, DataExpira, Serial_Utilizado
- **Verificação em Tempo Real**: Consulta direta à planilha durante a instalação

#### 🗄️ Melhorias no Banco de Dados
- **Tabela de Licença Aprimorada**: Novos campos para controle de carência e validação
- **Campos Adicionados**:
  - `DataInicioCarencia`: Data de início do período de carência
  - `DiasCarenciaUtilizados`: Quantidade de dias de carência utilizados
  - `LicencaValida`: Status de validação da licença

#### 🎨 Interface do Usuário
- **Design Moderno**: Interface atualizada com ttkbootstrap
- **Feedback Visual**: Indicadores de progresso e status
- **Mensagens Claras**: Informações detalhadas sobre cada etapa

### 🐛 Correções

#### 🔧 Correções de Bugs
- **Verificação de Serial**: Corrigido problema na validação de seriais
- **Criação de Atalhos**: Melhorada a detecção de diretórios de desktop
- **Tratamento de Erros**: Melhor tratamento de erros de conexão

#### 🔒 Segurança
- **Validação de Token**: Verificação mais robusta do token do GitHub
- **Controle de Acesso**: Melhor controle de permissões no modo desenvolvedor

### 📋 Requisitos do Sistema

#### 💻 Sistema Operacional
- **Windows 10** ou superior
- **Microsoft Access** (qualquer versão recente)
- **Conexão com Internet** (para download de configurações)

#### 🔧 Dependências
- **Python 3.13.1** (embutido no executável)
- **Bibliotecas Incluídas**:
  - pyodbc (conexão com banco)
  - ttkbootstrap (interface)
  - requests (requisições HTTP)
  - python-dotenv (variáveis de ambiente)

### 📦 Distribuição

#### 📁 Arquivos Incluídos
- `setup_loja.exe` (20.3 MB) - Instalador principal
- `setup.ico` - Ícone do instalador
- `INSTRUCOES_INSTALADOR.md` - Instruções detalhadas

#### 🎯 Como Usar
1. **Executar como Administrador**: `setup_loja.exe`
2. **Inserir Serial**: Digite o serial fornecido pela FLM Sistemas
3. **Aguardar Instalação**: O sistema fará todo o processo automaticamente
4. **Verificar Atalho**: Novo atalho será criado no desktop

### 🔄 Compatibilidade

#### ✅ Compatível com
- **Versões Anteriores**: Mantém compatibilidade com instalações existentes
- **Configurações Existentes**: Preserva configurações de clientes já instalados
- **Dados do Sistema**: Não afeta dados existentes no banco

#### ⚠️ Observações
- **Primeira Instalação**: Requer serial válido e não utilizado
- **Reinstalação**: Pode ser feita com o mesmo serial
- **Atualização**: Preserva licença existente

### 📞 Suporte

#### 🆘 Em Caso de Problemas
- **Email**: suporte@flmsistemas.com.br
- **WhatsApp**: (11) 99999-9999
- **Horário**: Segunda a Sexta, 8h às 18h

#### 📋 Informações Técnicas
- **Desenvolvido por**: FLM Sistemas
- **Versão Python**: 3.13.1
- **Framework UI**: ttkbootstrap
- **Arquitetura**: Cliente-Servidor com Access

---

**FLM Sistemas - Soluções em Gestão Empresarial**  
*Versão 2.0 - 14/07/2025* 