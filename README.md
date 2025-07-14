# Eleve System - Sistema de Gestão Empresarial

## 📋 Visão Geral

O **Eleve System** é um sistema de gestão empresarial completo desenvolvido em Microsoft Access com arquitetura cliente-servidor. O sistema oferece funcionalidades abrangentes para controle de vendas, estoque, financeiro, ordens de serviço, clientes, funcionários e muito mais.

## 🏗️ Arquitetura do Sistema

### Estrutura Cliente-Servidor
- **Frontend**: Aplicação Access (.accdr) - Interface do usuário
- **Backend**: Banco de dados Access (.accdb) - Armazenamento de dados
- **Launcher**: Script Python - Gerenciador de inicialização

### Componentes Principais

```
Modernizacao_EleveSystem/
├── FrontEnd/                    # Interface do usuário
│   └── FLMSistemas_automacao.accdr
├── Access/                      # Backend do sistema
│   └── FLMSistemas_be.accdb
├── configs/                     # Configurações por cliente
│   ├── LPP001.json
│   ├── LPP002.json
│   └── ...
├── docs/                        # Documentação técnica
│   ├── modules/                 # Módulos VBA
│   ├── forms/                   # Formulários
│   ├── queries/                 # Consultas SQL
│   ├── reports/                 # Relatórios
│   └── tables.csv              # Estrutura de tabelas
├── launcher.py                  # Inicializador Python
├── setup_loja.py               # Instalador do sistema
└── requeriments.txt            # Dependências Python
```

## 🚀 Funcionalidades Principais

### 1. Gestão de Vendas
- Controle de vendas no balcão
- Múltiplas formas de pagamento
- Gestão de comissões
- Controle de promoções
- Vendas com parcelamento

### 2. Controle de Estoque
- Movimentação de estoque
- Controle de produtos/serviços
- Gestão de fornecedores
- Inventário
- Controle de lotes e séries

### 3. Gestão Financeira
- Contas a pagar e receber
- Lançamentos de caixa
- Fluxo de caixa
- Controle de cheques
- Plano de contas

### 4. Ordens de Serviço
- Criação e acompanhamento de OS
- Controle de status
- Gestão de comissionistas
- Agendamento de serviços
- Laudos técnicos

### 5. Gestão de Clientes
- Cadastro completo de clientes
- Controle de crédito/débito
- Histórico de compras
- Grupos de clientes
- Controle de planos mensais

### 6. Recursos Humanos
- Cadastro de funcionários
- Controle de ponto
- Gestão de salários
- Controle de vales
- Metas e comissões

### 7. Relatórios e Dashboards
- Relatórios de vendas
- Controle de caixa
- Análise de estoque
- Relatórios financeiros
- Dashboards gerenciais

## 🛠️ Tecnologias Utilizadas

### Backend
- **Microsoft Access**: Banco de dados e aplicação
- **VBA**: Programação de módulos e formulários
- **SQL**: Consultas e procedimentos

### Frontend
- **Microsoft Access Runtime**: Interface do usuário
- **Python**: Scripts de automação e instalação

### Dependências Python
```
pyodbc          # Conexão com banco de dados
wmi             # Informações do sistema
gspread         # Integração Google Sheets
google-auth     # Autenticação Google
win32com        # Automação Windows
requests        # Requisições HTTP
ttkbootstrap    # Interface gráfica
```

## 🔧 Configurações do Sistema

### 1. Configuração do Google Sheets

O sistema utiliza Google Sheets para controle de licenças. A planilha está configurada em:
- **URL**: `https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/`
- **Formato de Exportação**: CSV via URL de exportação
- **Estrutura**: Coluna A = Cliente ID, Coluna B = Data de Expiração

#### Configuração da Planilha Google Sheets

1. **Acesse a planilha**: https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/edit

2. **Estrutura da Planilha**:
   ```
   | Cliente ID | Data Expiração | Status | Observações |
   |------------|----------------|--------|-------------|
   | LPP001     | 31/12/2025    | Ativo  | Cliente Premium |
   | LPP002     | 15/06/2025    | Ativo  | Cliente Standard |
   | TESTE      |               | Ativo  | Sem expiração |
   ```

3. **Configuração de Permissões**:
   - A planilha deve estar pública para leitura
   - Ou configurar autenticação via service account

4. **URL de Exportação CSV**:
   ```
   https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0
   ```

#### Autenticação Google Sheets (Opcional)

Para acesso mais seguro, configure autenticação:

1. **Criar Service Account**:
   ```bash
   # Acesse Google Cloud Console
   # Crie um projeto e habilite Google Sheets API
   # Crie uma service account
   # Baixe o arquivo JSON de credenciais
   ```

2. **Configurar Credenciais**:
   ```python
   import gspread
   from google.oauth2.service_account import Credentials
   
   scope = ['https://spreadsheets.google.com/feeds',
            'https://www.googleapis.com/auth/drive']
   
   creds = Credentials.from_service_account_file(
       'service_account.json', scopes=scope)
   
   client = gspread.authorize(creds)
   ```

### 2. Configuração do GitHub

O sistema utiliza GitHub para armazenar configurações de clientes e arquivos do sistema.

#### Configuração do Token GitHub

1. **Gerar Token**:
   - Acesse: https://github.com/settings/tokens
   - Clique em "Generate new token (classic)"
   - Selecione permissões "repo"
   - Copie o token gerado

2. **Configurar Token**:
   ```bash
   # Execute o configurador
   python configurar_github_token.py
   ```

3. **Ou configurar manualmente**:
   ```bash
   # Windows (PowerShell)
   setx GITHUB_TOKEN "seu_token_aqui"
   
   # Linux/Mac
   export GITHUB_TOKEN="seu_token_aqui"
   ```

#### Estrutura do Repositório GitHub

```
elevesystem/
├── configs/                     # Configurações por cliente
│   ├── LPP001.json
│   ├── LPP002.json
│   └── ...
├── FrontEnd/                    # Frontend do sistema
│   └── FLMSistemas_automacao.accdr
├── Access/                      # Backend do sistema
│   └── FLMSistemas_be.accdb
└── docs/                        # Documentação
```

#### URLs de Acesso

- **Configurações**: `https://raw.githubusercontent.com/fsmfile/elevesystem/main/configs/`
- **Frontend**: `https://github.com/fsmfile/elevesystem/raw/main/FrontEnd/FLMSistemas_automacao.accdr`
- **Backend**: Configurável por cliente

### 3. Manual do setup_loja.py

O `setup_loja.py` é o instalador principal do sistema que automatiza todo o processo de instalação.

#### Funcionalidades Principais

1. **Download de Configurações**: Baixa configurações do GitHub baseado no serial do cliente
2. **Instalação de Dependências**: Instala Microsoft Access Runtime se necessário
3. **Download de Arquivos**: Baixa frontend e backend do sistema
4. **Configuração de Banco**: Configura conexões e tabelas de licença
5. **Criação de Atalhos**: Cria atalho no desktop
6. **Modo Desenvolvedor**: Permite criar novas configurações

#### Como Usar

1. **Instalação Normal**:
   ```bash
   python setup_loja.py
   ```
   - Digite o serial do cliente (ex: LPP001)
   - O sistema baixa configurações automaticamente
   - Instala e configura tudo automaticamente

2. **Modo Desenvolvedor**:
   - Pressione `Ctrl+Shift+C` durante a execução
   - Digite a senha: `4865753`
   - Crie novas configurações de cliente
   - Salva automaticamente no GitHub

#### Estrutura de Configuração JSON

```json
{
  "CLIENT_ID": "LPP001",
  "INSTALL_DIR": "C:\\FLMSistemas",
  "BACKEND_NAME": "FLMSistemas_be.accdb",
  "FRONTEND_NAME": "FLMSistemas_automacao.accdr",
  "BACKEND_URL": "https://github.com/fsmfile/elevesystem/raw/main/Access/FLMSistemas_be.accdb",
  "FRONTEND_URL": "https://github.com/fsmfile/elevesystem/raw/main/FrontEnd/FLMSistemas_automacao.accdr",
  "DB_PASSWORD": "Ca486575@",
  "CARÊNCIA_DIAS": "10",
  "SHORTCUT_NAME": "Eleve System.lnk",
  "DATA_EXPIRACAO": "31/12/2025"
}
```

#### Processo de Instalação Detalhado

1. **Verificação de Pré-requisitos**:
   - Python 3.7+
   - Conexão com internet
   - Permissões de administrador

2. **Download de Configurações**:
   - Conecta ao GitHub
   - Baixa arquivo JSON do cliente
   - Valida configurações

3. **Instalação de Dependências**:
   - Verifica Microsoft Access Runtime
   - Instala se necessário
   - Configura trusted locations

4. **Download de Arquivos**:
   - Baixa frontend (.accdr)
   - Baixa backend (.accdb)
   - Verifica integridade dos arquivos

5. **Configuração do Banco**:
   - Conecta ao backend
   - Cria tabela de licença
   - Configura dados do cliente
   - Define hardware ID

6. **Finalização**:
   - Cria atalho no desktop
   - Configura ícone
   - Exibe mensagem de sucesso

#### Modo Desenvolvedor

O modo desenvolvedor permite criar novas configurações de cliente:

1. **Ativação**: `Ctrl+Shift+C` + senha `4865753`
2. **Formulário de Configuração**:
   - Serial do cliente
   - Diretório de instalação
   - URLs dos arquivos
   - Senha do banco
   - Período de carência

3. **Salvamento**:
   - Salva localmente em `configs/`
   - Se token GitHub configurado, salva no repositório
   - Cria arquivo JSON pronto para uso

#### Tratamento de Erros

- **Sem Internet**: Exibe erro e instruções
- **Serial Inválido**: Lista seriais disponíveis
- **Erro de Download**: Tenta novamente
- **Permissões**: Solicita execução como administrador
- **Banco Corrompido**: Oferece backup e restauração

### 4. Configuração do Backend

O backend é um banco de dados Access que contém todas as tabelas e dados do sistema.

#### Estrutura do Backend

```
FLMSistemas_be.accdb/
├── Tabelas/
│   ├── Cadastros Básicos
│   │   ├── tbl_cad_clientes
│   │   ├── tbl_cad_prodserv
│   │   ├── tbl_cad_fornecedor
│   │   └── tbl_cad_funcionarios
│   ├── Operacionais
│   │   ├── tbl_rot_vendas
│   │   ├── tbl_rot_MovEstoque
│   │   └── tbl_rot_OrdemServico
│   ├── Financeiro
│   │   ├── tbl_rot_contasareceber
│   │   ├── tbl_rot_contaApagar
│   │   └── tbl_caixa
│   └── Sistema
│       ├── tbl_ConfigBasica
│       ├── tbl_cad_UsuarioSistema
│       └── tblLicencaLocal
├── Consultas/
├── Formulários/
├── Relatórios/
└── Módulos VBA/
```

#### Configuração Inicial

1. **Criar Tabela de Licença**:
   ```sql
   -- Execute no Access
   CREATE TABLE tblLicencaLocal (
       ClienteID TEXT(100),
       HardwareID TEXT(100),
       UltimaDataOk DATETIME,
       DataInicioCarencia DATETIME,
       DiasCarenciaUtilizados INTEGER,
       LicencaValida BIT
   );
   ```

2. **Configurar Senha**:
   - Senha padrão: `Ca486575@`
   - Pode ser alterada por cliente

3. **Trusted Locations**:
   - O instalador configura automaticamente
   - Permite execução de macros
   - Configura permissões de segurança

#### Módulos VBA Essenciais

1. **Mod_VerificacaoLicenca.bas**:
   - Verificação de licença online
   - Controle de carência
   - Integração com Google Sheets

2. **Form_chk_Start.bas**:
   - Formulário de inicialização
   - Verificação de licença
   - Redirecionamento para login

3. **Form_frm_StatusLicenca.bas**:
   - Status da licença
   - Informações de carência
   - Teste de conectividade

#### Configuração de Segurança

1. **Permissões de Usuário**:
   - Admin: Acesso total
   - Usuário: Acesso limitado
   - Operador: Apenas operações básicas

2. **Backup Automático**:
   - Backup diário configurável
   - Compressão automática
   - Retenção configurável

3. **Logs de Auditoria**:
   - Log de acessos
   - Log de alterações
   - Log de verificações de licença

## 📦 Instalação e Configuração

### Pré-requisitos
- Windows 10/11
- Microsoft Access Runtime 2016+
- Python 3.7+
- Conexão com internet (para instalação)

### Processo de Instalação

1. **Executar o Instalador**
   ```bash
   python setup_loja.py
   ```

2. **Inserir Serial do Cliente**
   - O sistema solicita o serial (ex: LPP001)
   - Baixa configurações do GitHub automaticamente

3. **Configuração Automática**
   - Instala Microsoft Access Runtime (se necessário)
   - Baixa frontend e backend
   - Configura conexões de banco
   - Cria atalho no desktop

### Configurações por Cliente

Cada cliente possui um arquivo JSON de configuração:

```json
{
  "CLIENT_ID": "LPP001",
  "INSTALL_DIR": "C:\\FLMSistemas",
  "BACKEND_NAME": "FLMSistemas_be.accdb",
  "FRONTEND_NAME": "FLMSistemas_automacao.accdr",
  "BACKEND_URL": "https://github.com/fsmfile/elevesystem/raw/main/Access/FLMSistemas_be.accdb",
  "FRONTEND_URL": "https://github.com/fsmfile/elevesystem/raw/main/FrontEnd/FLMSistemas_automacao.accdr",
  "DB_PASSWORD": "Ca486575@",
  "CARÊNCIA_DIAS": "10",
  "SHORTCUT_NAME": "Eleve System.lnk",
  "DATA_EXPIRACAO": "31/12/2025"
}
```

## 🔐 Sistema de Licenciamento

### Verificação Inteligente de Licença
- ✅ **Verificação sempre ao abrir o sistema**
- ✅ **Carência de 10 dias quando não há internet**
- ✅ **Reset automático da carência quando a internet volta**
- ✅ **Verificação contínua online sempre que possível**

#### Funcionalidades do Sistema de Licença
- **Verificação Online**: Comunicação com Google Sheets
- **Controle de Carência**: Permite uso por até 10 dias sem internet
- **Reset Automático**: Quando a internet volta, reseta a contagem
- **Validação Local**: Armazena dados de licença localmente
- **Hardware ID**: Identificação única do equipamento

#### Arquivos do Sistema de Licença
- `Mod_VerificacaoLicenca.bas` - Módulo principal de verificação
- `Form_chk_Start.bas` - Formulário de verificação
- `Form_frm_StatusLicenca.bas` - Formulário de status da licença
- `Cs_CriarTblLicencaLocal.sql` - Consulta para criar tabela de licença

## 🔧 Ferramentas de Suporte

### Scripts de Diagnóstico

1. **diagnostico_completo.py**:
   ```bash
   python diagnostico_completo.py
   ```
   - Analisa todos os clientes
   - Identifica problemas de segurança
   - Gera relatório de licenças

2. **atualizar_licencas_validas.py**:
   ```bash
   python atualizar_licencas_validas.py
   ```
   - Atualiza planilha de licenças
   - Valida datas de expiração
   - Gera relatório de status

3. **configurar_github_token.py**:
   ```bash
   python configurar_github_token.py
   ```
   - Configura token do GitHub
   - Interface gráfica
   - Validação de token

### Scripts de Migração

1. **migracao_licenca.py**:
   ```bash
   python migracao_licenca.py "C:\FLMSistemas\FLMSistemas_be.accdb"
   ```
   - Migra sistemas existentes
   - Atualiza tabela de licença
   - Preserva dados existentes

2. **configurar_sistema.py**:
   ```bash
   python configurar_sistema.py "C:\FLMSistemas\FLMSistemas_be.accdb" "LPP001"
   ```
   - Configura sistema existente
   - Aplica configurações de cliente
   - Testa funcionalidades

## 🚀 Funcionalidades Avançadas

### Sistema de Backup
- Backup automático configurável
- Compressão de arquivos
- Retenção por período
- Restauração automática

### Monitoramento
- Logs detalhados de operações
- Monitoramento de performance
- Alertas de problemas
- Dashboard de status

### Integração
- Exportação para Excel
- Importação de dados
- APIs externas
- Webhooks

## 📞 Suporte e Manutenção

### Contato
- **Email**: suporte@flmsistemas.com.br
- **Telefone**: (11) 99999-9999
- **WhatsApp**: (11) 99999-9999

### Documentação
- **Manual do Usuário**: Disponível no sistema
- **Documentação Técnica**: Pasta `docs/`
- **Vídeos Tutoriais**: Canal YouTube

### Atualizações
- **Versões**: Controle via GitHub
- **Patches**: Aplicação automática
- **Migração**: Scripts automatizados

---

**Desenvolvido por FLM Sistemas**
*Sistema de Gestão Empresarial Completo* 