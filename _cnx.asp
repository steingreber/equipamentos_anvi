<%
'<------- /같같같같같같같같같같같같같\ ------->
'<------ / Gerando com PageMaster 2.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: _cnx.asp
'CRIADO EM.........: 28/11/2007 09:54:20
'-------------------------------------------------------------------------------
   Set objConect = Server.CreateObject("ADODB.Connection")
   strConn = "Provider=MSDataShape;DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("config\POS9RKF9KF85CAN894KIW0Q\PONTO8RUFJUR8494955S.mdb") & ";UID=;PWD="
   objConect.Open strConn
   session.LCID=1046
   
	sqls = "Select * From CONFIG"
	Set objRS = Server.CreateObject("ADODB.Recordset")
	objRS.Open sqls,objConect,3,3
	va_A08NOME                 = Trim(objRS("A08NOME"))
	va_A21EMPRESA              = Trim(objRS("A21EMPRESA"))
	va_A03EMAIL                = Trim(objRS("A03EMAIL"))
	va_A07SENHA                = Trim(objRS("A07SENHA"))
	va_A15ENDRECO              = Trim(objRS("A15ENDRECO"))
	va_A16CIDADE               = Trim(objRS("A16CIDADE"))
	va_A18CEP                  = Trim(objRS("A18CEP"))
	va_A17ESTADO               = Trim(objRS("A17ESTADO"))
	va_A19FONE                 = Trim(objRS("A19FONE"))
	va_A20CELULAR              = Trim(objRS("A20CELULAR"))
	va_A02TITULO               = Trim(objRS("A02TITULO"))
	va_A05MODELO               = Trim(objRS("A05MODELO"))
	va_A04COR_FONTE_SITE       = Trim(objRS("A04COR_FONTE_SITE"))
	va_A09DESCRICAO            = Trim(objRS("A09DESCRICAO"))
	va_A10PALAVRAS             = Trim(objRS("A10PALAVRAS"))
	va_A12TIPO_SITE            = Trim(objRS("A12TIPO_SITE"))
	va_A13ACESSOS              = Trim(objRS("A13ACESSOS"))
	va_A11TIPO_TOPO            = Trim(objRS("A11TIPO_TOPO"))
	va_A01TOPOIMG              = Trim(objRS("A01TOPOIMG"))
	va_A22INFORMATIVO          = Trim(objRS("A22INFORMATIVO"))
	va_A23ENQUETE              = Trim(objRS("A23ENQUETE"))
	va_A24DATA                 = Trim(objRS("A24DATA"))
	objRS.Close
%>

