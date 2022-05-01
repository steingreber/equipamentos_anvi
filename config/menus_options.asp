<!--#include file="_cnx.asp"-->
<%
opt  = Request("opt")
sNot = Request("id")
'-----------------------------------------------
Response.Expires = 0
byteCount = Request.TotalBytes
RequestBin = Request.BinaryRead(byteCount)
Set UploadRequest = CreateObject("Scripting.Dictionary")
BuildUploadRequest RequestBin
'-----------------------------------------------
va_A01MENU        = Trim(UploadRequest.Item("cp_A01MENU").Item("Value"))
va_A02LINK        = Trim(UploadRequest.Item("cp_A02LINK").Item("Value"))
va_A03ATIVO       = Trim(UploadRequest.Item("cp_A03ATIVO").Item("Value"))
va_A05PERMISSOES  = Trim(UploadRequest.Item("cp_A05PERMISSOES").Item("Value"))
va_A04ICONE       = Trim(UploadRequest.Item("cp_A04ICONE").Item("Value"))
'-----------------------------------------------

If va_A04ICONE <> "" Then
Set selectfig = objConect.Execute("SELECT * FROM MENUS WHERE A04ICONE = '" & FileName & "';")
ContentType0 = UploadRequest.Item("cp_A04ICONE").Item("ContentType")
filepathname0 = UploadRequest.Item("cp_A04ICONE").Item("FileName")
FileName0 = Right(filepathname0, Len(filepathname0) - InStrRev(filepathname0, "\"))
Set selectfig = objConect.Execute("SELECT * FROM MENUS WHERE A04ICONE = '" & FileName & "';")
Value0 = UploadRequest.Item("cp_A04ICONE").Item("Value")
Set ScriptObject = Server.CreateObject("Scripting.FileSystemObject")
numero0 = instrrev(Request.servervariables("Path_Info"), "/")
Set MyFile0 = ScriptObject.CreateTextFile(Server.mappath("imagens/icons") & "\" & FileName0)
For i = 1 To LenB(Value0)
MyFile0.Write Chr(AscB(MidB(Value0, i, 1)))
Next
MyFile0.Close

va_A04ICONE = FileName0
Else
va_A04ICONE = va_A04ICONEh
End If

If opt = 1 then
   sSel = sSel & "INSERT INTO MENUS(A01MENU, A02LINK, A03ATIVO, A05PERMISSOES, A04ICONE)"
   sSel = sSel & "VALUES ('" & va_A01MENU & "', '" & va_A02LINK & "', '" & va_A03ATIVO & "', '" & va_A05PERMISSOES & "', '" & va_A04ICONE & "')"
   Set objRS = objConect.Execute(sSel)
   response.redirect "menus_all.asp"
ElseIf opt = 2 Then
   sSel = sSel & "UPDATE MENUS SET "
   sSel = sSel & "A01MENU = '" & va_A01MENU & "', A02LINK = '" & va_A02LINK & "', A03ATIVO = '" & va_A03ATIVO & "', A05PERMISSOES = '" & va_A05PERMISSOES & "' "
   sSel = sSel & "WHERE A00ID = " & sNot
   Set objRS = objConect.Execute(sSel)
   response.redirect "menus_edit.asp?id="& sNot &"&ct=1"
Else
	sSel = "Delete From MENUS Where A00ID =" & sNot
	Set objRS = objConect.Execute(sSel)
	response.redirect "menus_all.asp"
End If

'==============================================='===============================================
Sub BuildUploadRequest(RequestBin)
	PosBeg = 1
	PosEnd = InStrB(PosBeg, RequestBin, getByteString(Chr(13)))
	boundary = MidB(RequestBin, PosBeg, PosEnd - PosBeg)
	BoundaryPos = InStrB(1, RequestBin, boundary)
	Do Until (BoundaryPos = InStrB(RequestBin, boundary & getByteString("--")))
	Dim UploadControl
	Set UploadControl = CreateObject("Scripting.Dictionary")
	Pos = InStrB(BoundaryPos, RequestBin, getByteString("Content-Disposition"))
	Pos = InStrB(Pos, RequestBin, getByteString("name="))
	PosBeg = Pos + 6
	PosEnd = InStrB(PosBeg, RequestBin, getByteString(Chr(34)))
	Name = getString(MidB(RequestBin, PosBeg, PosEnd - PosBeg))
	PosFile = InStrB(BoundaryPos, RequestBin, getByteString("filename="))
	PosBound = InStrB(PosEnd, RequestBin, boundary)
	If PosFile <> 0 And (PosFile < PosBound) Then
		PosBeg = PosFile + 10
		PosEnd = InStrB(PosBeg, RequestBin, getByteString(Chr(34)))
		FileName = getString(MidB(RequestBin, PosBeg, PosEnd - PosBeg))
		UploadControl.Add "FileName", FileName
		Pos = InStrB(PosEnd, RequestBin, getByteString("Content-Type:"))
		PosBeg = Pos + 14
		PosEnd = InStrB(PosBeg, RequestBin, getByteString(Chr(13)))
		ContentType = getString(MidB(RequestBin, PosBeg, PosEnd - PosBeg))
		UploadControl.Add "ContentType", ContentType
		PosBeg = PosEnd + 4
		PosEnd = InStrB(PosBeg, RequestBin, boundary) - 2
		Value = MidB(RequestBin, PosBeg, PosEnd - PosBeg)
	Else
		Pos = InStrB(Pos, RequestBin, getByteString(Chr(13)))
		PosBeg = Pos + 4
		PosEnd = InStrB(PosBeg, RequestBin, boundary) - 2
		Value = getString(MidB(RequestBin, PosBeg, PosEnd - PosBeg))
	End If
	UploadControl.Add "Value", Value
	UploadRequest.Add Name, UploadControl
	BoundaryPos = InStrB(BoundaryPos + LenB(boundary), RequestBin, boundary)
	Loop
End Sub
'===============================================
Function getByteString(StringStr)
	For i = 1 To Len(StringStr)
	Char = Mid(StringStr, i, 1)
	getByteString = getByteString & ChrB(AscB(Char))
	Next
	End Function
	
	Function getString(StringBin)
	getString = ""
	For intCount = 1 To LenB(StringBin)
	getString = getString & Chr(AscB(MidB(StringBin, intCount, 1)))
	Next
End Function
%>
