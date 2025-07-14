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
    Dim LicencaValida As Boolean
    LicencaValida = VerificaLicenca()
    
    If LicencaValida Then
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

