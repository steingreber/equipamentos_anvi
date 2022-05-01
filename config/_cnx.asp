<%
'<------- /°°°°°°°GERADO COM°°°°°°°°°\ ------->
'<------ / PageMaster v3.0.13\ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: _cnx.asp
'CRIADO EM.........: 30/7/2008 10:22:34
'-------------------------------------------------------------------------------
   On Error Resume Next
   Set objConect = Server.CreateObject("ADODB.Connection")
   strConn = "Provider=MSDataShape;DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & server.mappath("POS9RKF9KF85CAN894KIW0Q\PONTO8RUFJUR8494955S.mdb") & ";UID=;PWD="
   objConect.Open strConn
   session.LCID = 1046
   Session.TimeOut = 60

Sub acesso(pagina)
   If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
    Contador = 1
    sqlMenu = "Select * From MENUS Order By A00ID"
    Set objMn = objConect.Execute(sqlMenu)
    Do While Not objMn.EOF

        If objMn(0) = pagina Then
            SQLPass = "Select * From PERMISSOES Where a02email = '" & Session("usuario") & "'"
            Set objRS = objConect.Execute(SQLPass)
            If Mid(objRS(6), Contador, 1) = "0" Then
                response.redirect "general.asp?mes=1"
                response.End
            End If
        End If

    Contador = Contador + 1
    objMn.MoveNext
    Loop
    objMn.Close
End Sub

Sub Errou()
If Err <> 0 Then
%>
<br>
<table cellpadding="0" cellspacing="0" width="100%" height="100%">
    <tr>
        <td align="center" valign="middle">
            <table style="BORDER-RIGHT: #FF0000 2px solid; BORDER-TOP: #FF0000 2px solid; BORDER-LEFT: #FF0000 2px solid; BORDER-BOTTOM: #FF0000 2px solid" align="center" cellpadding="0" cellspacing="0" width="571" bordercolordark="black" bordercolorlight="black">
                <tr>
                    <td width="571" height="63" align="center">
                        <img src="imagens/att.gif" align="absmiddle"><br><font color="#FF0000"><strong><font size="2">Informação do sistema!</font></strong></font>
                    </td>
                </tr>
                <tr>
                    <td width="571" height="128" align="center">
                        Erro nº <%=err.Number%> <br><%=err.Source%><br><%= err.Description%>
                    </td>
                </tr>
                <tr>
                    <td width="571" height="38" align="center">
           <a href="javascript:self.history.go(-1)">&lt;&lt; Voltar</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
<%
Response.End
End If
End Sub
%>

