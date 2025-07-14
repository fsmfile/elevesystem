Option Compare Database
Option Explicit

' ============================================================================
' MÓDULO DE DEBUG PARA IDENTIFICAR PROBLEMA NA VERIFICAÇÃO DE LICENÇA
' Execute DebugVerificacaoCompleta() para ver onde está falhando
' ============================================================================

Public Sub DebugVerificacaoCompleta()
    On Error GoTo TrataErro
    
    Dim msg As String
    msg = "=== DEBUG VERIFICAÇÃO DE LICENÇA ===" & vbCrLf & vbCrLf
    
    ' 1. Teste de conexão com backend
    msg = msg & "1. TESTANDO BACKEND:" & vbCrLf
    msg = msg & DebugBackend() & vbCrLf & vbCrLf
    
    ' 2. Teste de internet
    msg = msg & "2. TESTANDO INTERNET:" & vbCrLf
    msg = msg & DebugInternet() & vbCrLf & vbCrLf
    
    ' 3. Teste Google Sheets
    msg = msg & "3. TESTANDO GOOGLE SHEETS:" & vbCrLf
    msg = msg & DebugGoogleSheets() & vbCrLf & vbCrLf
    
    ' 4. Teste verificação completa
    msg = msg & "4. TESTANDO VERIFICAÇÃO COMPLETA:" & vbCrLf
    msg = msg & DebugVerificacaoLicenca() & vbCrLf
    
    ' Mostra resultado
    MsgBox msg, vbInformation, "Debug Completo"
    
    Exit Sub
    
TrataErro:
    MsgBox "Erro no debug: " & Err.Number & " - " & Err.Description, vbCritical, "Erro"
End Sub

Private Function DebugBackend() As String
    On Error GoTo TrataErro
    
    Dim rs As DAO.Recordset
    Dim sql As String
    
    ' Testa se tabela existe e tem dados
    sql = "SELECT ClienteID, HardwareID, UltimaDataOk, DataInicioCarencia, DiasCarenciaUtilizados, LicencaValida FROM tblLicencaLocal"
    Set rs = CurrentDb.OpenRecordset(sql)
    
    If rs.EOF Then
        DebugBackend = "❌ Tabela vazia"
    Else
        DebugBackend = "✅ Dados encontrados:" & vbCrLf & _
                      "   ClienteID: " & Nz(rs!ClienteID, "(vazio)") & vbCrLf & _
                      "   HardwareID: " & Nz(rs!HardwareID, "(vazio)") & vbCrLf & _
                      "   UltimaDataOk: " & Nz(rs!UltimaDataOk, "(vazio)") & vbCrLf & _
                      "   DataInicioCarencia: " & Nz(rs!DataInicioCarencia, "(vazio)") & vbCrLf & _
                      "   DiasCarenciaUtilizados: " & Nz(rs!DiasCarenciaUtilizados, 0) & vbCrLf & _
                      "   LicencaValida: " & Nz(rs!LicencaValida, False)
    End If
    
    rs.Close
    Set rs = Nothing
    Exit Function
    
TrataErro:
    DebugBackend = "❌ Erro: " & Err.Description
End Function

Private Function DebugInternet() As String
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Set objHTTP = CreateObject("MSXML2.XMLHTTP")
    
    objHTTP.Open "GET", "https://www.google.com.br", False
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    objHTTP.send
    
    If objHTTP.Status = 200 Then
        DebugInternet = "✅ Internet OK (Status: " & objHTTP.Status & ")"
    Else
        DebugInternet = "❌ Sem internet (Status: " & objHTTP.Status & ")"
    End If
    
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    DebugInternet = "❌ Erro: " & Err.Description
    Set objHTTP = Nothing
End Function

Private Function DebugGoogleSheets() As String
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Dim strResponse As String
    Dim linhas As Variant
    Dim campos As Variant
    Dim i As Integer
    Dim msg As String
    
    Set objHTTP = CreateObject("MSXML2.XMLHTTP")
    
    objHTTP.Open "GET", "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0", False
    
    ' Headers completos
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    objHTTP.setRequestHeader "Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8"
    objHTTP.setRequestHeader "Accept-Language", "pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7"
    objHTTP.setRequestHeader "Cache-Control", "no-cache"
    
    objHTTP.send
    
    msg = "Status: " & objHTTP.Status & vbCrLf
    
    If objHTTP.Status = 200 Then
        strResponse = objHTTP.responseText
        strResponse = Replace(strResponse, vbCr, "")
        linhas = Split(strResponse, vbLf)
        
        msg = msg & "Linhas: " & UBound(linhas) + 1 & vbCrLf
        
        ' Mostra conteúdo
        For i = 0 To UBound(linhas)
            If i <= 3 Then ' Mostra só as primeiras linhas
                msg = msg & "Linha " & i & ": " & linhas(i) & vbCrLf
            End If
        Next
        
        ' Procura LPPNEUS
        For i = 1 To UBound(linhas)
            If Trim(linhas(i)) <> "" Then
                linhas(i) = Replace(linhas(i), """", "")
                campos = Split(linhas(i), ",")
                
                If UBound(campos) >= 1 Then
                    If Trim(campos(0)) = "LPPNEUS" Then
                        Dim strDataExpira As String
                        Dim dataExpiracao As Date
                        
                        strDataExpira = Trim(campos(1))
                        msg = msg & "LPPNEUS encontrado! Data: " & strDataExpira & vbCrLf
                        
                        ' Testa interpretação da data
                        On Error Resume Next
                        If InStr(strDataExpira, "/") > 0 Then
                            Dim partes() As String
                            partes = Split(strDataExpira, "/")
                            If UBound(partes) = 2 Then
                                dataExpiracao = DateSerial(CInt(partes(2)), CInt(partes(1)), CInt(partes(0)))
                                If Err.Number = 0 Then
                                    msg = msg & "Data interpretada: " & Format(dataExpiracao, "dd/mm/yyyy") & vbCrLf
                                    If dataExpiracao >= Date Then
                                        msg = msg & "✅ Data VÁLIDA (hoje: " & Format(Date, "dd/mm/yyyy") & ")"
                                    Else
                                        msg = msg & "❌ Data EXPIRADA (hoje: " & Format(Date, "dd/mm/yyyy") & ")"
                                    End If
                                Else
                                    msg = msg & "❌ Erro ao interpretar data: " & Err.Description
                                End If
                            End If
                        End If
                        On Error GoTo TrataErro
                        Exit For
                    End If
                End If
            End If
        Next
    Else
        msg = msg & "❌ Erro HTTP"
    End If
    
    DebugGoogleSheets = msg
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    DebugGoogleSheets = "❌ Erro: " & Err.Description
    Set objHTTP = Nothing
End Function

Private Function DebugVerificacaoLicenca() As String
    On Error GoTo TrataErro
    
    Dim resultado As Boolean
    Dim msg As String
    
    msg = "Executando VerificaLicenca()..." & vbCrLf
    
    ' Chama a função principal
    resultado = VerificaLicenca()
    
    If resultado Then
        msg = msg & "✅ RESULTADO: TRUE (licença válida)" & vbCrLf
        msg = msg & "Status: " & ObterStatusLicenca()
    Else
        msg = msg & "❌ RESULTADO: FALSE (licença inválida)" & vbCrLf
        msg = msg & "Status: " & ObterStatusLicenca()
    End If
    
    DebugVerificacaoLicenca = msg
    Exit Function
    
TrataErro:
    DebugVerificacaoLicenca = "❌ Erro: " & Err.Description
End Function

Public Sub LimparTabelaLicenca()
    On Error GoTo TrataErro
    
    If MsgBox("Isso irá limpar todos os dados da tabela tblLicencaLocal." & vbCrLf & _
              "Você terá que reconfigurar com o setup." & vbCrLf & vbCrLf & _
              "Deseja continuar?", vbYesNo + vbQuestion, "Limpar Tabela") = vbYes Then
        
        CurrentDb.Execute "DELETE FROM tblLicencaLocal"
        MsgBox "Tabela limpa com sucesso!" & vbCrLf & _
               "Execute o setup_loja.exe novamente para reconfigurar.", _
               vbInformation, "Concluído"
    End If
    
    Exit Sub
    
TrataErro:
    MsgBox "Erro: " & Err.Description, vbCritical, "Erro"
End Sub 