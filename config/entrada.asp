<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>
<title>Gnove</title>
<meta name="robots" content="none">
<script language="Javascript1.2" src="suport/common.js"></script>

<link rel="stylesheet" type="text/css" href="suport/layout2.css">
<link rel="stylesheet" type="text/css" href="suport/general.css">
<link rel="stylesheet" type="text/nonsense" href="suport/misc.css">
<link rel="stylesheet" type="text/css" href="suport/custom.css">
<link rel="stylesheet" type="text/css" href="suport/desktop.css">
</head>

<script type="text/javascript">
<!--

function _body_onload()
{
	setScrollInIE();
	turnAutocompleteOff();
	loff();
	var std_context = 'client.dashboard';
	SetHelpPrefix('cl/'); SetContext(std_context, 'My Desktop.');
	
	
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
			

function findParentDBox (element) {
  while (element) {
    if (hasClass(element,"dBox")) return element;
    element = element.parentNode;
  }
}

function switchDBox(element) {
	var dBox = findParentDBox (element);
	if (dBox) {
		if (hasClass(dBox, "show")) { 		
			removeClass(dBox, "show");
	    		addClass(dBox, "hide");
			SetPermanentCookie(dBox.id, "0");
  		} else {
	    		removeClass(dBox, "hide");
		    	addClass(dBox, "show");
			SetPermanentCookie(dBox.id, "1");
  		}
	}
}

function findTabs(tab)
{
	return tab.parentNode;
}
function getTabId(tab)
{
	return tab.getElementsByTagName("a")[0].id;
}
function showTab(o)
{
	var current_tab = o.parentNode;
	var current_tabs = current_tab.parentNode.getElementsByTagName("li");
	for (var i = 0; i < current_tabs.length; i++) {
		current_tabs[i].id="";
		document.getElementById(getTabId(current_tabs[i]) + "/content").style.display="none";
	}
	current_tab.id = "current";
	document.getElementById(getTabId(current_tab) + "/content").style.display="block";
	SetPermanentCookie(findTabs(current_tab).id, getTabId(current_tab));
	return false;
}
//-->
		</script>
	</head>
	<body onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();" onHelp="OpenHelpWindow(); return false;" id="mainCP" class=" MainFrameBody">
	
	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index:10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img src="imagens/loading.gif" alt="loading.gif" border="0"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	
<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar">&nbsp;</div>
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td>Início > <a href="general.asp">Área de Trabalho</a></td>
			<td class="uplevel">
<div class="commonButton" id="bid-desktop-customize" title="Customize Desktop"><span id="spanid-desktop-customize">Customize Desktop</span></div>
			</td>
		</tr>
		</table>
	</div>

	<div class="screenSubTitle"></div>
	<div id="screenTabs">
		<div id="tabs">
			
		</div>
	</div>
	<div class="" id="dashboard">
	<div>
	<div id="dBox-news_articles" class="dBox show"><div class="dBoxHeaderLayout"><table width="100%" cellspacing="0" cellpadding="0" border="0" onclick="switchDBox(this);return false;" class="dBoxHeaderArea"><tr title="Minimizar/Restaurar"><td class="main">GNove Notícias</td><td class="misc"><div class="commonButton" id="bid-show-dBox"><button type="button" name="bname_show-dBox" id="buttonid-show-dBox">Restaurar</button><span id="spanid-show-dBox">Restaurar</span></div><div class="commonButton" id="bid-hide-dBox"><button
type="button" name="bname_hide-dBox" id="buttonid-hide-dBox">Minimizar</button><span id="spanid-hide-dBox">Minimizar</span></div></td></tr></table></div>
<div class="dBoxContent">
<iframe src="http://www.gnove.com.br/noticias.asp" name="noticias" id="noticias" width="90%" height="300" frameborder="0"></iframe>
<div class="wrapper"></div><div class="wrapper"></div></div></div></div>

	</div>
	</td></tr></table>

	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());}}function ExpandLeftFrame(f) {var i=document.getElementById("imgLeftFrameSwitcher");    if(i){        i.src="imagens/bar_"+(f?"close":"open")+".gif"; top.FoldFrame(f);}}function SetExpandLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(top.GetBarExpanded());}}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>
	<div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>
</body>

</html>