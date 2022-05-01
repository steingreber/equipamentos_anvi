<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<!--#include file="_cnx.asp"-->
<script src="suport/suport.js"></script>
<link type="text/css" rel="stylesheet" href="suport/suport.css" />
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<%
	sIDi = Request("id")
	sql = "SELECT * FROM PRODUTOS Where a00id = "&sIDi
    Set rsTemp = Server.CreateObject("ADODB.Recordset")
    rsTemp.Open sql, objConect, 3, 3
%>
<table width="770" align="center">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0"><%= rsTemp("a01produto") %></h4></td>
  </tr>
</table>
<table width="96%" cellpadding="0" cellspacing="0" height="66">
    <tr>
        <td width="310" align="center" valign="top"><img src="config/imgProdutos/<%= rsTemp("a05foto") %>" alt="" border="0"><br><br><strong>MAIS FOTOS</strong><br>
		            <table width="99%" cellspacing="3" cellpadding="0" align="center">

<%
sFoto = 0
contador = 1
Response.Write "                <tr>"
	sql2 = "SELECT * FROM PRODUTOSFotos Where idProduto = "&sIDi
    Set rsTemp2 = Server.CreateObject("ADODB.Recordset")
    rsTemp2.Open sql2, objConect, 3, 3
	Do While not rsTemp2.EOF
%>
                    <td width="100" height="100" align="center"><a href="javascript:open_window('win', 'palco.asp?Page=<%= contador %>&galeria=<%= rsTemp2(1) %>', 50, 50, 601, 411, 0, 0, 0, 0, 0);" target="_self"><img src="config/imgProdutos/<%= rsTemp2(2) %>" alt="" width="75" height="75" border="0"></a></td>

<%
	sFoto = sFoto + 1
	contador = contador+1
If sFoto = 3 then
	Response.Write "            </tr>" & vbCrLf
	Response.Write "            <tr>"
	sFoto = 0
End If
	rsTemp2.MoveNext
	Loop
	rsTemp2.close
%>
            </table>
<% Response.Write "MAIS INFORMAÇÕES LIGUE " & va_A19FONE %>
		</td>
        <td valign="top">&nbsp;</td>
        <td width="782" valign="top"><%= rsTemp("a08descricao") %></td>
    </tr>
    <tr>
        <td colspan="3" align="center" height="43"><a href="javascript:ajax('produtos.asp','conteudo','Aguarde...')">Voltar</a></td>
    </tr>
</table>
<% rsTemp.Close %>