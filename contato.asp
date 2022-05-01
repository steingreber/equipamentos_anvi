<%Response.ContentType = "text/html; charset=iso-8859-1"%>
<script src="suport/suport.js"></script>
<!--#include file="_cnx.asp"-->
<link type="text/css" rel="stylesheet" href="suport/suport.css">
<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="50" height="20" border="0">CONTATO</h4></td>
  </tr>
</table>
<table width="96%" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="12"></td>
    </tr>
    <tr>
        <td class="subtitulo_bc">
			<p align="justify">
Preencha os campos abaixo e envie sugestões, críticas ou comentários, pois sua opinião é fundamental e em breve entraremos em contato:
<%If request.Form("cp1NOME") = "" Then%>
<form action="contato.asp" method="post" name="frmPageMaster" onSubmit="return validaContato(this);">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                    <tr>
        <td width="60" height="20" align="right" class="subtitulo_bc">Nome&nbsp;&nbsp;</td>
            <td height="27">
                <P><input type="text" name="cp1NOME" size="40" class="ud_caixa"></P>
            </td>
                        <td width="638" height="201" rowspan="6" align="center">
<%= va_A21EMPRESA %><br><br>
<%= va_A16CIDADE & " - " & va_A17ESTADO & "<br>" & "FONE: " & va_A19FONE & "<br>CELULAR: " & va_A20CELULAR %>
						</td>
                    </tr>
        <tr>
        <td align="right" class="subtitulo_bc" height="20">Cidade/Estado&nbsp;&nbsp;</td>
            <td height="20">
                <P><input type="text" name="cp2CIDADE" size="35" class="ud_caixa">/<input type="text" name="cp3ESTADO" size="2" maxlength="2" class="ud_caixa"></P>
            </td>
        </tr>
        <tr>
        <td align="right" class="subtitulo_bc" height="20">DDD-Fone&nbsp;&nbsp;</td>
            <td height="20">
                <P><input type="text" name="cp4DDD" size="2" maxlength="2" class="ud_caixa">-<input type="text" name="cp5FONE" size="35" class="ud_caixa"></P>
            </td>
        </tr>
        <tr>
        <td align="right" class="subtitulo_bc" height="20">E-Mail&nbsp;&nbsp;</td>
            <td height="20">
                <P><input type="text" name="cp6EMAIL" size="40" class="ud_caixa"></P>
            </td>
        </tr>
        <tr>
        <td align="right" class="subtitulo_bc">Mensagem&nbsp;&nbsp;</td>
            <td>
                <P><TEXTAREA class=ud_caixa name=pminfor rows="3" cols="39"></TEXTAREA></P>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="46" align="center"><input type="image" name="formimage1" src="imagens/bt_enviar.gif" border="0"></td>
        </tr>
</table>
</form>
<%  Else
    Sub ProcessaPagina()
    va1NOME     = Request.Form("cp1NOME")
    va2CIDADE   = Request.Form("cp2CIDADE")
    va3ESTADO   = Request.Form("cp3ESTADO")
    va4DDD      = Request.Form("cp4DDD")
    va5FONE     = Request.Form("cp5FONE")
    va6EMAIL    = Request.Form("cp6EMAIL")
    vaMENSAGEM  = Replace(Request.Form("pminfor"),chr(13),"<BR>",1)

    ssubtitulo = ssubtitulo & "<font face='Courier New' color='#333399'>" & vbCrLf
    ssubtitulo = ssubtitulo & "<b><div align=center>Mensagem recebida do site anvi</b></div><br><br>" & vbCrLf
    ssubtitulo = ssubtitulo & "NOME...........: " & va1NOME & "<br>" & vbCrLf
    ssubtitulo = ssubtitulo & "CIDADE/ESTADO..: " & va2CIDADE & "/" & va3ESTADO & "<br>" & vbCrLf
    ssubtitulo = ssubtitulo & "DDD-FONE.......: " & va4DDD & "-" & va5FONE & "<br>" & vbCrLf
    ssubtitulo = ssubtitulo & "EMAIL..........: " & va6EMAIL & "<br>" & vbCrLf
    ssubtitulo = ssubtitulo & "<br><b>MENSAGEM</b> <br>" & vbCrLf
    ssubtitulo = ssubtitulo & vaMensagem & "<br>" & vbCrLf
    ssubtitulo = ssubtitulo & "<hr><br>" & vbCrLf
    ssubtitulo = ssubtitulo & "<font face=Verdana size=1 color='#0000FF'>Gentileza www.gnove.net</font>" & vbCrLf
    ssubtitulo = ssubtitulo & "</font>"

'    On Error Resume Next
			Set msg = CreateObject("CDO.Message")
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.equipamentosanvi.com.br"
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False 'Ativa/Desativa conexao SSL (True ou False)
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 'Ativa autenticacao em texto plano (clear-text)
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "contato@equipamentosanvi.com.br"
			msg.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="5561prgl"
			msg.Configuration.Fields.Update
			msg.To = va_A03EMAIL
			msg.Subject = "CONTATO DO SITE ANVI"
			msg.From = va6EMAIL
			msg.HTMLBody = ssubtitulo '"opcao para ter o corpo de texto em formato html"
			'msg.TextBody = mensagem
			'"IP de Origem: " & Request.ServerVariables("REMOTE_ADDR")  & vbcrlf&_
			msg.Send
			Set msg = Nothing
If Err <> 0 Then
    sMsgErr = "Ocorreu o seguinte erro ao tentar enviar o e-mail:" & Err.Description
End If
    On Error GoTo 0
    End Sub
    ProcessaPagina
	Response.Redirect "index.asp?id=2"
	End If
%>
			</p>
		</td>
    </tr>
</table>