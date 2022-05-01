<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--#include file="_cnx.asp"-->
<%
iMod = "Permissoes"

sNot = request("id")
sCt  = request("ct")
sSel = "Select * From PERMISSOES Where a00id =" & sNot
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sSel,objConect,3,3
'-----------------------------------------------
va_a01nome       = Trim(objRS("a01nome"))
va_a02email      = Trim(objRS("a02email"))
va_a03senha      = Trim(objRS("a03senha"))
va_a04ativo      = Trim(objRS("a04ativo"))
va_a05cadastro   = Trim(objRS("a05cadastro"))
va_a06permissoes = Trim(objRS("a06permissoes"))
va_a07ultimo     = Trim(objRS("a07ultimo"))
va_a08acessos    = Trim(objRS("a08acessos"))
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
  return true;
}
//-->
		</script>


	</head>
	<body class=" MainFrameBody" id="mainCP" onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();">

	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_all.asp');">Premissões</a> &gt; Editar/Ver <%= iMod %></div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td><img src="imagens/icons/ic_<%= iMod %>.gif">&nbsp;<% If sCt = "1" Then %><font color="#FF0000">Dados alterados com sucesso!</font><% Else %><span class="name"><%= Session("nome") %></span> - <%= iMod %>/Editar<% End If %></td>
			<td class="uplevel">
				<div class="commonButton"><span id="spanid-shortcut-add"><a href="#" onClick="return openScreen('dashboard1', '<%= iMod %>_all.asp');"><img src="imagens/btn_uplevel_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Voltar</a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;</font><a href="<%= LCase(iMod) %>_options.asp?opt=3&id=<%= sNot %>" onClick="return confirm_delete();"><img src="imagens/btn_remove-selected_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Excluir este registro</span></a></div>
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
	
		<form action="<%= LCase(iMod) %>_options.asp?opt=2&id=<%= sNot %>" method="post" name="cad1" id="cad1" onSubmit="return Validator(this);">

	<div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Informações gerais</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table width="100%" border="0" cellspacing="0" class="formFields">
<tr>
	<td class="name">Data de cadastro</td>
	<td><input type="text" name="cp_a05cadastro" value='<% = va_a05cadastro %>' size="10" maxlength="10" readonly onKeyPress="AjustarData(this)"></td>
</tr>
<tr>
	<td class="name">Nome&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_a01nome" value="<% = va_a01nome %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Email&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_a02email" value="<% = va_a02email %>" size="40" maxlength="40"></td>
</tr>
<tr>
	<td class="name">Senha&nbsp;<span class="required">*</span></td>
	<td><input type="password" name="cp_a03senha" value="<% = va_a03senha %>" size="20" maxlength="20"></td>
</tr>
<tr>
	<td class="name">Usuário ativo?&nbsp;<span class="required">*</span></td>
	<td>
		<input type="radio" name="cp_a04ativo" value="1"<% If va_a04ativo = 1 Then %> checked<% End If %>><span class="fontTD">SIM</span>&nbsp;
        <input type="radio" name="cp_a04ativo" value="0"<% If va_a04ativo = 0 Then %> checked<% End If %>><span class="fontTD">NÃO</span>
	</td>
</tr>
<tr>
	<td class="name">Último acesso</td>
	<td><input type="text" name="cp_a07ultimo" value="<% = va_a07ultimo %>" size="20" maxlength="20" readonly></td>
</tr>
<tr>
	<td class="name">Nº de acessos</td>
	<td><input type="text" name="cp_a08acessos" value="<% = va_a08acessos %>" size="6" maxlength="6"></td>
</tr>
<tr>
	<td colspan="2" bgcolor="#E5E5E5"><strong>Selecione que este usuário pode acessar no sistema.</strong></td>
</tr>
<%
	Dim Contador
	Contador = 1
	sqls = "Select * From MENUS Where A05PERMISSOES=1 Order By A00ID"
	Set objRs = objConect.Execute(sqls)
	Do While Not objRs.EOF
	iPermissoes = Mid(va_a06permissoes,Contador,1)
	If iPermissoes = "0" Then
		iStilo = "style='background-color: Red;'"
	Else
		iStilo = "checked"
	End If
%>
<tr>
	<td class="name"><% If iPermissoes = "0" Then %><font color="#FF0000"><% End If %><%= Trim(UCase(objRs(1))) %></font></td>
	<td><input type="checkbox" name="cp_permissoes<%= objRs(0) %>" <%= iStilo %>></td>
</tr>
<%
	Contador = Contador + 1
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
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());    }}function ExpandLeftFrame(f) {    var i=document.getElementById("imgLeftFrameSwitcher");    if(i){        i.src="imagens/bar_"+(f?"close":"open")+".gif";        top.FoldFrame(f);    }}function SetExpandLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){        ExpandLeftFrame(top.GetBarExpanded());    }}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img alt="bar_close.gif" title="Esconder/Mostrar navegação" width="6" height="60" id="imgLeftFrameSwitcher" onClick="SwitchLeftFrame();" src="/skins/plesk.blue/images/bar_close.gif"></div>
	</body>
</html>
