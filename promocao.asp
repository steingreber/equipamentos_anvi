<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<script src="suport/suport.js"></script>
<!--#include file="_cnx.asp"-->
<link type="text/css" rel="stylesheet" href="suport/suport.css">
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="40" height="20" border="0" align="absmiddle">PROMOÇÃO DO MÊS</h4></td>
  </tr>
</table>
<%
	sLin = "Select * From EMPRESA Where A00ID = 3"
	Set objRS = Server.CreateObject("ADODB.Recordset")
	objRS.Open sLin, objConect, 3, 3

	Response.write "<p align='center'><img src='config/imgtopo/"&objRS(2)&"' border='0'></p>"
	Response.write "<p align=""justify"" class=""subtitulo"" style=""margin-left: 8px; margin-right: 8px;"">"&objRS(1)&"</p><br>"

	objRS.Close
	Set objRS = Nothing	
%>