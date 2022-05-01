<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--#include file="_cnx.asp"-->
<%
iMod = "Permissoes"
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
if (theForm.cp_a05cadastro && !EW_hasValue(theForm.cp_a05cadastro, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a05cadastro, "TEXT", "Informe um valor para o campo CADASTRO"))
            return false;
    }
  if (theForm.cp_a01nome && !EW_hasValue(theForm.cp_a01nome, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a01nome, "TEXT", "Informe um valor para o campo NOME"))
            return false;
    }
if (theForm.cp_a02email && !EW_hasValue(theForm.cp_a02email, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a02email, "TEXT", "Informe um valor para o campo EMAIL"))
            return false;
    }
if (theForm.cp_a03senha && !EW_hasValue(theForm.cp_a03senha, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a03senha, "TEXT", "Informe um valor para o campo SENHA"))
            return false;
    }
if (theForm.cp_a04ativo && !EW_hasValue(theForm.cp_a04ativo, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a04ativo, "TEXT", "Informe um valor para o campo ATIVO"))
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
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', 'permissoes_all.asp');">Permissões</a> &gt; Novo Usuário</div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td><img src="imagens/icons/ic_<%= iMod %>.gif">&nbsp;<span class="name"><%= Session("nome") %></span> - Permissões/Novo</td>
			<td class="uplevel">
				<div class="commonButton"><span id="spanid-shortcut-add"><a href="#" onClick="return openScreen('dashboard1', '<%= iMod %>_all.asp');"><img src="imagens/btn_uplevel_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Voltar</a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;</font></div>
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
	
		<form action="permissoes_options.asp?opt=1" method="post" name="cad1" id="cad1" onSubmit="return Validator(this);">

	<div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Dados de cadastro</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table width="100%" border="0" cellspacing="0" class="formFields">
<tr>
	<td class="name">Data de cadastro</td>
	<td><input type="text" name="cp_a05cadastro" value="<%= date %>" size="10" maxlength="10" readonly onKeyPress="AjustarData(this)"></td>
</tr>
<tr>
	<td class="name">Nome&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_a01nome" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Email&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_a02email" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Senha&nbsp;<span class="required">*</span></td>
	<td><input type="password" name="cp_a03senha" size="20" maxlength="20"></td>
</tr>
<tr>
	<td class="name">Usuário ativo?&nbsp;<span class="required">*</span></td>
	<td>
		<input type="radio" name="cp_a04ativo" value="1" checked><span class="fontTD">SIM</span>&nbsp;
        <input type="radio" name="cp_a04ativo" value="0"><span class="fontTD">NÃO</span>
	</td>
</tr>
<tr>
	<td colspan="2" bgcolor="#E5E5E5"><strong>Selecione que este usuário pode acessar no sistema.</strong></td>
</tr>
<!--#include file="_cnx.asp"-->
<%
	sqls = "Select * From MENUS Where A05PERMISSOES=1 Order By A00ID"
	Set objRs = objConect.Execute(sqls)
	Do While Not objRs.EOF
%>
<tr>
	<td class="name"><%= Trim(UCase(objRs(1))) %></td>
	<td><input type="checkbox" name="cp_permissoes<%= objRs(0) %>"></td>
</tr>
<%
	objRs.MoveNext
	Loop
	objRs.Close
%>
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
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());    }}function ExpandLeftFrame(f) {    var i=document.getElementById("imgLeftFrameSwitcher");    if(i){        i.src="imagens/bar_"+(f?"close":"open")+".gif";        top.FoldFrame(f);    }}function SetExpandLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){        ExpandLeftFrame(top.GetBarExpanded());    }}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img alt="bar_close.gif" title="Esconder/Mostrar navegação" width="6" height="60" id="imgLeftFrameSwitcher" onClick="SwitchLeftFrame();" src="imagens/bar_close.gif"></div>
	</body>
</html>
