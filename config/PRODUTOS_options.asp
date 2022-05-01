<!--#include file="_cnx.asp"-->
<!--#include file="../gerar_senhas.asp"-->
<%
'<------- /°°°°°°°°°°°°°°°°°°°°°°°°°°\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOS_new.asp
'CRIADO EM.........: 29/2/2008 09:39:58
'----------------------------------------------
iMod = "PRODUTOS"

opt = Request("opt")
sNot = Request("id")

If opt <> 3 Then
'---------------- Envia imagem e altera tamanho ------------
Set Upload = Server.CreateObject("Persits.Upload")
Path     = Server.MapPath("imgProdutos")
PathMini = Server.MapPath("imgProdutos\mini")
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
	iHeightNew = iHeight * 350 / iWidth
    jpeg.Width  = 350
    jpeg.Height = iHeightNew
End If

Set jpegmini = Server.CreateObject("Persits.Jpeg")

jpegmini.Open (File.Path)
iWidthmini  = jpegmini.Width
iHeightmini = jpegmini.Height

If iOrienta = "R" Then
	iWidthNewmini = iWidth * 100 / iHeightmini
    jpegmini.Width  = iWidthNewmini
    jpegmini.Height = 100
Else
	iHeightNewmini = iHeightmini * 100 / iWidthmini
    jpegmini.Width  = 100
    jpegmini.Height = iHeightNewmini
End If

'----------------------------------------------------------------------
   SQLUltimo = "SELECT Count(A00ID) AS ContarFOTOS FROM PRODUTOS"
   Set objRSConta = objConect.Execute(SQLUltimo)
   iQuantas = objRSConta("ContarFOTOS")+1
   iNome    = GeraSenha &"_"& iQuantas &".jpg"
   objRSConta.Close
'----------------------------------------------------------------------

    SavePath     = Path & "\" & iNome
	SavePathMini = PathMini & "\" & iNome
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.DeleteFile Path & "\" & File.ExtractFileName

    If UCase(Right(SavePath, 3)) <> "JPG" Then
      SavePath = SavePath & ".jpg"
    End If
    jpeg.Save SavePath

    If UCase(Right(SavePathMini, 3)) <> "JPG" Then
      SavePathMini = SavePathMini & ".jpg"
    End If
    jpegmini.Save SavePathMini

  Else
    Response.Write "A imagem não é válida!"
    Response.End
  End If
End If

'-----------------------------------------------
va_a06ativo                = "1" 'Trim(Upload.Form("cp_a06ativo"))
va_a01produto              = Trim(Upload.Form("cp_a01produto"))
va_a08descricao            = Trim(Upload.Form("cp_a08descricao"))
va_a02linha                = Trim(Upload.Form("cp_a02linha"))
va_a03numeroIni            = "0" 'Trim(Upload.Form("cp_a03numeroIni"))
va_a04numeroFim            = "0" 'Trim(Upload.Form("cp_a04numeroFim"))
va_a05foto                 = iNome
va_a10resumo               = Trim(Upload.Form("cp_a10resumo"))
'-----------------------------------------------
End If

If opt = 1 Then '-----------------> Insert
   sSel = sSel & "INSERT INTO PRODUTOS(a06ativo, a01produto, a08descricao, a02linha, a03numeroIni, a04numeroFim, a05foto, a09orienta, a10resumo)"
   sSel = sSel & "VALUES ('" & va_a06ativo & "', '" & va_a01produto & "', '" & va_a08descricao & "', '" & va_a02linha & "', '" & va_a03numeroIni & "', '" & va_a04numeroFim & "', '" & va_a05foto & "', '" & iOrienta & "', '" & va_a10resumo & "')"
   Set objRS = objConect.Execute(sSel)
   response.redirect iMod & "_all.asp"

ElseIf opt = 2 Then '-------------> Update
    sSel = sSel & "UPDATE PRODUTOS SET "
  If va_a05foto <> "" Then
    sSel = sSel & "a06ativo = '" & va_a06ativo & "', a01produto = '" & va_a01produto & "', a08descricao = '" & va_a08descricao & "', a02linha = '" & va_a02linha & "', a03numeroIni = '" & va_a03numeroIni & "', a04numeroFim = '" & va_a04numeroFim & "', a05foto = '" & va_a05foto & "', a09orienta = '" & iOrienta & "', a10resumo = '" & va_a10resumo & "' "
  Else
    sSel = sSel & "a06ativo = '" & va_a06ativo & "', a01produto = '" & va_a01produto & "', a08descricao = '" & va_a08descricao & "', a02linha = '" & va_a02linha & "', a03numeroIni = '" & va_a03numeroIni & "', a04numeroFim = '" & va_a04numeroFim & "', a09orienta = '" & iOrienta & "', a10resumo = '" & va_a10resumo & "' "
  End If
    sSel = sSel & "WHERE a00id = " & sNot
    Set objRS = objConect.Execute(sSel)
    response.redirect iMod & "_edit.asp?id="& sNot &"&ct=1"

Else '----------------------------> Delete
    sSele = "Select * From "&iMod&" Where a00id = " & sNot
    Set objRSe = objConect.Execute(sSele)
    iFoto = objRSe(2)

    sSel = "Delete From " & iMod & " Where a00id = " & sNot
    Set objRS = objConect.Execute(sSel)
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    objFSO.DeleteFile server.mappath(iMod & "\" & iFoto)
    Set objFSO = Nothing

    response.redirect iMod & "_all.asp"
End If
%>

