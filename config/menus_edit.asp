<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--#include file="_cnx.asp"-->
<%
iMod = "Menus"

sNot = request("id")
sCt  = request("ct")
sSel = "Select * From "&iMod&" Where A00ID =" & sNot
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sSel,objConect,3,3
'-----------------------------------------------
va_A01MENU                 = Trim(objRS("A01MENU"))
va_A02LINK                 = Trim(objRS("A02LINK"))
va_A03ATIVO                = Trim(objRS("A03ATIVO"))
va_A05PERMISSOES           = Trim(objRS("A05PERMISSOES"))
'-----------------------------------------------
%>
<html>
	
	<head>
		<link rel="shortcut icon" href="/favicon.ico">
		<title>GNove</title>

<script language="Javascript1.2" src="suport/common.js"></script>
<script language="Javascript1.2" src="suport/leftframe.js"></script>
<script language="Javascript1.2" src="suport/formatos.js"></script>
<script type="text/javascript" language="JavaScript1.2" src="suport/apytabmenu.js"></script>
<script language="Javascript1.2" src="suport/suport.js"></script>
<script language="JavaScript" src="suport/validator.js"></script>

<link rel="stylesheet" type="text/css" href="suport/general.css">
<link rel="stylesheet" type="text/css" href="suport/custommain.css">
<link rel="stylesheet" type="text/css" href="suport/layoutmain.css">
<link rel="stylesheet" type="text/css" href="suport/desktopmain.css">
<link rel="stylesheet" type="text/nonsense" href="suport/misc.css">


		<script type="text/javascript">
function _body_onload()
{
	setScrollInIE();
	turnAutocompleteOff();
	loff();
	var std_context = 'cl_ed';
	SetHelpPrefix('cl/'); SetContext(std_context, '');
	
	
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
			
function Validator(theForm)
{
if (theForm.cp_A01MENU && !EW_hasValue(theForm.cp_A01MENU, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A01MENU, "TEXT", "Informe um valor para o campo MENU"))
            return false;
    }
if (theForm.cp_A02LINK && !EW_hasValue(theForm.cp_A02LINK, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A02LINK, "TEXT", "Informe um valor para o campo LINK"))
            return false;
    }
  if (theForm.cp_A03ATIVO && !EW_hasValue(theForm.cp_A03ATIVO, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_A03ATIVO, "RADIO", "Selecione um valor para ATIVO!"))
            return false;
    }
  if (theForm.cp_A05PERMISSOES && !EW_hasValue(theForm.cp_A05PERMISSOES, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_A05PERMISSOES, "RADIO", "Selecione um valor para PERMISSOES!"))
            return false;
    }
  return true;
}
//-->
		</script>


	</head>
	<body class=" MainFrameBody" id="mainCP" onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();">

	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_all.asp');"><%= iMod %></a> &gt; Editar/Ver <%= iMod %></div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td><% If sCt = "1" Then %><font color="#FF0000">Dados alterados com sucesso!</font><% Else %><img src="imagens/ok.gif">&nbsp;<span class="name"><%= Session("nome") %></span> - <%= iMod %>/Editar<% End If %></td>
			<td class="uplevel">
				<div class="commonButton"><span id="spanid-shortcut-add"><a href="<%= LCase(iMod) %>_options.asp?opt=3&id=<%= sNot %>" onClick="return confirm_delete();"><img src="imagens/btn_remove-selected_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Excluir este registro</span></a></div>
			</td>
		</tr>
		</table>
	</div>
	<div class="screenSubTitle"></div>
	<div id="screenTabs">
		<div id="tabs">
		<!-- <script type="text/javascript" language="JavaScript1.2" src="suport/data_os.js"></script> -->
		</div>
	</div>

	<div class="screenBody" id="">
	
		<form action="<%= iMod %>_options.asp?opt=2&id=<%= sNot %>" method="post" enctype="multipart/form-data" name="cad1" id="cad1" onSubmit="return Validator(this);">

	<div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Menus</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table class="formFields" cellspacing="0" width="100%">
<tr>
	<td class="name">Menu&nbsp;<span class="required">*</span></td>
	<td><input type="text" value='<% = va_A01MENU %>' name="cp_A01MENU" size="50" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Link&nbsp;<span class="required">*</span></td>
	<td><input type="text"value='<% = va_A02LINK %>' name="cp_A02LINK" size="50" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Ativo&nbsp;<span class="required">*</span></td>
	<td>
         <input type="radio" name="cp_A03ATIVO" value="1"<% If va_A03ATIVO = "1" Then %> checked<% End If %>><span class="fontTD">SIM</span>&nbsp;
         <input type="radio" name="cp_A03ATIVO" value="0"<% If va_A03ATIVO = "0" Then %> checked<% End If %>><span class="fontTD">NÃO</span>
	</td>
</tr>
<tr>
	<td class="name">Permissoes&nbsp;<span class="required">*</span></td>
	<td>
         <input type="radio" name="cp_A05PERMISSOES" value="1"<% If va_A05PERMISSOES = "1" Then %> checked<% End If %>><span class="fontTD">SIM</span>&nbsp;
         <input type="radio" name="cp_A05PERMISSOES" value="0"<% If va_A05PERMISSOES = "0" Then %> checked<% End If %>><span class="fontTD">NÃO</span>
	</td>
</tr>
</table>
</td></tr></table>
</fieldset>
</div>
	</div>
	<div class="formArea">
		<table width="100%" class="buttons" cellspacing="0" cellpadding="0"><tr>
			<td class="main" width="0"></td>
			<td class="footnote" id="footnote"><span class="required">*</span> Campos requeridos</td>

			<td class="misc" width="0"><nobr><div class="commonButton" id="bid-ok" title="OK"><button name="bname_ok" type="submit" style="background: url(imagens/btn_ok_bg.gif);">OK</button><span id="spanid-ok">OK</span></div><div class="commonButton" id="bid-cancel"><button name="bname_cancel" type="button" style="background: url(imagens/btn_cancel_bg.gif);" onClick="javascript:history.go(-1);">Cancelar</button><span id="spanid-cancel">Cancelar</span></div></nobr></td>
		</tr></table>

	</div>

</form>

	</div>
	</td></tr></table>
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());    }}function ExpandLeftFrame(f) {    var i=document.getElementById("imgLeftFrameSwitcher");    if(i){        i.src="imagens/bar_"+(f?"close":"open")+".gif";        top.FoldFrame(f);    }}function SetExpandLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){        ExpandLeftFrame(top.GetBarExpanded());    }}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img alt="bar_close.gif" title="Esconder/Mostrar navegação" width="6" height="60" id="imgLeftFrameSwitcher" onClick="SwitchLeftFrame();" src="/skins/plesk.blue/images/bar_close.gif"></div>
	</body>
</html>
