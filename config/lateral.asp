<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<link rel="shortcut icon" href="/favicon.ico">
		<title>Plesk</title>

<script language="Javascript1.2" src="suport/common.js"></script>
<script language="Javascript1.2" src="suport/leftframe.js"></script>
		
<link rel="stylesheet" type="text/css" href="suport/general.css">
<link rel="stylesheet" type="text/css" href="suport/custom.css">
<link rel="stylesheet" type="text/css" href="suport/layout.css">
<link rel="stylesheet" type="text/nonsense" href="suport/misc.css">

<script language="javascript">
var sHors = "00"; 
var sMins = "59";
var sSecs = 60;
function getSecs(){
	sSecs--;
	if(sSecs<0)
    {sSecs=59;sMins--;if(sMins<=9)sMins="0"+sMins;}
	if(sMins=="0-1")
    {sMins=5;sHors--;if(sHors<=9)sHors="0"+sHors;}
	if(sSecs<=9)sSecs="0"+sSecs;
	if(sHors=="0-1")
	{sHors="00";sMins="00";sSecs="00";
	clock1.innerHTML=sHors+"<font color=#000000>:</font>"+sMins+"<font color=#000000>:</font>"+sSecs;}
    else
    {
    clock1.innerHTML=sHors+"<font color=#000000>:</font>"+sMins+"<font color=#000000>:</font>"+sSecs;
   	setTimeout('getSecs()',1000);
	}
	}


function _body_onload()
{
	setScrollInIE();
	turnAutocompleteOff();
	loff();
	SetConHelp();
}

function _body_resize()
{
	setScrollInIE();
}

function _body_onunload()
{
	lon();
	
}


var opt_no_frames = false;
var opt_integrated_mode = false;
				function _key_hadler_onkeypress(e)
				{
					var event = e ? e : window.event;
					var target = e ? event.target : event.srcElement;
					var key = event.keyCode;

					if (navigator.appName == "Netscape" &&
						(navigator.platform.indexOf("Mac") == -1 && key == 112 ||
						navigator.platform.indexOf("Mac") > -1 && key == 63236)
					) { OpenHelpWindow(); return false; };

					try {
			if (key == "13") {
				if (target && (target.type == "button" || target.type == "textarea"))
					return true;
				bt = document.getElementById("bid-ok");
				if (navigator.appName == "Netscape")
				{
					if (bt) bt.onclick();
				}
				else
				{
					if (bt)	bt.click();
				}
				return false;}if (key == "27") {
				bt = document.getElementById("bid-cancel");
				if (navigator.appName == "Netscape")
				{
					if (bt) bt.onclick();
				}
				else
				{
					if (bt)	bt.click();
				}
				return false;}
					} catch (e) {
					}
					return true;
				}
				if (document.layers) document.captureEvents(Event.KEYPRESS);
				document.onkeypress = _key_hadler_onkeypress;
			

var activeItem = "dashboard";

function my_logout()
{
	if (confirm("Are you sure you wish to log out?"))
	go_to_top("/logout.php3");
	return false;
}
		
//-->
		</script>
	</head>
	<body onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();" onHelp="OpenHelpWindow(); return false;" id="leftCP" style="height: 100%;">

	<table id="pageLayout" border="0" cellspacing="0" cellpadding="0" style="width: 100%; min-height: 100%; height: 100%;"><tr><td valign="top">
	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH">&nbsp;</td></tr></table>
	<div class="screenBody" id="">
		<form action="/left.php3" method="post" enctype="multipart/form-data" >

		<table id="navArea" cellspacing="0" cellpadding="0" width="100%" border="0" summary="Navigation Items Area"><tr><td>
			<div id="navLayout">
				
				<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navOpened" id="general">

				<tr title="Minimizar/Restaurar">
					<td>
						<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navTitle" onMouseOut="mout(this);" onClick="return opentree ('general');" onMouseOver="mover(this);" onmouseout="mout(this);">
						<tr>
							<td class="titleLeft"><img src="imagens/topleft.gif" border="0" alt=""/></td>
							<td class="titleText" width="100%">Geral</td>
							<td class="titleHandle"><img src="imagens/1x1.gif" width="20" height="1" border="0" alt=""/></td>
							<td class="titleRight"><img src="imagens/topright.gif" border="0" alt=""/></td>

						</tr>
						</table>
					</td>
				</tr><tr>
					<td>
						<div class="tree">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
							<tr>
								<td>

									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="dashboard" class="nodeActive">
									<tr>
										<td class="nodeImage"><a href="#" title="Área de trabalho" onClick="return openScreen('dashboard', 'general.asp');"><img src="imagens/nav_dashboard.gif" width="16" height="16" border="0" alt="Área de trabalho"></a></td>
										<td width="100%"><span class="name"><a href="#" title="Área de trabalho" onClick="return openScreen('dashboard', 'general.asp');">Área de trabalho</a></span></td>
									</tr>
									</table>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="home" class="node">
									<tr>
										<td class="nodeImage"><a href="#" title="Início" onClick="return openScreen('home', 'entrada.asp');"><img src="imagens/nav_home.gif" width="16" height="16" border="0" alt="Início"></a></td>
										<td width="100%"><span class="name"><a href="#" title="Início" onClick="return openScreen('home', 'entrada.asp');" onMouseOver="">Início</a></span></td>
									</tr>
									</table>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="home" class="node">
									<tr>
										<td class="nodeImage"><a href="../index.asp" target="_blank"><img src="imagens/nav_sessions.gif" width="16" height="16" border="0" alt="Início"></a></td>
										<td width="100%"><span class="name"><a href="../index.asp" target="_blank">Abrir meu site</a></span></td>
									</tr>
									</table>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="home" class="node">
									<tr>
										<td class="nodeImage"><img src="imagens/clock.png" alt="Tempo restante da sessão" width="16" height="16" border="0"></td>
										<td width="100%"><span class="name"><span id="clock1"></span><script>setTimeout('getSecs()',1000);</script></span></td>
									</tr>
									</table>
								</td>
							</tr>
							</table>

						</div>
					</td>
				</tr>
				</table>

				<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navClosed" id="system">
				<tr title="Minimizar/Restaurar">
					<td>
						<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navTitle" onMouseOut="mout(this);" onClick="return opentree ('system');" onMouseOver="mover(this);" onmouseout="mout(this);">

						<tr>
							<td class="titleLeft"><img src="imagens/topleft.gif" border="0" alt=""/></td>
							<td class="titleText" width="100%">Sistema</td>
							<td class="titleHandle"><img src="imagens/1x1.gif" width="20" height="1" border="0" alt=""/></td>
							<td class="titleRight"><img src="imagens/topright.gif" border="0" alt=""/></td>
						</tr>
						</table>
					</td>

				</tr><tr>
					<td>
						<div class="tree">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
							<tr>
								<td>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="logout" class="node">
									<tr>
										<td class="nodeImage"><a href="#" onClick="if (confirm(&quot;Deseja sair do sistema?&quot;)) top.location = &quot;vaza.asp&quot;; return false;" title="Desconectar"><img src="imagens/nav_logout.gif" width="16" height="16" border="0" alt="Desconectar"></a></td>
										<td width="100%"><span class="name"><a href="#" onClick="if (confirm(&quot;Deseja sair do sistema?&quot;)) top.location = &quot;vaza.asp&quot;; return false;" title="Desconectar">Desconectar</a></span></td>
									</tr>
									</table>									
<% If Trim(Session("nome")) = "ALEX" Then %>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="logout" class="node">
									<tr>
										<td class="nodeImage"><a href="#" title="Menus" onClick="return openScreen('dashboard', 'menus_all.asp');"><img src="imagens/nav_dashboard.gif" width="16" height="16" border="0" alt="Menus"></a></td>
										<td width="100%"><span class="name"><a href="#" title="Menus" onClick="return openScreen('dashboard', 'menus_all.asp');">Menus</a></span></td>
									</tr>
									</table>
									<!-- <table border="0" cellspacing="0" cellpadding="0" width="100%" id="logout" class="node">
									<tr>
										<td class="nodeImage"><a href="#" title="Modelos" onClick="return openScreen('dashboard', 'modelos_all.asp');"><img src="imagens/nav_dashboard.gif" width="16" height="16" border="0" alt="Menus"></a></td>
										<td width="100%"><span class="name"><a href="#" title="Menus" onClick="return openScreen('dashboard', 'modelos_all.asp');">Modelos</a></span></td>
									</tr>
									</table>
									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="sessions" class="node">
									<tr>
										<td class="nodeImage"><a href="#" title="Sessões" onClick="return openScreen('sessions', '/sessions/sessions.php?context=sessions');" onMouseOver="mouse_move('b_sessions')" onMouseOut="mouse_move()"><img src="imagens/nav_sessions.gif" width="16" height="16" border="0" alt="Sessões"></a></td>
										<td width="100%"><span class="name"><a onClick="return openScreen('sessions', '/sessions/sessions.php?context=sessions');" href="#" title="Sessões" onMouseOver="mouse_move('b_sessions')" onMouseOut="mouse_move()">Dados da Empresa</a></span></td>
									</tr>
									</table> -->
<% End If %>
								</td>
							</tr>
							</table>
						</div>
					</td>
				</tr>

				</table>

				<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navClosed" id="help-support">
				<tr title="Minimizar/Restaurar">
					<td>
						<table border="0" cellspacing="0" cellpadding="0" width="100%" class="navTitle" onMouseOut="mout(this);" onClick="return opentree ('help-support');" onMouseOver="mover(this);" onmouseout="mout(this);">
						<tr>
							<td class="titleLeft"><img src="imagens/topleft.gif" border="0" alt=""/></td>
							<td class="titleText" width="100%">Ajuda e Suporte</td>

							<td class="titleHandle"><img src="imagens/1x1.gif" width="20" height="1" border="0" alt=""/></td>
							<td class="titleRight"><img src="imagens/topright.gif" border="0" alt=""/></td>
						</tr>
						</table>
					</td>
				</tr><tr>
					<td>
						<div class="tree">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">

							<tr>
								<td>

									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="tts" class="node">
									<tr>
										<td class="nodeImage"><a href="http://www.gnove.com.br/atendimento.asp" target="_blank" title="Ajuda e Suporte"><img src="imagens/nav_tts.gif" width="16" height="16" border="0" alt="Ajuda e Suporte"></a></td>
										<td width="100%"><span class="name"><a href="http://www.gnove.com.br/atendimento.asp" target="_blank" title="Ajuda e Suporte">Ajuda e Suporte</a></span></td>
									</tr>
									</table>

									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="help" class="node">
									<tr>
										<td class="nodeImage"><a href="#" title="Ajuda" onClick="return openScreen('home', 'ajuda.asp');" onMouseOver=""><img src="imagens/nav_help.gif" width="16" height="16" border="0" alt="Ajuda"></a></td>
										<td width="100%"><span class="name"><a href="#" title="Ajuda" onClick="return openScreen('home', 'ajuda.asp');" onMouseOver="">Ajuda</a></span></td>
									</tr>
									</table>

<!-- 									<table border="0" cellspacing="0" cellpadding="0" width="100%" id="conhelp" class="node">

									<tr>
										<td width="100%"><div id="contexthelp"><div><span id="contexthelp_text" class="hint"></span></div></div></td>
									</tr>
									</table> -->

								</td>
							</tr>
							</table>
						</div>

					</td>
				</tr>
				</table>
		
			</div>
		</td></tr></table>

	</form>

	</td></tr><tr><td valign="bottom">
	
			<div id="swsoftInfo">
				<div id="poweredBy"><a href="http://www.gnove.net" target="_blank">Powered by GNove WebStudio</a></div>
				<div id="copyright"><a href="http://www.gnove.net" target="_blank">&copy; Copyright 1999-2007, GNove.<br/>Todos os direitos reservados</a></div>
			</div>
	</td></tr></table>

	</div>
	</body>
</html>
