<%
If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
%>
<!--#include file="_cnx.asp"-->
<%
	Response.Expires = 0
	byteCount = Request.TotalBytes
	RequestBin = Request.BinaryRead(byteCount)
	Set UploadRequest = CreateObject("Scripting.Dictionary")
	BuildUploadRequest RequestBin
	Dim sTipo, sCmd
	sTipo  = request.querystring("tp")
'-----------------------------------------------
va_A08NOME                 = UCase(Trim(UploadRequest.Item("cp_A08NOME").Item("Value")))
va_A21EMPRESA              = UCase(Trim(UploadRequest.Item("cp_A21EMPRESA").Item("Value")))
va_A03EMAIL                = LCase(Trim(UploadRequest.Item("cp_A03EMAIL").Item("Value")))
va_A07SENHA                = "0"'Trim(UploadRequest.Item("cp_A07SENHA").Item("Value"))
va_A15ENDRECO              = UCase(Trim(UploadRequest.Item("cp_A15ENDRECO").Item("Value")))
va_A16CIDADE               = UCase(Trim(UploadRequest.Item("cp_A16CIDADE").Item("Value")))
va_A18CEP                  = Trim(UploadRequest.Item("cp_A18CEP").Item("Value"))
va_A17ESTADO               = Trim(UploadRequest.Item("cp_A17ESTADO").Item("Value"))
va_A19FONE                 = Trim(UploadRequest.Item("cp_A19FONE").Item("Value"))
va_A20CELULAR              = Trim(UploadRequest.Item("cp_A20CELULAR").Item("Value"))
va_A02TITULO               = UCase(Trim(UploadRequest.Item("cp_A02TITULO").Item("Value")))
va_A05MODELO               = "0"'Trim(UploadRequest.Item("cp_A05MODELO").Item("Value"))
va_A04COR_FONTE_SITE       = "#000000"'Trim(UploadRequest.Item("cp_A04COR_FONTE_SITE").Item("Value"))
va_A09DESCRICAO            = Trim(UploadRequest.Item("cp_A09DESCRICAO").Item("Value"))
va_A10PALAVRAS             = Trim(UploadRequest.Item("cp_A10PALAVRAS").Item("Value"))
va_A12TIPO_SITE            = "0"'Trim(UploadRequest.Item("cp_A12TIPO_SITE").Item("Value"))
va_A13ACESSOS              = Trim(UploadRequest.Item("cp_A13ACESSOS").Item("Value"))
va_A14ULTIMO               = Trim(UploadRequest.Item("cp_A14ULTIMO").Item("Value"))
va_A11TIPO_TOPO            = "0"'Trim(UploadRequest.Item("cp_A11TIPO_TOPO").Item("Value"))
va_A01TOPOIMG              = "-"'Trim(UploadRequest.Item("cp_A01TOPOIMG").Item("Value"))
va_A23ENQUETE              = "0"'Trim(UploadRequest.Item("cp_A23ENQUETE").Item("Value"))
va_A22INFORMATIVO          = "0"'Trim(UploadRequest.Item("cp_A22INFORMATIVO").Item("Value"))
va_A24DATA                 = "0"'Trim(UploadRequest.Item("cp_A24DATA").Item("Value"))

If va_A01TOPOIMG <> "" Then
   sSel = sSel & "UPDATE CONFIG SET "
   sSel = sSel & "A08NOME = '" & va_A08NOME & "', A21EMPRESA = '" & va_A21EMPRESA & "', A03EMAIL = '" & va_A03EMAIL & "', A07SENHA = '" & va_A07SENHA & "', A15ENDRECO = '" & va_A15ENDRECO & "', A16CIDADE = '" & va_A16CIDADE & "', A18CEP = '" & va_A18CEP & "', A17ESTADO = '" & va_A17ESTADO & "', A19FONE = '" & va_A19FONE & "', A20CELULAR = '" & va_A20CELULAR & "', A02TITULO = '" & va_A02TITULO & "', A05MODELO = '" & va_A05MODELO & "', A04COR_FONTE_SITE = '" & va_A04COR_FONTE_SITE & "', A09DESCRICAO = '" & va_A09DESCRICAO & "', A10PALAVRAS = '" & va_A10PALAVRAS & "', A12TIPO_SITE = '" & va_A12TIPO_SITE & "', A13ACESSOS = '" & va_A13ACESSOS & "', A14ULTIMO = '" & va_A14ULTIMO & "', A11TIPO_TOPO = '" & va_A11TIPO_TOPO & "', A01TOPOIMG = '" & va_A01TOPOIMG & "', A23ENQUETE = '" & va_A23ENQUETE & "', A22INFORMATIVO = '" & va_A22INFORMATIVO & "', A24DATA = '" & va_A24DATA & "' "
   sSel = sSel & "WHERE A00ID = 1"
   Set objRS = objConect.Execute(sSel)
   response.redirect "config.asp?id="& sNot &"&ct=1"
Else
   sSel = sSel & "UPDATE CONFIG SET "
   sSel = sSel & "A08NOME = '" & va_A08NOME & "', A21EMPRESA = '" & va_A21EMPRESA & "', A03EMAIL = '" & va_A03EMAIL & "', A07SENHA = '" & va_A07SENHA & "', A15ENDRECO = '" & va_A15ENDRECO & "', A16CIDADE = '" & va_A16CIDADE & "', A18CEP = '" & va_A18CEP & "', A17ESTADO = '" & va_A17ESTADO & "', A19FONE = '" & va_A19FONE & "', A20CELULAR = '" & va_A20CELULAR & "', A02TITULO = '" & va_A02TITULO & "', A05MODELO = '" & va_A05MODELO & "', A04COR_FONTE_SITE = '" & va_A04COR_FONTE_SITE & "', A09DESCRICAO = '" & va_A09DESCRICAO & "', A10PALAVRAS = '" & va_A10PALAVRAS & "', A12TIPO_SITE = '" & va_A12TIPO_SITE & "', A13ACESSOS = '" & va_A13ACESSOS & "', A14ULTIMO = '" & va_A14ULTIMO & "', A11TIPO_TOPO = '" & va_A11TIPO_TOPO & "', A23ENQUETE = '" & va_A23ENQUETE & "', A22INFORMATIVO = '" & va_A22INFORMATIVO & "', A24DATA = '" & va_A24DATA & "' "
   sSel = sSel & "WHERE A00ID = 1"
   Set objRS = objConect.Execute(sSel)
   response.redirect "config.asp?id="& sNot &"&ct=1"
End If
%>
<!--#include file="as_sub.asp"-->
