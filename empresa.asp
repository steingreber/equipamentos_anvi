<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<!--#include file="_cnx.asp"-->
<script src="suport/suport.js"></script>
<link type="text/css" rel="stylesheet" href="suport/suport.css" />
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0">EMPRESA</h4></td>
  </tr>
</table>
            <table width="100%" height="340" cellspacing="0" cellpadding="0">
    <tr>
                    <td width="15">&nbsp;</td>
        <td valign="top">
<%
	sLin = "Select * From EMPRESA Where A00ID = 1"
	Set objRS = Server.CreateObject("ADODB.Recordset")
	objRS.Open sLin, objConect, 3, 3

	Response.write "<p align='center'><img src='config/imgtopo/"&objRS(2)&"' border='0'></p>"
	Response.write "<p align=""justify"" class=""subtitulo_bc"" style=""margin-left: 8px; margin-right: 8px;"">"&objRS(1)&"</p><br>"

	objRS.Close
	Set objRS = Nothing	
%>
        </td>
                    <td width="15">&nbsp;</td>
    </tr>
            </table>