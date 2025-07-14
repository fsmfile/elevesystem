# 🔧 PASSO A PASSO FINAL - IMPLEMENTAÇÃO COMPLETA

## 📋 SITUAÇÃO ATUAL
- ✅ Planilha Google já existe e funciona
- ✅ URL da planilha: `https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0`
- ✅ Sistema abre mesmo com licença expirada (problema identificado)

## 🎯 OBJETIVO
Fazer o sistema validar a data de expiração da planilha Google corretamente.

---

## 📝 PASSO A PASSO

### **PASSO 1: Abrir o Access**
1. Abra o arquivo `C:\FLMSistemas\FLMSistemas_automacao.accdr`
2. Vá em **Ferramentas** → **Macro** → **Visual Basic** (ou pressione `Alt+F11`)

### **PASSO 2: Deletar módulo antigo**
1. No painel esquerdo, procure por `Mod_VerificacaoLicenca`
2. **Clique com botão direito** nele
3. Escolha **Remover Mod_VerificacaoLicenca**
4. Confirme **Não** (não salvar)

### **PASSO 3: Importar novo módulo**
1. Vá em **Arquivo** → **Importar Arquivo**
2. Navegue até: `C:\FLMSistemas\Modernizacao_EleveSystem\docs\modules\`
3. Selecione: `Mod_VerificacaoLicenca_PlanilhaExistente.bas`
4. Clique **Abrir**

### **PASSO 4: Renomear o módulo**
1. No painel esquerdo, clique com botão direito no módulo importado
2. Escolha **Propriedades**
3. Mude o nome de `Mod_VerificacaoLicenca_PlanilhaExistente` para `Mod_VerificacaoLicenca`
4. Pressione **Enter**

### **PASSO 5: Localizar formulário chk_Start**
1. No painel esquerdo, procure por `Form_chk_Start`
2. **Clique duplo** para abrir o código

### **PASSO 6: Substituir código do chk_Start**
1. **Selecione TODO o código** atual (`Ctrl+A`)
2. **Delete** tudo
3. **Cole** o código abaixo:

```vba
Option Compare Database
Option Explicit

Private Sub Form_Load()
    On Error GoTo LoadErr
    
    ' Inicia timer para verificação de licença
    Me.TimerInterval = 1000
    Me.mStatus.Caption = "Aguardando validação de licença..."
    Me.mStatus.ForeColor = vbBlack
    Exit Sub

LoadErr:
    MsgBox "Erro no carregamento: " & Err.Number & " - " & Err.Description, _
           vbCritical, "chk_Start"
    DoCmd.Quit acQuitSaveAll
End Sub

Private Sub Form_Timer()
    On Error GoTo TimerErr
    
    Me.TimerInterval = 0
    Me.mStatus.Caption = "Verificando licença..."
    Me.mStatus.ForeColor = RGB(0, 0, 255)
    DoEvents
    
    ' Chama a função de verificação de licença
    Dim licencaValida As Boolean
    licencaValida = VerificaLicenca()
    
    If licencaValida Then
        Me.mStatus.Caption = "Licença válida. Carregando sistema..."
        Me.mStatus.ForeColor = RGB(0, 128, 0)
        DoEvents
        
        ' Abre o formulário de login
        DoCmd.OpenForm "Frm_LoginSistema"
        DoCmd.Close acForm, Me.Name
    Else
        Me.mStatus.Caption = "Licença inválida ou expirada."
        Me.mStatus.ForeColor = RGB(255, 0, 0)
        
        ' Obter status detalhado
        Dim statusLicenca As String
        On Error Resume Next
        statusLicenca = ObterStatusLicenca()
        If Err.Number <> 0 Then
            statusLicenca = "Não foi possível obter detalhes do status"
        End If
        On Error GoTo TimerErr
        
        MsgBox "Licença inválida. Sistema encerrará." & vbCrLf & vbCrLf & _
               "Status: " & statusLicenca & vbCrLf & vbCrLf & _
               "Entre em contato com o suporte técnico.", _
               vbCritical, "Licença"
        
        DoCmd.Quit acQuitSaveAll
    End If
    
    Exit Sub
    
TimerErr:
    MsgBox "Erro na validação: " & Err.Number & " - " & Err.Description, _
           vbCritical, "chk_Start"
    DoCmd.Quit acQuitSaveAll
End Sub
```

### **PASSO 7: Salvar e fechar**
1. Pressione `Ctrl+S` para salvar
2. Feche o Visual Basic (`Alt+Q`)
3. Feche o Access

### **PASSO 8: Testar o sistema**
1. **Abra o sistema** normalmente
2. **Deve aparecer**: "Licença inválida ou expirada" (porque TESTE está expirado)

### **PASSO 9: Renovar licença na planilha**
1. **Abra a planilha**: https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/edit
2. **Localize a linha**: `LPPNEUS` (deve estar vazia na coluna DataExpira)
3. **Preencha DataExpira**: `31/12/2025`
4. **Salve** a planilha (`Ctrl+S`)

### **PASSO 10: Testar novamente**
1. **Abra o sistema** novamente
2. **Deve abrir** normalmente agora!

---

## 🧪 TESTES PARA FAZER

### **Teste 1: Licença válida**
- Cliente: LPPNEUS
- DataExpira: 31/12/2025
- **Resultado esperado**: Sistema abre

### **Teste 2: Licença expirada**
- Cliente: TESTE  
- DataExpira: 13/06/2025
- **Resultado esperado**: Sistema bloqueia

### **Teste 3: Renovação instantânea**
1. Altere TESTE para: 31/12/2025
2. Tente abrir o sistema
3. **Resultado esperado**: Sistema abre

---

## 🚨 PROBLEMAS POSSÍVEIS

### **Erro: "Módulo não encontrado"**
- **Solução**: Certifique-se que renomeou o módulo para `Mod_VerificacaoLicenca`

### **Erro: "Função VerificaLicenca não encontrada"**
- **Solução**: Verifique se o módulo foi importado corretamente

### **Sistema não conecta na planilha**
- **Solução**: Verifique se a planilha está como "Qualquer pessoa com o link pode visualizar"

### **Data não é reconhecida**
- **Solução**: Use formato dd/mm/yyyy (ex: 31/12/2025)

---

## 🎯 RESULTADO FINAL

Após seguir todos os passos:

✅ **Sistema verifica planilha Google toda vez que abre**
✅ **Você altera data na planilha → Cliente abre sistema**
✅ **Renovação instantânea, sem reinstalação**
✅ **Funciona de qualquer lugar (celular, tablet, PC)**

**É exatamente isso que você queria!** 🎉

---

## 📞 SUPORTE

Se algo der errado, me avise qual passo travou e qual erro apareceu. 