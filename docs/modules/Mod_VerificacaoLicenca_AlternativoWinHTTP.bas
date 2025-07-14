Option Compare Database
Option Explicit

' ============================================================================
' MÓDULO ALTERNATIVO USANDO WINHTTP PARA CONTORNAR BLOQUEIOS
' Use este se o módulo principal estiver com "Acesso negado" 
' ============================================================================

Private Const MAX_CARENCIA_DIAS As Integer = 10
Private Const GOOGLE_SHEETS_URL As String = "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0"

' Estrutura para dados de licença
Private Type DadosLicenca
    ClienteID As String
    HardwareID As String
    UltimaVerificacaoOnline As Date
    DataInicioCarencia As Date
    DiasCarenciaUtilizados As Integer
    LicencaValida As Boolean
End Type

Private mDadosLicenca As DadosLicenca

' ============================================================================
' FUNÇÃO PRINCIPAL ALTERNATIVA
' ============================================================================
Public Function VerificaLicencaAlternativa() As Boolean
    On Error GoTo TrataErro
    
    ' Carrega dados da licença local
    Call CarregarDadosLicencaAlt
    
    ' Verifica se há conexão com internet
    If TemConexaoInternetAlt() Then
        ' Tenta verificar online via Google Sheets com WinHTTP
        If VerificarLicencaGoogleSheetsWinHTTP() Then
            ' Licença válida online - reseta carência
            Call ResetarCarenciaAlt
            Call SalvarDadosLicencaAlt
            VerificaLicencaAlternativa = True
            Exit Function
        Else
            ' Licença inválida online - BLOQUEIA
            mDadosLicenca.LicencaValida = False
            Call SalvarDadosLicencaAlt
            VerificaLicencaAlternativa = False
            Exit Function
        End If
    Else
        ' Sem internet - verifica carência
        If VerificarCarenciaAlt() Then
            VerificaLicencaAlternativa = True
        Else
            VerificaLicencaAlternativa = False
        End If
    End If
    
    Exit Function
    
TrataErro:
    VerificaLicencaAlternativa = False
End Function

' ============================================================================
' VERIFICAÇÃO USANDO WINHTTP (mais poderoso que XMLHTTP)
' ============================================================================
Private Function VerificarLicencaGoogleSheetsWinHTTP() As Boolean
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Dim strResponse As String
    Dim clienteAtual As String
    Dim linhas As Variant
    Dim campos As Variant
    Dim i As Integer
    Dim clienteEncontrado As Boolean
    Dim dataExpiracao As Date
    Dim strDataExpira As String
    
    ' Obtém o cliente atual
    clienteAtual = mDadosLicenca.ClienteID
    
    If clienteAtual = "" Or clienteAtual = "DESCONHECIDO" Or clienteAtual = "NAO_CONFIGURADO" Then
        VerificarLicencaGoogleSheetsWinHTTP = False
        Exit Function
    End If
    
    ' USA WINHTTP EM VEZ DE XMLHTTP
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    ' Configurações mais avançadas
    objHTTP.Open "GET", GOOGLE_SHEETS_URL, False
    
    ' Headers super convincentes
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    objHTTP.setRequestHeader "Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
    objHTTP.setRequestHeader "Accept-Language", "pt-BR,pt;q=0.9,en;q=0.8"
    objHTTP.setRequestHeader "Cache-Control", "no-cache"
    objHTTP.setRequestHeader "Pragma", "no-cache"
    
    ' Timeout mais longo
    objHTTP.SetTimeouts 30000, 30000, 30000, 30000
    
    ' Envia requisição
    objHTTP.send
    
    ' Verifica resposta
    If objHTTP.Status = 200 Then
        strResponse = objHTTP.responseText
        
        ' Processa CSV igual ao módulo principal
        strResponse = Replace(strResponse, vbCr, "")
        linhas = Split(strResponse, vbLf)
        clienteEncontrado = False
        
        ' Procura pelo cliente
        For i = 1 To UBound(linhas) ' Pula cabeçalho
            If Trim(linhas(i)) <> "" Then
                linhas(i) = Replace(linhas(i), """", "")
                campos = Split(linhas(i), ",")
                
                If UBound(campos) >= 1 Then
                    If Trim(campos(0)) = clienteAtual Then
                        clienteEncontrado = True
                        strDataExpira = Trim(campos(1))
                        
                        If strDataExpira = "" Or strDataExpira = "0" Or LCase(strDataExpira) = "indefinido" Then
                            mDadosLicenca.LicencaValida = True
                            mDadosLicenca.UltimaVerificacaoOnline = Now
                            VerificarLicencaGoogleSheetsWinHTTP = True
                        Else
                            ' Força formato brasileiro DD/MM/YYYY
                            On Error Resume Next
                            If InStr(strDataExpira, "/") > 0 Then
                                Dim partes() As String
                                partes = Split(strDataExpira, "/")
                                If UBound(partes) = 2 Then
                                    dataExpiracao = DateSerial(CInt(partes(2)), CInt(partes(1)), CInt(partes(0)))
                                End If
                            End If
                            
                            If Err.Number <> 0 Then
                                Err.Clear
                                dataExpiracao = CDate(strDataExpira)
                            End If
                            
                            On Error GoTo TrataErro
                            
                            If Err.Number = 0 Then
                                If dataExpiracao >= Date Then
                                    mDadosLicenca.LicencaValida = True
                                    mDadosLicenca.UltimaVerificacaoOnline = Now
                                    VerificarLicencaGoogleSheetsWinHTTP = True
                                Else
                                    mDadosLicenca.LicencaValida = False
                                    VerificarLicencaGoogleSheetsWinHTTP = False
                                End If
                            Else
                                mDadosLicenca.LicencaValida = False
                                VerificarLicencaGoogleSheetsWinHTTP = False
                            End If
                        End If
                        Exit For
                    End If
                End If
            End If
        Next i
        
        If Not clienteEncontrado Then
            mDadosLicenca.LicencaValida = False
            VerificarLicencaGoogleSheetsWinHTTP = False
        End If
        
    Else
        mDadosLicenca.LicencaValida = False
        VerificarLicencaGoogleSheetsWinHTTP = False
    End If
    
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    mDadosLicenca.LicencaValida = False
    VerificarLicencaGoogleSheetsWinHTTP = False
    Set objHTTP = Nothing
End Function

' ============================================================================
' FUNÇÕES AUXILIARES (cópias das principais)
' ============================================================================
Private Sub CarregarDadosLicencaAlt()
    On Error GoTo TrataErro
    
    Dim rs As DAO.Recordset
    Dim sql As String
    
    sql = "SELECT ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados FROM tblLicencaLocal"
    Set rs = CurrentDb.OpenRecordset(sql)
    
    If Not rs.EOF Then
        mDadosLicenca.ClienteID = Nz(rs!ClienteID, "")
        mDadosLicenca.HardwareID = Nz(rs!HardwareID, "")
        mDadosLicenca.UltimaVerificacaoOnline = Nz(rs!UltimaDataOk, 0)
        mDadosLicenca.DataInicioCarencia = Nz(rs!DataInicioCarencia, 0)
        mDadosLicenca.DiasCarenciaUtilizados = Nz(rs!DiasCarenciaUtilizados, 0)
    Else
        mDadosLicenca.ClienteID = "NAO_CONFIGURADO"
        mDadosLicenca.HardwareID = ""
        mDadosLicenca.UltimaVerificacaoOnline = 0
        mDadosLicenca.DataInicioCarencia = 0
        mDadosLicenca.DiasCarenciaUtilizados = 0
    End If
    
    rs.Close
    Set rs = Nothing
    Exit Sub
    
TrataErro:
    mDadosLicenca.ClienteID = "NAO_CONFIGURADO"
    mDadosLicenca.HardwareID = ""
    mDadosLicenca.UltimaVerificacaoOnline = 0
    mDadosLicenca.DataInicioCarencia = 0
    mDadosLicenca.DiasCarenciaUtilizados = 0
End Sub

Private Function TemConexaoInternetAlt() As Boolean
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    objHTTP.Open "GET", "https://www.google.com.br", False
    objHTTP.SetTimeouts 5000, 5000, 5000, 5000
    objHTTP.send
    
    TemConexaoInternetAlt = (objHTTP.Status = 200)
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    TemConexaoInternetAlt = False
    Set objHTTP = Nothing
End Function

Private Function VerificarCarenciaAlt() As Boolean
    If mDadosLicenca.DataInicioCarencia = 0 Then
        VerificarCarenciaAlt = False
        Exit Function
    End If
    
    Dim diasDecorridos As Integer
    diasDecorridos = DateDiff("d", mDadosLicenca.DataInicioCarencia, Now)
    
    If diasDecorridos <= MAX_CARENCIA_DIAS Then
        mDadosLicenca.DiasCarenciaUtilizados = diasDecorridos
        mDadosLicenca.LicencaValida = True
        VerificarCarenciaAlt = True
    Else
        mDadosLicenca.LicencaValida = False
        VerificarCarenciaAlt = False
    End If
End Function

Private Sub ResetarCarenciaAlt()
    mDadosLicenca.DataInicioCarencia = 0
    mDadosLicenca.DiasCarenciaUtilizados = 0
    mDadosLicenca.LicencaValida = True
End Sub

Private Sub SalvarDadosLicencaAlt()
    On Error GoTo TrataErro
    
    Dim sql As String
    
    sql = "DELETE FROM tblLicencaLocal"
    CurrentDb.Execute sql
    
    sql = "INSERT INTO tblLicencaLocal (ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados, LicencaValida) " & _
          "VALUES ('" & mDadosLicenca.ClienteID & "', '" & mDadosLicenca.HardwareID & "', "
    
    If mDadosLicenca.UltimaVerificacaoOnline > 0 Then
        sql = sql & "#" & Format(mDadosLicenca.UltimaVerificacaoOnline, "yyyy-mm-dd hh:nn:ss") & "#, "
    Else
        sql = sql & "NULL, "
    End If
    
    If mDadosLicenca.DataInicioCarencia > 0 Then
        sql = sql & "#" & Format(mDadosLicenca.DataInicioCarencia, "yyyy-mm-dd hh:nn:ss") & "#, "
    Else
        sql = sql & "NULL, "
    End If
    
    sql = sql & mDadosLicenca.DiasCarenciaUtilizados & ", " & IIf(mDadosLicenca.LicencaValida, "True", "False") & ")"
    
    CurrentDb.Execute sql
    Exit Sub
    
TrataErro:
    ' Erro ao salvar - continua
End Sub

' ============================================================================
' FUNÇÃO DE TESTE WINHTTP
' ============================================================================
Public Sub TestarWinHTTP()
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Dim strResponse As String
    
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    objHTTP.Open "GET", GOOGLE_SHEETS_URL, False
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    objHTTP.SetTimeouts 30000, 30000, 30000, 30000
    objHTTP.send
    
    MsgBox "Status WinHTTP: " & objHTTP.Status & vbCrLf & _
           "Resposta: " & Left(objHTTP.responseText, 500), _
           vbInformation, "Teste WinHTTP"
    
    Exit Sub
    
TrataErro:
    MsgBox "Erro WinHTTP: " & Err.Number & " - " & Err.Description, vbCritical, "Erro"
End Sub 