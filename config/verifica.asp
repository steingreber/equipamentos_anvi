<!--#include file="_cnx.asp"-->
<%
Dim sUser, sPass, vUser, vPass
sUser = Trim(Request("username"))
sPass = Trim(Request("password"))

	SQLPass = "Select * From PERMISSOES Where a02email = '" & sUser & "' AND a03senha = '" & sPass & "'"
	Set objRS = objConect.Execute(SQLPass)
	If objRS.EOF = True And objRS.BOF = True Then
		response.redirect "login.asp?mes=1"
	ElseIf objRS(4) = "0" Then
		response.redirect "login.asp?mes=2"
	End If

vUser = objRS(2)
vPass = objRS(3)
vAcce = objRS(8)
Session("ultimo") = objRS(7)
Session("titulo") = request.servervariables("SERVER_NAME")

If sUser <> vUser or sPass <> vPass Then
   response.redirect "index.asp"
Else

   Session("yUser")   = True
   Session("yPass")   = True
   Session("usuario") = objRS(2)
		nomeq = objRS(1)
		numeroz = Instr(1,nomeq," ")
		var5000 = Left(nomeq,numeroz)
		if var5000 = "" then
			var5000 = nomeq
		else
			var5000 =  Left(nomeq,numeroz)
		end if
   Session("nome") = var5000

   sSel = sSel & "UPDATE PERMISSOES SET "
   sSel = sSel & "a07ultimo = '" & Now & "', a08acessos = '" & vAcce+1 & "' "
   sSel = sSel & "WHERE a02email = '" & Trim(vUser) & "'"
   Set objRt = objConect.Execute(sSel)

   Response.redirect "frame.asp"
End If
objRS.Close
Set objRS = Nothing
%>

