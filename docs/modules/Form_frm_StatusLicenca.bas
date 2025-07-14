Option Compare Database
Option Explicit

Private Sub Form_Load()
    On Error GoTo TrataErro
    
    ' Carrega informações da licença
    Call AtualizarStatusLicenca
    
    Exit Sub
    
TrataErro:
    MsgBox "Erro ao carregar status da licença: " & Err.Number & " - " & Err.Description, _
           vbCritical, "Status da Licença"
End Sub

Private Sub btnVerificarAgora_Click()
    On Error GoTo TrataErro
    
    Me.btnVerificarAgora.Enabled = False
    Me.lblStatus.Caption = "Verificando licença online..."
    Me.lblStatus.ForeColor = RGB(0, 0, 255)
    DoEvents
    
    ' Força verificação online
    If ForcarVerificacaoOnline() Then
        Me.lblStatus.Caption = "Licença válida (Online)"
        Me.lblStatus.ForeColor = RGB(0, 128, 0)
        MsgBox "Licença verificada com sucesso!", vbInformation, "Verificação Online"
    Else
        Me.lblStatus.Caption = "Erro na verificação online ou licença inválida"
        Me.lblStatus.ForeColor = RGB(255, 0, 0)
        MsgBox "Não foi possível verificar a licença online." & vbCrLf & _
               "Verifique sua conexão com a internet.", vbExclamation, "Erro na Verificação"
    End If
    
    Me.btnVerificarAgora.Enabled = True
    Exit Sub
    
TrataErro:
    Me.btnVerificarAgora.Enabled = True
    Me.lblStatus.Caption = "Erro na verificação"
    Me.lblStatus.ForeColor = RGB(255, 0, 0)
    MsgBox "Erro ao verificar licença: " & Err.Number & " - " & Err.Description, _
           vbCritical, "Erro"
End Sub

Private Sub btnFechar_Click()
    DoCmd.Close acForm, Me.Name
End Sub

Private Sub AtualizarStatusLicenca()
    ' Atualiza o status da licença
    Me.lblStatus.Caption = ObterStatusLicenca()
    
    ' Define cor baseada no status
    If InStr(Me.lblStatus.Caption, "válida") > 0 Then
        Me.lblStatus.ForeColor = RGB(0, 128, 0)
    Else
        Me.lblStatus.ForeColor = RGB(255, 0, 0)
    End If
    
    ' Atualiza informações detalhadas
    Call AtualizarInformacoesDetalhadas
End Sub

Private Sub AtualizarInformacoesDetalhadas()
    On Error Resume Next
    
    Dim rs As DAO.Recordset
    Dim sql As String
    
    sql = "SELECT ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados FROM tblLicencaLocal"
    Set rs = CurrentDb.OpenRecordset(sql)
    
    If Not rs.EOF Then
        Me.lblClienteID.Caption = "Cliente ID: " & Nz(rs!ClienteID, "N/A")
        Me.lblHardwareID.Caption = "Hardware ID: " & Nz(rs!HardwareID, "N/A")
        
        If Not IsNull(rs!UltimaDataOk) Then
            Me.lblUltimaVerificacao.Caption = "Última verificação online: " & Format(rs!UltimaDataOk, "dd/mm/yyyy hh:nn:ss")
        Else
            Me.lblUltimaVerificacao.Caption = "Última verificação online: Nunca"
        End If
        
        If Not IsNull(rs!DataInicioCarencia) Then
            Me.lblCarencia.Caption = "Carência iniciada em: " & Format(rs!DataInicioCarencia, "dd/mm/yyyy") & _
                                   " (Dias utilizados: " & Nz(rs!DiasCarenciaUtilizados, 0) & ")"
        Else
            Me.lblCarencia.Caption = "Não está em período de carência"
        End If
    Else
        Me.lblClienteID.Caption = "Cliente ID: N/A"
        Me.lblHardwareID.Caption = "Hardware ID: N/A"
        Me.lblUltimaVerificacao.Caption = "Última verificação online: N/A"
        Me.lblCarencia.Caption = "Carência: N/A"
    End If
    
    rs.Close
    Set rs = Nothing
End Sub

Private Sub btnAtualizar_Click()
    Call AtualizarStatusLicenca
End Sub 