<!--#include file="_cnx.asp"-->
<!--#include file="../gerar_senhas.asp"-->
<%
'<------- /°°°°°°°°°°°°°°°°°°°°°°°°°°\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOSFotos_new.asp
'CRIADO EM.........: 1/3/2008 11:29:32
'----------------------------------------------
iMod = "PRODUTOSFotos"

opt = Request("opt")
sNot = Request("id")

If opt <> 3 Then
'---------------- Envia imagem e altera tamanho ------------
Set Upload = Server.CreateObject("Persits.Upload")
Path = Server.MapPath("imgProdutos")
Count = Upload.Save(Path)

If Count = 0 Then
        Response.Write "<br><br><p align='center'>Nenhuma imagem selecionada!<br><br><a href=""#"" onClick=""javascript:history.go(-1);"">Voltar</a></p>"
Else

  Set File = Upload.Files(1)

  If File.ImageType <> "UNKNOWN" Then

    Set jpeg = Server.CreateObject("Persits.Jpeg")
iOrienta = Upload.Form("iOrientacao").Value

    jpeg.Open (File.Path)

iWidth  = jpeg.Width
iHeight = jpeg.Height

If iOrienta = "R" Then
	iWidthNew = iWidth * 300 / iHeight
    jpeg.Width  = iWidthNew
    jpeg.Height = 300
Else
	iHeightNew = iHeight * 400 / iWidth
    jpeg.Width  = 400
    jpeg.Height = iHeightNew
End If
    iNome = GeraSenha & ".jpg"

    SavePath = Path & "\" & iNome
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.DeleteFile Path & "\" & File.ExtractFileName

    If UCase(Right(SavePath, 3)) <> "JPG" Then
      SavePath = SavePath & ".jpg"
    End If

    jpeg.Save SavePath
  Else
    Response.Write "A imagem não é válida!"
    Response.End
  End If
End If

'-----------------------------------------------
va_status                  = Trim(Upload.Form("cp_status"))
va_descri                  = iNome
va_idProduto               = Trim(Upload.Form("cp_idProduto"))
'-----------------------------------------------
End If

If opt = 1 Then '-----------------> Insert
   sSel = sSel & "INSERT INTO PRODUTOSFotos(status, descri, idProduto)"
   sSel = sSel & "VALUES ('" & va_status & "', '" & va_descri & "', '" & va_idProduto & "')"
   Set objRS = objConect.Execute(sSel)
   response.redirect iMod & "_all.asp?id2=" & va_idProduto

ElseIf opt = 2 Then '-------------> Update
    sSel = sSel & "UPDATE PRODUTOSFotos SET "
  If va_descri <> "" Then
    sSel = sSel & "status = '" & va_status & "', descri = '" & va_descri & "', idProduto = '" & va_idProduto & "' "
  Else
    sSel = sSel & "status = '" & va_status & "', idProduto = '" & va_idProduto & "' "
  End If
    sSel = sSel & "WHERE idSub = " & sNot
    Set objRS = objConect.Execute(sSel)
    response.redirect iMod & "_edit.asp?id="& sNot &"&ct=1"&"&id2="& va_idProduto

Else '----------------------------> Delete
    sSele = "Select * From "&iMod&" Where idSub = " & sNot
    Set objRSe = objConect.Execute(sSele)
    iFoto = objRSe(2)

    sSel = "Delete From " & iMod & " Where idSub = " & sNot
    Set objRS = objConect.Execute(sSel)
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.DeleteFile server.mappath(iMod & "\" & iFoto)
    Set objFSO = Nothing
    response.redirect iMod & "_all.asp?id2="& Request("id2")

End If
%>

