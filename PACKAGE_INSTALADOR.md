# 📦 Empacotamento do Instalador Eleve System

## 📁 Arquivos para Distribuição

Para enviar ao cliente, você precisa dos seguintes arquivos:

### Arquivos Obrigatórios:
1. **`setup_loja.exe`** - O instalador principal (19MB)
2. **`INSTRUCOES_INSTALADOR.md`** - Instruções para o cliente

### Arquivos Opcionais:
3. **`ico/setup.ico`** - Ícone do sistema (se quiser incluir)

## 🗂️ Estrutura Recomendada para Envio

```
Instalador_EleveSystem/
├── setup_loja.exe
├── INSTRUCOES_INSTALADOR.md
└── ico/
    └── setup.ico
```

## 📤 Métodos de Distribuição

### 1. Google Drive / OneDrive
- Faça upload dos arquivos
- Compartilhe o link com o cliente
- Instrua o cliente a baixar e extrair

### 2. WeTransfer / MEGA
- Upload dos arquivos
- Envie o link de download
- Prazo de expiração: 7 dias (WeTransfer)

### 3. Email (se o arquivo for pequeno)
- Anexe o executável
- Inclua as instruções no corpo do email

### 4. Pendrive / HD Externo
- Copie os arquivos
- Entregue fisicamente ao cliente

## 🔒 Considerações de Segurança

### Antivírus
- O executável pode ser detectado como suspeito por alguns antivírus
- Isso é normal para executáveis Python empacotados
- Instrua o cliente a adicionar exceção se necessário

### Firewall
- O instalador precisa de acesso à internet
- Verifique se o firewall não está bloqueando

## 📋 Checklist de Envio

Antes de enviar ao cliente, verifique:

- [ ] Executável foi testado em um computador limpo
- [ ] Instruções estão claras e completas
- [ ] Serial do cliente está configurado no GitHub
- [ ] Arquivos estão organizados em pasta
- [ ] Link de download está funcionando

## 🧪 Teste do Instalador

### Teste Local:
1. Execute `setup_loja.exe` em um computador de teste
2. Use um serial válido (ex: `TESTE`)
3. Verifique se a instalação funciona corretamente

### Teste Remoto:
1. Envie para um cliente de confiança
2. Peça feedback sobre o processo
3. Ajuste as instruções se necessário

## 📞 Suporte ao Cliente

### Informações para Incluir:
- **Serial específico** do cliente
- **Contato de suporte** da FLM Sistemas
- **Horário de atendimento**
- **WhatsApp/Email** para dúvidas

### Exemplo de Mensagem:

```
Olá [Nome do Cliente],

Segue o instalador do Eleve System para seu computador.

📁 Arquivos anexados:
- setup_loja.exe (instalador)
- INSTRUCOES_INSTALADOR.md (manual)

🔑 Seu Serial: [SERIAL_DO_CLIENTE]

📋 Passos:
1. Baixe e extraia os arquivos
2. Execute setup_loja.exe
3. Digite seu serial: [SERIAL_DO_CLIENTE]
4. Siga as instruções na tela

❓ Dúvidas? Entre em contato:
- WhatsApp: (11) 99999-9999
- Email: suporte@flmsistemas.com.br

Atenciosamente,
Equipe FLM Sistemas
```

## 🔄 Atualizações

### Quando Atualizar:
- Correções de bugs no instalador
- Novas funcionalidades
- Mudanças nas configurações

### Como Atualizar:
1. Gere novo executável com `pyinstaller setup_loja.spec`
2. Teste o novo instalador
3. Envie atualização aos clientes
4. Mantenha versão anterior como backup

---

**Última atualização**: Janeiro 2025  
**Versão do empacotamento**: 1.0 