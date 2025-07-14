Option Compare Database
Option Explicit

' MÓDULO CORRIGIDO PARA RESOLVER PROBLEMA DE ACESSO AO GOOGLE SHEETS
' Este módulo resolve o problema onde o navegador consegue acessar mas o VBA não

Private Const MAX_CARENCIA_DIAS As Integer = 10
Private Const GOOGLE_SHEETS_URL As String = "https://docs.google.com/spreadsheets/d/1krk27oPgtAsVHs3mmEBnlmXOk1O0Bws1UA4i2s65DfI/export?format=csv&gid=0"
Private Const URL_PING As String = "https://www.google.com.br"

' Estrutura para armazenar dados de licença
Private Type DadosLicenca
    ClienteID As String
    HardwareID As String
    UltimaVerificacaoOnline As Date
    DataInicioCarencia As Date
    DiasCarenciaUtilizados As Integer
    LicencaValida As Boolean
End Type

' Variável global para dados de licença
Private mDadosLicenca As DadosLicenca

' ============================================================================
' FUNÇÃO PRINCIPAL DE VERIFICAÇÃO DE LICENÇA
' ============================================================================
Public Function VerificaLicenca() As Boolean
    On Error GoTo TrataErro
    
    ' Carrega dados da licença local
    Call CarregarDadosLicenca
    
    ' Verifica se há conexão com internet
    If TemConexaoInternet() Then
        ' Se tem internet, tenta verificar online via Google Sheets
        If VerificarLicencaGoogleSheets() Then
            ' Licença válida online - reseta carência
            Call ResetarCarencia
            Call SalvarDadosLicenca
            VerificaLicenca = True
            Exit Function
        Else
            ' CORREÇÃO CRÍTICA: Licença inválida online - BLOQUEIA IMEDIATAMENTE
            ' Não inicia carência quando tem internet e licença está expirada!
            mDadosLicenca.LicencaValida = False
            Call SalvarDadosLicenca
            VerificaLicenca = False
            Exit Function
        End If
    Else
        ' Sem internet - verifica carência
        If VerificarCarencia() Then
            VerificaLicenca = True
            Exit Function
        Else
            ' Carência expirada
            VerificaLicenca = False
            Exit Function
        End If
    End If
    
    ' Não deve chegar aqui, mas por segurança
    VerificaLicenca = False
    Exit Function
    
TrataErro:
    ' Em caso de erro, permite acesso por carência APENAS se realmente não tem internet
    If Not TemConexaoInternet() Then
        If VerificarCarencia() Then
            VerificaLicenca = True
        Else
            VerificaLicenca = False
        End If
    Else
        ' Tem internet mas deu erro - BLOQUEIA (não ativa carência)
        mDadosLicenca.LicencaValida = False
        Call SalvarDadosLicenca
        VerificaLicenca = False
    End If
End Function

' ============================================================================
' VERIFICAÇÃO DE CONEXÃO COM INTERNET - MELHORADA
' ============================================================================
Private Function TemConexaoInternet() As Boolean
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    ' Configuração rápida para teste de conexão
    objHTTP.Open "GET", URL_PING, False
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    
    ' Timeout de 5 segundos para teste de conexão
    objHTTP.SetTimeouts 5000, 5000, 5000, 5000
    
    ' Envia requisição
    objHTTP.send
    
    TemConexaoInternet = (objHTTP.Status = 200)
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    TemConexaoInternet = False
    Set objHTTP = Nothing
End Function

' ============================================================================
' VERIFICAÇÃO DE LICENÇA VIA GOOGLE SHEETS - CORRIGIDA
' ============================================================================
Private Function VerificarLicencaGoogleSheets() As Boolean
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
    
    ' Obtém o cliente atual do sistema
    clienteAtual = mDadosLicenca.ClienteID
    
    ' Se não tem cliente definido ou não está configurado, bloqueia
    If clienteAtual = "" Or clienteAtual = "DESCONHECIDO" Or clienteAtual = "NAO_CONFIGURADO" Then
        VerificarLicencaGoogleSheets = False
        Exit Function
    End If
    
    ' USA WINHTTP QUE FUNCIONA MELHOR QUE XMLHTTP
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    ' Configuração com timeouts maiores
    objHTTP.Open "GET", GOOGLE_SHEETS_URL, False
    
    ' Headers eficazes e simples
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    objHTTP.setRequestHeader "Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
    objHTTP.setRequestHeader "Accept-Language", "pt-BR,pt;q=0.9,en;q=0.8"
    objHTTP.setRequestHeader "Cache-Control", "no-cache"
    objHTTP.setRequestHeader "Pragma", "no-cache"
    
    ' Timeout de 30 segundos para requisições mais estáveis
    objHTTP.SetTimeouts 30000, 30000, 30000, 30000
    
    ' Envia a requisição
    objHTTP.send
    
    ' Verifica resposta
    If objHTTP.Status = 200 Then
        strResponse = objHTTP.responseText
        
        ' Remove possíveis caracteres de retorno
        strResponse = Replace(strResponse, vbCr, "")
        
        ' Processa CSV - divide em linhas
        linhas = Split(strResponse, vbLf)
        clienteEncontrado = False
        
        ' Procura pelo cliente na planilha
        For i = 1 To UBound(linhas) ' Pula cabeçalho (linha 0)
            If Trim(linhas(i)) <> "" Then
                ' Remove aspas se existirem e usa vírgula como separador
                linhas(i) = Replace(linhas(i), """", "")
                campos = Split(linhas(i), ",")
                
                If UBound(campos) >= 1 Then
                    ' Verifica se é o cliente procurado
                    If Trim(campos(0)) = clienteAtual Then
                        clienteEncontrado = True
                        
                        ' Obtém data de expiração (campo 1 = DataExpira)
                        strDataExpira = Trim(campos(1))
                        
                        ' Se DataExpira está vazio, considera licença válida indefinidamente
                        If strDataExpira = "" Or strDataExpira = "0" Or LCase(strDataExpira) = "indefinido" Then
                            mDadosLicenca.LicencaValida = True
                            mDadosLicenca.UltimaVerificacaoOnline = Now
                            VerificarLicencaGoogleSheets = True
                        Else
                            ' Força formato brasileiro DD/MM/YYYY
                            On Error Resume Next
                            
                            ' SEMPRE tenta formato dd/mm/yyyy PRIMEIRO (brasileiro)
                            If InStr(strDataExpira, "/") > 0 Then
                                Dim partes() As String
                                partes = Split(strDataExpira, "/")
                                If UBound(partes) = 2 Then
                                    ' Formato DD/MM/YYYY (brasileiro)
                                    dataExpiracao = DateSerial(CInt(partes(2)), CInt(partes(1)), CInt(partes(0)))
                                End If
                            End If
                            
                            ' Se falhou, tenta CDate como fallback
                            If Err.Number <> 0 Then
                                Err.Clear
                                dataExpiracao = CDate(strDataExpira)
                            End If
                            
                            On Error GoTo TrataErro
                            
                            If Err.Number = 0 Then
                                ' Data válida - verifica se não expirou
                                If dataExpiracao >= Date Then
                                    ' Licença válida e não expirada
                                    mDadosLicenca.LicencaValida = True
                                    mDadosLicenca.UltimaVerificacaoOnline = Now
                                    VerificarLicencaGoogleSheets = True
                                Else
                                    ' Licença expirada - BLOQUEIA
                                    mDadosLicenca.LicencaValida = False
                                    VerificarLicencaGoogleSheets = False
                                End If
                            Else
                                ' Erro ao converter data - considera inválida
                                mDadosLicenca.LicencaValida = False
                                VerificarLicencaGoogleSheets = False
                            End If
                        End If
                        
                        Exit For ' Cliente encontrado, sai do loop
                    End If
                End If
            End If
        Next i
        
        ' Se cliente não foi encontrado na planilha
        If Not clienteEncontrado Then
            mDadosLicenca.LicencaValida = False
            VerificarLicencaGoogleSheets = False
        End If
        
    Else
        ' Erro na requisição HTTP
        mDadosLicenca.LicencaValida = False
        VerificarLicencaGoogleSheets = False
    End If
    
    Set objHTTP = Nothing
    Exit Function
    
TrataErro:
    mDadosLicenca.LicencaValida = False
    VerificarLicencaGoogleSheets = False
    Set objHTTP = Nothing
End Function

' ============================================================================
' VERIFICAÇÃO DE CARÊNCIA
' ============================================================================
Private Function VerificarCarencia() As Boolean
    ' Se não há data de início de carência, não está em carência
    If mDadosLicenca.DataInicioCarencia = 0 Then
        VerificarCarencia = False
        Exit Function
    End If
    
    ' Calcula dias decorridos desde o início da carência
    Dim diasDecorridos As Integer
    diasDecorridos = DateDiff("d", mDadosLicenca.DataInicioCarencia, Now)
    
    ' Verifica se ainda está dentro do período de carência
    If diasDecorridos <= MAX_CARENCIA_DIAS Then
        mDadosLicenca.DiasCarenciaUtilizados = diasDecorridos
        mDadosLicenca.LicencaValida = True
        VerificarCarencia = True
    Else
        ' Carência expirada
        mDadosLicenca.LicencaValida = False
        VerificarCarencia = False
    End If
End Function

' ============================================================================
' INICIAR PERÍODO DE CARÊNCIA
' ============================================================================
Private Sub IniciarCarencia()
    ' Só inicia carência se ainda não está em carência
    If mDadosLicenca.DataInicioCarencia = 0 Then
        mDadosLicenca.DataInicioCarencia = Now
        mDadosLicenca.DiasCarenciaUtilizados = 0
    End If
    mDadosLicenca.LicencaValida = True
End Sub

' ============================================================================
' RESETAR CARÊNCIA (quando licença online é validada com sucesso)
' ============================================================================
Private Sub ResetarCarencia()
    mDadosLicenca.DataInicioCarencia = 0
    mDadosLicenca.DiasCarenciaUtilizados = 0
    mDadosLicenca.LicencaValida = True
End Sub

' ============================================================================
' CARREGAR DADOS DE LICENÇA DO BANCO
' ============================================================================
Private Sub CarregarDadosLicenca()
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
        ' Dados não encontrados - sistema não configurado
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
    ' CORREÇÃO: Em caso de erro (tabela não existe), define como não configurado
    ' Não usa valores padrão - força configuração pelo setup
    mDadosLicenca.ClienteID = "NAO_CONFIGURADO"
    mDadosLicenca.HardwareID = ""
    mDadosLicenca.UltimaVerificacaoOnline = 0
    mDadosLicenca.DataInicioCarencia = 0
    mDadosLicenca.DiasCarenciaUtilizados = 0
End Sub

' ============================================================================
' SALVAR DADOS DE LICENÇA NO BANCO
' ============================================================================
Private Sub SalvarDadosLicenca()
    On Error GoTo TrataErro
    
    Dim sql As String
    
    ' Atualiza ou insere dados na tabela
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
    ' Erro ao salvar - continua execução
End Sub

' ============================================================================
' GERAR HARDWARE ID ÚNICO
' ============================================================================
Private Function GerarHardwareID() As String
    On Error GoTo TrataErro
    
    Dim strComputer As String
    Dim objWMIService As Object
    Dim colItems As Object
    Dim objItem As Object
    
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colItems = objWMIService.ExecQuery("Select * from Win32_ComputerSystemProduct")
    
    For Each objItem In colItems
        GerarHardwareID = objItem.UUID
        Exit For
    Next
    
    Exit Function
    
TrataErro:
    ' Se não conseguiu gerar, usa timestamp
    GerarHardwareID = "HW_" & Format(Now, "yyyymmddhhnnss")
End Function

' ============================================================================
' FUNÇÃO PARA OBTER STATUS DA LICENÇA (para interface)
' ============================================================================
Public Function ObterStatusLicenca() As String
    ' Verifica se o sistema está configurado
    If mDadosLicenca.ClienteID = "NAO_CONFIGURADO" Or mDadosLicenca.ClienteID = "" Then
        ObterStatusLicenca = "Sua licença está expirada." & vbCrLf & vbCrLf & _
                           "Entre em contato com o suporte técnico em nosso whatsapp."
        Exit Function
    End If
    
    If mDadosLicenca.LicencaValida Then
        If mDadosLicenca.DataInicioCarencia > 0 Then
            ' Em carência
            Dim diasRestantes As Integer
            diasRestantes = MAX_CARENCIA_DIAS - mDadosLicenca.DiasCarenciaUtilizados
            If diasRestantes > 1 Then
                ObterStatusLicenca = "Sistema funcionando em modo temporário." & vbCrLf & _
                                   "Restam " & diasRestantes & " dias para renovação da licença." & vbCrLf & vbCrLf & _
                                   "Entre em contato com o suporte para renovar."
            Else
                ObterStatusLicenca = "Sistema funcionando em modo temporário." & vbCrLf & _
                                   "⚠️ ÚLTIMO DIA disponível!" & vbCrLf & vbCrLf & _
                                   "Entre em contato URGENTE com o suporte para renovação."
            End If
        Else
            ' Licença válida online
            ObterStatusLicenca = "Sistema licenciado e funcionando normalmente."
        End If
    Else
        ObterStatusLicenca = "Licença expirada ou inválida." & vbCrLf & vbCrLf & _
                           "Para continuar usando o sistema, entre em contato com:" & vbCrLf & _
                           "📞 Suporte Técnico" & vbCrLf & _
                           "📧 Email: suporte@flmsistemas.com.br" & vbCrLf & vbCrLf & _
                           "Informe o código do cliente: " & mDadosLicenca.ClienteID
    End If
End Function

' ============================================================================
' FUNÇÃO PARA FORÇAR VERIFICAÇÃO ONLINE
' ============================================================================
Public Function ForcarVerificacaoOnline() As Boolean
    If TemConexaoInternet() Then
        ForcarVerificacaoOnline = VerificarLicencaGoogleSheets()
        If ForcarVerificacaoOnline Then
            Call ResetarCarencia
            Call SalvarDadosLicenca
        End If
    Else
        ForcarVerificacaoOnline = False
    End If
End Function

' ============================================================================
' FUNÇÃO DE TESTE PARA DEBUG (remover em produção)
' ============================================================================
Public Sub TestarAcessoGoogleSheets()
    On Error GoTo TrataErro
    
    Dim objHTTP As Object
    Dim strResponse As String
    
    Set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
    
    objHTTP.Open "GET", GOOGLE_SHEETS_URL, False
    
    ' Headers básicos e eficazes
    objHTTP.setRequestHeader "User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"
    objHTTP.setRequestHeader "Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
    objHTTP.setRequestHeader "Cache-Control", "no-cache"
    
    ' Timeout de 30 segundos
    objHTTP.SetTimeouts 30000, 30000, 30000, 30000
    
    objHTTP.send
    
    If objHTTP.Status = 200 Then
        MsgBox "✅ SUCESSO!" & vbCrLf & vbCrLf & _
               "Status: " & objHTTP.Status & vbCrLf & _
               "Planilha acessada com sucesso!" & vbCrLf & vbCrLf & _
               "Primeiros caracteres:" & vbCrLf & _
               Left(objHTTP.responseText, 200), _
               vbInformation, "Teste Google Sheets"
    Else
        MsgBox "❌ ERRO DE ACESSO" & vbCrLf & vbCrLf & _
               "Status: " & objHTTP.Status & vbCrLf & _
               "O sistema não conseguiu acessar a planilha.", _
               vbCritical, "Teste Google Sheets"
    End If
    
    Exit Sub
    
TrataErro:
    MsgBox "❌ ERRO: " & Err.Number & " - " & Err.Description & vbCrLf & vbCrLf & _
           "Verifique a conexão com internet.", _
           vbCritical, "Erro no Teste"
End Sub 