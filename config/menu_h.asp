<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<!--#include file="_cnx.asp"-->
<br>
<%
	sMenu = 0
	contador = 1
	sql = "SELECT * FROM MENUS Where A05PERMISSOES=1 Order By A01MENU"
    Set rsTemp = Server.CreateObject("ADODB.Recordset")
    rsTemp.Open sql, objConect, 3, 3
%>
            <table cellspacing="5" cellpadding="10" align="center">
                <tr>
<%
	Do While not rsTemp.EOF
	If rsTemp(3) = "1" Then
%>
        <td width="226" height="50" align="center"><a href="#" onClick="return openScreen('dashboard<%= contador %>', '<%= rsTemp(2) %>?mu=<%= rsTemp(0) %>');"><img src="imagens/icons/<%= rsTemp(4) %>" border="0"><br><%= rsTemp(1) %></a></td>
<%
Else
%>
        <td width="226" height="50" align="center"><img src="imagens/icons/<%= rsTemp(4) %>" alt="Este item não esta ativo!" border="0"><br><%= rsTemp(1) %></a></td>
<%
End If
	sMenu = sMenu + 1
	contador = contador+1
If sMenu = 6 then
	Response.Write "            </tr>" & vbCrLf
	Response.Write "            <tr>"
	sMenu = 0
End If

	rsTemp.MoveNext
	Loop
	rsTemp.close
%>
            </table>