<!--#include file="_cnx.asp"-->
<%
iMod = "Permissoes"

opt  = Request("opt")
sNot = Request("id")
Dim sPer(60)
Contador = 0
'-----------------------------------------------
va_a01nome                 = UCase(Trim(Request("cp_a01nome")))
va_a02email                = LCase(Trim(Request("cp_a02email")))
va_a03senha                = Trim(Request("cp_a03senha"))
va_a04ativo                = Trim(Request("cp_a04ativo"))
va_a05cadastro             = Trim(Request("cp_a05cadastro"))

	sqls = "Select * From MENUS Where A05PERMISSOES=1 Order By A00ID"
	Set objRs = objConect.Execute(sqls)
	Do While Not objRs.EOF

If Trim(Request("cp_permissoes"&objRs(0)&"")) = "on" Then sPer(contador) = 1: Else sPer(contador) = 0
va_permissoes = va_permissoes & sPer(contador)

	contador = contador+1
	objRs.MoveNext
	Loop
	objRs.Close

If opt = 1 then
   sSel = sSel & "INSERT INTO PERMISSOES(a01nome, a02email, a03senha, a04ativo, a05cadastro, a06permissoes)"
   sSel = sSel & "VALUES ('" & UCase(va_a01nome) & "', '" & LCase(va_a02email) & "', '" & va_a03senha & "', '" & va_a04ativo & "', '" & va_a05cadastro & "', '" & va_permissoes & "')"
   Set objRS = objConect.Execute(sSel)
   response.redirect "permissoes_all.asp"
ElseIf opt = 2 Then
   sSel = sSel & "UPDATE PERMISSOES SET "
   sSel = sSel & "a01nome = '" & va_a01nome & "', a02email = '" & va_a02email & "', a03senha = '" & va_a03senha & "', a04ativo = '" & va_a04ativo & "', a05cadastro = '" & va_a05cadastro & "', a06permissoes = '" & va_permissoes & "' "
   sSel = sSel & "WHERE a00id = " & sNot
   Set objRS = objConect.Execute(sSel)
   response.redirect "permissoes_edit.asp?id="& sNot &"&ct=1"
Else
	sSel = "Delete From PERMISSOES Where a00id =" & sNot
	Set objRS = objConect.Execute(sSel)
	response.redirect "permissoes_all.asp"
End If
%>