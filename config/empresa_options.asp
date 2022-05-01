<!--#include file="_cnx.asp"-->
<%
opt  = Request("opt")
sNot = Request("id")
Response.Expires = 0
byteCount = Request.TotalBytes
RequestBin = Request.BinaryRead(byteCount)
Set UploadRequest = CreateObject("Scripting.Dictionary")
BuildUploadRequest RequestBin
'-----------------------------------------------
va_A01TEXTO  = Trim(UploadRequest.Item("cp_A01TEXTO").Item("Value"))
va_A01TEXTO  = Replace(va_A01TEXTO,"'",chr(34),1)
va_A02IMAGEM = Trim(UploadRequest.Item("cp_A02IMAGEM").Item("Value"))
'-----------------------------------------------

'===============================================
If va_A02IMAGEM <> "" Then
	Set selectfig = objConect.Execute("SELECT * FROM EMPRESA WHERE A02IMAGEM = '" & FileName & "';")
	ContentType0 = UploadRequest.Item("cp_A02IMAGEM").Item("ContentType")
	filepathname0 = UploadRequest.Item("cp_A02IMAGEM").Item("FileName")
	FileName0 = Right(filepathname0, Len(filepathname0) - InStrRev(filepathname0, "\"))
	Set selectfig = objConect.Execute("SELECT * FROM EMPRESA WHERE A02IMAGEM = '" & FileName & "';")
	Value0 = UploadRequest.Item("cp_A02IMAGEM").Item("Value")
	Set ScriptObject = Server.CreateObject("Scripting.FileSystemObject")
	numero0 = instrrev(Request.servervariables("Path_Info"), "/")
	Set MyFile0 = ScriptObject.CreateTextFile(Server.mappath("imgtopo") & "\" & FileName0)
	For i = 1 To LenB(Value0)
	MyFile0.Write Chr(AscB(MidB(Value0, i, 1)))
	Next
	MyFile0.Close
	va_A02IMAGEM = FileName0
End If

If va_A02IMAGEM <> "" Then
   sSel = sSel & "UPDATE EMPRESA SET "
   sSel = sSel & "A01TEXTO = '" & va_A01TEXTO & "', A02IMAGEM = '" & va_A02IMAGEM & "' "
   sSel = sSel & "WHERE A00ID = 1"
   Set objRS = objConect.Execute(sSel)
   response.redirect "empresa.asp?id=1"
Else
   sSel = sSel & "UPDATE EMPRESA SET "
   sSel = sSel & "A01TEXTO = '" & va_A01TEXTO & "' "
   sSel = sSel & "WHERE A00ID = 1"
   Set objRS = objConect.Execute(sSel)
   response.redirect "empresa.asp?id=1"
End If
%>
<!--#include file="as_sub.asp"-->