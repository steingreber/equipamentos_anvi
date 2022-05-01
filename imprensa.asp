<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<!--#include file="_cnx.asp"-->
<script src="suport/suport.js"></script>
<link type="text/css" rel="stylesheet" href="suport/suport.css" />
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0">SAIU NA IMPRENSA</h4></td>
  </tr>
</table>
            <table width="98%" height="300" border="0" cellspacing="1" cellpadding="1" align="center">

<%
	sql = "Select * From imprensa order by a00id desc"
    Set imprensa = Server.CreateObject("ADODB.Recordset")
    imprensa.Open sql, objConect, 3, 3
	Do While not imprensa.EOF
%>
<tr>
                    <td valign="top">
					Confira aqui o que foi publicado sobre nós!<br><br><br>
					&raquo;&nbsp;<a href="<%= imprensa(2) %>" target="_blank"><font color="#000000"><%= UCase(imprensa(1)) %></font></a></td>
</tr>
<%
	imprensa.MoveNext
	Loop
	imprensa.close
%>
            </table>
