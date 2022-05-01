<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<!--#include file="_cnx.asp"-->
<script src="suport/suport.js"></script>
<link type="text/css" rel="stylesheet" href="suport/suport.css" />
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<%
	sID = 4'Request("id")
SQLsess = "Select * From PRODUTOSLinhas Where idSub="& sID
    Set rsSess = Server.CreateObject("ADODB.Recordset")
    rsSess.Open SQLsess, objConect, 3, 3
%>

<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0"><%= rsSess("descri") %></h4></td>
  </tr>
</table>
<% 	rsSess.close %>
            <table border="0" cellspacing="13" cellpadding="13" align="center">

<%
	sFoto = 0
	contador = 1
Response.Write "                <tr>"
	
	sql = "SELECT * FROM PRODUTOS Where a02linha = "&sID&" Order By a00id"
    Set rsTemp = Server.CreateObject("ADODB.Recordset")
    rsTemp.Open sql, objConect, 3, 3
	Do While not rsTemp.EOF
%>
                    <td width="120" height="100" align="center"><a href="javascript:ajax('produtos_view.asp?id=<%= rsTemp(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= rsTemp(5) %>" alt="" border="0"></a><br><span class="texto"><%= UCase(rsTemp(1)) %></span></td>

<%
	sFoto = sFoto + 1
	contador = contador+1
If sFoto = 5 then
	Response.Write "            </tr>" & vbCrLf
	Response.Write "            <tr>"
	sFoto = 0
End If

	rsTemp.MoveNext
	Loop
	rsTemp.close
%>
            </table>
        </td>
                    <td width="15">&nbsp;</td>
    </tr>
            </table>

<%
	sIDi = 3'Request("id")
SQLsess = "Select * From PRODUTOSLinhas Where idSub="& sIDi
    Set rsSess = Server.CreateObject("ADODB.Recordset")
    rsSess.Open SQLsess, objConect, 3, 3
%>

<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0"><%= rsSess("descri") %></h4></td>
  </tr>
</table>
<% 	rsSess.close %>
            <table border="0" cellspacing="13" cellpadding="13" align="center">

<%
	sFoto = 0
	contador = 1
Response.Write "                <tr>"
	sql = "SELECT * FROM PRODUTOS Where a02linha = "&sIDi&" Order By a00id"
    Set rsTemp = Server.CreateObject("ADODB.Recordset")
    rsTemp.Open sql, objConect, 3, 3
	Do While not rsTemp.EOF
%>
                    <td width="120" height="100" align="center"><a href="javascript:ajax('produtos_view.asp?id=<%= rsTemp(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= rsTemp(5) %>" alt="" border="0"></a><br><span class="texto"><%= UCase(rsTemp(1)) %></span></td>

<%
	sFoto = sFoto + 1
	contador = contador+1
If sFoto = 5 then
	Response.Write "            </tr>" & vbCrLf
	Response.Write "            <tr>"
	sFoto = 0
End If

	rsTemp.MoveNext
	Loop
	rsTemp.close
%>
            </table>
        </td>
                    <td width="15">&nbsp;</td>
    </tr>
            </table>