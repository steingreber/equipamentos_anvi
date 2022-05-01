<!--#include file="_cnx.asp"-->
<%
'<------- /같같같같같같같같같같같같같\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: IMPRENSA_new.asp
'CRIADO EM.........: 2009-03-09 17:51:26
'----------------------------------------------
iMod = "IMPRENSA"

opt = Request("opt")
sNot = Request("id")

'-----------------------------------------------
va_a01titulo                             = Trim(Request.Form("cp_a01titulo"))
va_a02link                               = Trim(Request.Form("cp_a02link"))
va_a03texto                              = Trim(Request.Form("cp_a03texto"))
'-----------------------------------------------

If opt = 1 Then '-----------------> Insert
   sSel = sSel & "INSERT INTO IMPRENSA(a01titulo, a02link, a03texto)"
   sSel = sSel & "VALUES ('" & va_a01titulo & "', '" & va_a02link & "', '" & va_a03texto & "')"
   Set objRS = objConect.Execute(sSel)
   Errou
   response.redirect iMod & "_all.asp"

ElseIf opt = 2 Then '-------------> Update
    sSel = sSel & "UPDATE IMPRENSA SET "
    sSel = sSel & "a01titulo = '" & va_a01titulo & "', a02link = '" & va_a02link & "', a03texto = '" & va_a03texto & "' "
    sSel = sSel & "WHERE a00id = " & sNot
    Set objRS = objConect.Execute(sSel)
    Errou
    response.redirect iMod & "_edit.asp?id="& sNot &"&ct=1"

Else '----------------------------> Delete
    sSel = "Delete From " & iMod & " Where a00id = " & sNot
    Set objRS = objConect.Execute(sSel)
    Errou
    response.redirect iMod & "_all.asp"
End If
%>

