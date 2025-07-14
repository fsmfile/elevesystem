Option Compare Database
Option Explicit

' ============================================================================
' FORMULÁRIO PARA RENOVAÇÃO DE LICENÇA - SISTEMA HÍBRIDO
' ============================================================================

Private Sub Form_Load()
    ' Atualiza informações da licença ao carregar
    Call AtualizarInformacoes
End Sub

Private Sub AtualizarInformacoes()
    On Error Resume Next
    
    ' Mostra status atual da licença
    Me.lblStatus.Caption = ObterStatusLicenca()
    
    ' Mostra informações detalhadas no campo de texto
    Call CarregarDadosLicenca
    
    Dim info As String
    info = "📋 INFORMAÇÕES ATUAIS DA LICENÇA" & vbCrLf & vbCrLf
    info = info & "Cliente: LPPNEUS" & vbCrLf
    info = info & "Data de expiração atual: " & Format(Date, "dd/mm/yyyy") & vbCrLf
    info = info & "Status: " & ObterStatusLicenca() & vbCrLf & vbCrLf
    info = info & "🔧 OPÇÕES DE RENOVAÇÃO:" & vbCrLf
    info = info & "• Renovação rápida: 1, 3, 6 ou 12 meses" & vbCrLf
    info = info & "• Renovação com data específica" & vbCrLf
    info = info & "• Verificação online forçada"
    
    Me.txtInfo.Value = info
End Sub

' ============================================================================
' BOTÕES DE RENOVAÇÃO RÁPIDA
' ============================================================================

Private Sub btn1Mes_Click()
    If RenovarLicencaRapida(1) Then
        Call AtualizarInformacoes
        MsgBox "✅ Licença renovada por 1 mês!", vbInformation
    End If
End Sub

Private Sub btn3Meses_Click()
    If RenovarLicencaRapida(3) Then
        Call AtualizarInformacoes
        MsgBox "✅ Licença renovada por 3 meses!", vbInformation
    End If
End Sub

Private Sub btn6Meses_Click()
    If RenovarLicencaRapida(6) Then
        Call AtualizarInformacoes
        MsgBox "✅ Licença renovada por 6 meses!", vbInformation
    End If
End Sub

Private Sub btn12Meses_Click()
    If RenovarLicencaRapida(12) Then
        Call AtualizarInformacoes
        MsgBox "✅ Licença renovada por 12 meses!", vbInformation
    End If
End Sub

' ============================================================================
' RENOVAÇÃO COM DATA ESPECÍFICA
' ============================================================================

Private Sub btnDataEspecifica_Click()
    Dim novaData As String
    novaData = InputBox("Digite a nova data de expiração (dd/mm/yyyy):", "Renovar Licença")
    
    If novaData <> "" Then
        If IsDate(novaData) Then
            If RenovarLicenca(CDate(novaData)) Then
                Call AtualizarInformacoes
                MsgBox "✅ Licença renovada até " & Format(CDate(novaData), "dd/mm/yyyy") & "!", vbInformation
            End If
        Else
            MsgBox "❌ Data inválida! Use o formato dd/mm/yyyy", vbExclamation
        End If
    End If
End Sub

' ============================================================================
' VERIFICAÇÃO ONLINE FORÇADA
' ============================================================================

Private Sub btnVerificarOnline_Click()
    Me.lblStatus.Caption = "Verificando online..."
    Me.lblStatus.ForeColor = RGB(0, 0, 255)
    DoEvents
    
    If ForcarVerificacaoOnline() Then
        Call AtualizarInformacoes
        MsgBox "✅ Verificação online concluída! Licença atualizada.", vbInformation
    Else
        MsgBox "❌ Não foi possível verificar online. Verifique sua conexão.", vbExclamation
    End If
    
    Me.lblStatus.ForeColor = vbBlack
End Sub

' ============================================================================
' MOSTRAR INFORMAÇÕES DETALHADAS
' ============================================================================

Private Sub btnInfo_Click()
    Call MostrarInfoLicenca
End Sub

' ============================================================================
' TESTAR SISTEMA
' ============================================================================

Private Sub btnTestar_Click()
    Call TestarSistemaHibrido
    Call AtualizarInformacoes
End Sub

' ============================================================================
' ATUALIZAR INFORMAÇÕES
' ============================================================================

Private Sub btnAtualizar_Click()
    Call AtualizarInformacoes
End Sub

' ============================================================================
' FECHAR FORMULÁRIO
' ============================================================================

Private Sub btnFechar_Click()
    DoCmd.Close acForm, Me.Name
End Sub

' ============================================================================
' FUNÇÕES DE APOIO (STUB - CHAMAM O MÓDULO PRINCIPAL)
' ============================================================================

Private Function RenovarLicencaRapida(meses As Integer) As Boolean
    ' Chama a função do módulo principal
    RenovarLicencaRapida = Mod_VerificacaoLicenca_Hibrido.RenovarLicencaRapida(meses)
End Function

Private Function RenovarLicenca(novaData As Date) As Boolean
    ' Chama a função do módulo principal
    RenovarLicenca = Mod_VerificacaoLicenca_Hibrido.RenovarLicenca(novaData)
End Function

Private Function ObterStatusLicenca() As String
    ' Chama a função do módulo principal
    ObterStatusLicenca = Mod_VerificacaoLicenca_Hibrido.ObterStatusLicenca()
End Function

Private Function ForcarVerificacaoOnline() As Boolean
    ' Chama a função do módulo principal
    ForcarVerificacaoOnline = Mod_VerificacaoLicenca_Hibrido.ForcarVerificacaoOnline()
End Function

Private Sub MostrarInfoLicenca()
    ' Chama a função do módulo principal
    Call Mod_VerificacaoLicenca_Hibrido.MostrarInfoLicenca
End Sub

Private Sub TestarSistemaHibrido()
    ' Chama a função do módulo principal
    Call Mod_VerificacaoLicenca_Hibrido.TestarSistemaHibrido
End Sub

Private Sub CarregarDadosLicenca()
    ' Chama a função do módulo principal
    Call Mod_VerificacaoLicenca_Hibrido.CarregarDadosLicenca
End Sub 