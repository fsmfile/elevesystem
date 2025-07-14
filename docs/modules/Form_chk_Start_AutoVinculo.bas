Option Compare Database
Option Explicit

Private Sub Form_Load()
    On Error GoTo LoadErr
    
    ' Verifica e vincula tabela se necessário
    Call VerificarVincularTabela
    
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

Private Sub VerificarVincularTabela()
    On Error Resume Next
    
    ' Tenta acessar a tabela
    Dim rs As DAO.Recordset
    Set rs = CurrentDb.OpenRecordset("SELECT TOP 1 * FROM tblLicencaLocal", dbOpenSnapshot)
    
    If Err.Number <> 0 Then
        ' Tabela não existe - precisa vincular
        Me.mStatus.Caption = "Vinculando tabela de licença..."
        Me.mStatus.ForeColor = RGB(0, 0, 255)
        DoEvents
        
        Call VincularTabelaLicenca
    Else
        ' Tabela existe - fecha recordset
        rs.Close
        Set rs = Nothing
    End If
    
    On Error GoTo 0
End Sub

Private Sub VincularTabelaLicenca()
    On Error GoTo VinculoErr
    
    ' Caminho do backend
    Dim caminhoBackend As String
    caminhoBackend = "C:\FLMSistemas\FLMSistemas_be.accdb"
    
    ' Verifica se backend existe
    If Dir(caminhoBackend) = "" Then
        MsgBox "Backend não encontrado em: " & caminhoBackend, vbCritical, "Erro"
        DoCmd.Quit acQuitSaveAll
        Exit Sub
    End If
    
    ' Vincula a tabela
    Dim tdf As DAO.TableDef
    Set tdf = CurrentDb.CreateTableDef("tblLicencaLocal")
    tdf.Connect = ";DATABASE=" & caminhoBackend & ";PWD=Ca486575@"
    tdf.SourceTableName = "tblLicencaLocal"
    CurrentDb.TableDefs.Append tdf
    
    Me.mStatus.Caption = "Tabela vinculada com sucesso!"
    Me.mStatus.ForeColor = RGB(0, 128, 0)
    DoEvents
    
    Exit Sub
    
VinculoErr:
    MsgBox "Erro ao vincular tabela: " & Err.Number & " - " & Err.Description, _
           vbCritical, "Erro de Vínculo"
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