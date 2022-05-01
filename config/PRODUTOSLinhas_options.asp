<!--#include file="_cnx.asp"-->
<%
'<------- /같같같같같같같같같같같같같\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOSLinhas_new.asp
'CRIADO EM.........: 29/2/2008 10:02:57
'----------------------------------------------
iMod = "PRODUTOSLinhas"

opt = Request("opt")
sNot = Request("id")

'-----------------------------------------------
va_descri                  = UCase(Trim(Request.Form("cp_descri")))
va_status                  = Trim(Request.Form("cp_status"))
'-----------------------------------------------

If opt = 1 Then '-----------------> Insert
   sSel = sSel & "INSERT INTO PRODUTOSLinhas(descri, status)"
   sSel = sSel & "VALUES ('" & va_descri & "', '" & va_status & "')"
   Set objRS = objConect.Execute(sSel)
   response.redirect iMod & "_all.asp"

ElseIf opt = 2 Then '-------------> Update
    sSel = sSel & "UPDATE PRODUTOSLinhas SET "
    sSel = sSel & "descri = '" & va_descri & "', status = '" & va_status & "' "
    sSel = sSel & "WHERE idSub = " & sNot
    Set objRS = objConect.Execute(sSel)
    response.redirect iMod & "_edit.asp?id="& sNot &"&ct=1"

Else '----------------------------> Delete
    sSel = "Delete From " & iMod & " Where idSub = " & sNot
    Set objRS = objConect.Execute(sSel)

    response.redirect iMod & "_all.asp"
End If
%>

