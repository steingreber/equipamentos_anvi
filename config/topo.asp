<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% 'indica o ínicio do tempo a meia-noite 
if Cint(hour (time)) >= 0 Then 
mensagemtempo = "Boa-Madrugada" 
End if 

'indica o tempo até as 6 da manhã 
if Cint(hour (time)) >= 6 Then 
mensagemtempo = "Bom-Dia" 
End if 

'indica o tempo até as 12 da manhã 
if Cint(hour (time)) >= 12 Then 
mensagemtempo = "Boa-Tarde" 
End if 

'indica o tempo até as 18 da manhã 
if Cint(hour (time)) >= 18 Then 
mensagemtempo = "Boa-Noite" 
End if  %>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico">
<titLe>GNove</title>

<link rel="stylesheet" type="text/css" href="suport/general.css">
<link rel="stylesheet" type="text/css" href="suport/customTop.css">
<link rel="stylesheet" type="text/css" href="suport/layoutTop.css">
<link rel="stylesheet" type="text/nonsense" href="suport/misc.css">
</head>
<body onLoad="" onUnload="" id="topCP">
<div class="body">
<a href="http://www.gnove.net" target="_blank" class="topLogo"><img src="imagens/logo_gnove.gif" alt="" name="logo" id="logo" width="210" height="50" border="0"></a><div id="topTxtBlock">
<span id="topCopyright"><div><a href="#"><%= mensagemtempo %> <strong><%= Session("nome") &" - " %></strong>Site:&nbsp;<strong><%= Session("titulo") %></strong><br/>Último acesso em <%= Session("ultimo") %></a></div></span>
<span id="topTxtBanner"><a href="http://www.gnove.com.br/" target="_blank">Sistema <b>SiteSys</b>,<br> Vers&atilde;o 1.0</a></span>
<span id="topTxtLogout" class="withAdvertisement"><a href="#" onClick="if (confirm(&quot;Deseja sair do sistema?&quot;)) top.location = &quot;vaza.asp&quot;; return false;" title="Desconectar"><img alt="1x1.gif" title="Desconectar" width="20" height="16" align="absmiddle" src="imagens/1x1.gif">Desconectar</a></span>
</div></div>
</body>

</html>