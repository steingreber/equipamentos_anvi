<%
If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	
	<head>
		<link rel="shortcut icon" href="/favicon.ico">
		<title>Gnove</title>
<script language="Javascript1.2" src="suport/common.js"></script>
<script language="Javascript1.2" src="suport/leftframe.js"></script>
		
<link rel="stylesheet" type="text/css" href="suport/general.css">
<link rel="stylesheet" type="text/css" href="suport/custommain.css">
<link rel="stylesheet" type="text/css" href="suport/layoutMain.css">
<link rel="stylesheet" type="text/css" href="suport/desktopmain.css">
<link rel="stylesheet" type="text/nonsense" href="suport/misc.css">


		<script type="text/javascript">
<!--

InitTips('/javascript/conhelp.js.php','plesk-base'+'');

function _body_onload()
{
	setScrollInIE();
	turnAutocompleteOff();
	loff();
	var std_context = 'cl_home';
	SetHelpPrefix('cl/'); SetContext(std_context, '');
	setActiveButtonByName("domains");
	
	try {
		if (top && top.leftFrame) {
			SetExpandLeftFrame();
		}
	} catch (e) { }
}

function _body_resize()
{
	setScrollInIE();
	lresize();
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
			if (target.name == "filter") {if (key == "13") {DomainsListFilter(document.forms[0]);return false;}}if (key == "13") {
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
			


//-->
		</script>


	</head>
	<body onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();" onHelp="OpenHelpWindow(); return false;" id="mainCP" class="MainFrameBody">

	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar">&nbsp;</div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>

			<td><img src="imagens/ok.gif" width="16" height="16" alt="ok.gif" title="">&nbsp;<span class="name"><%= Session("nome") %></span> - Área de Trabalho</td>
			<td class="uplevel">
				
				
			</td>
		</tr>
		</table>
	</div>
	<div class="screenSubTitle"></div>
	<div id="screenTabs">

		<div id="tabs">

		</div>
	</div>
	<div class="screenBody" id="screenClient">

<input type="text" name="iesingletextinputworkaround" disabled style="display: none">
	<div class="toolsArea">

<fieldset>

<legend>Menus</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<!--#include file="menu_h.asp"-->
</td></tr></table>

<hr>
<% If Request("mes") = "1" Then %>
<table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td align="center">
<img src="imagens/icons/ic_erro.gif" alt="" border="0" align="absmiddle">&nbsp;<h3><%= Trim(Session("nome")) %> !<font color="#FF0000"><br>Você não tem permissão para acessar este módulo!</font></h2>
</td></tr></table></fieldset>
<% End If %>
</div>

<div class="toolsArea">
<!-- 	<fieldset>
		<legend>Informações</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
		
		<p class="resourceUsage">10 domínios, 10 domínios ativos, 64.0 MB espaço em disco usado, 0 B trafégo usado</p>
		
	</td></tr></table></fieldset> -->
</div>

<div class="listArea">

<fieldset>

<legend>Informações</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>


		<table width="100%" cellspacing="0" class="buttons">
			<tr>
				<td class="main">
<%
 set iCounter = objConect.execute("Select * from tbcounter Where ID=1")
%>
				O site teve # <strong><%= iCounter(1) %></strong> # visitas desde segunda-feira, 26 de maio de 2008.
<%
 iCounter.Close
%>

				</td></tr></table>
		
		<div>
		</div>
		<div class="paging">

		</div>

<!--include file="clientes.asp"-->

	</div>
	</td></tr></table>
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());}}function ExpandLeftFrame(f) {var i=document.getElementById("imgLeftFrameSwitcher");    if(i){i.src="imagens/bar_"+(f?"close":"open")+".gif"; top.FoldFrame(f);}}function SetExpandLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(top.GetBarExpanded());}}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>
	<div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>

	</body>
</html>
