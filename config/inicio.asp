<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
%>
<!--#include file="_cnx.asp"-->
<%
iMod = "Empresa"

sNot = 1
sCt  = request("ct")
sSel = "Select * From EMPRESA Where A00ID = 2"
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sSel,objConect,3,3
'-----------------------------------------------
va_A01TEXTO   = Trim(objRS("A01TEXTO"))
va_A02IMAGEM  = Trim(objRS("A02IMAGEM"))
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
function go2url() {
window.location = "general.asp";
}

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
if (theForm.cp_A01TEXTO && !EW_hasValue(theForm.cp_A01TEXTO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A01TEXTO, "TEXT", "Informe um valor para o campo Texto da empresa"))
            return false;
    }
  return true;
}
//-->
		</script>


	</head>
	<body class="MainFrameBody" id="mainCP" onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();">

	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> <!--  &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>.asp');"><%= iMod %>urações</a>  -->&gt; Editar/Ver</div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td><img src="imagens/icons/ic_inicio.gif">&nbsp;<% If sCt = "1" Then %><font color="#FF0000">Dados alterados com sucesso!</font><% Else %>&nbsp;<span class="name"><%= Session("nome") %></span> - Página Inicial/Editar<% End If %></td>
			<td class="uplevel">
				<div class="commonButton"><!-- <span id="spanid-shortcut-add"><a href="<%= LCase(iMod) %>_options.asp?opt=3&id=<%= sNot %>" onClick="return confirm_delete();"><img src="imagens/btn_remove-selected_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Excluir este registro</span></a> --></div>
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
	
		<form action="inicio_options.asp?opt=2" method="post" enctype="multipart/form-data" name="cad1" id="cad1" onSubmit="return Validator(this);">
	<div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Informações sobre a empresa</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table cellspacing="0" width="100%">
<tr>
	<td colspan="2" align="center"><span class="required"><strong>Atenção!&nbsp;&nbsp;&nbsp;Para colocar um texto no quadro abaixo não o copie diretamente do WORD,<br>cole primeiro no Bloco de notas e depois copiar e colar aqui.</strong></span></td>
</tr>
<tr>
	<td colspan="2">
<%
function freeRTE_Preload(content)
	content = trim(content)
	content = replace(content, chr(10), " ")
	content = replace(content, chr(13), " ")
	content = replace(content, chr(145), chr(39))
	content = replace(content, chr(146), chr(39))
	freeRTE_Preload = content
End Function
content = freeRTE_Preload(va_A01TEXTO)
%>
<script src="../js/richtext.js" type="text/javascript" language="javascript"></script>
<script src="../js/config.js" type="text/javascript" language="javascript"></script>
<script src="../js/pt_br.js" type="text/javascript" language="javascript"></script>
<script>rteFormName = "cp_A01TEXTO";</script>
<script>initRTE('<%= content %>', 'example.css');</script>
	</td>
</tr>
<tr>
	<td colspan="2"><span class="required"><strong>Atenção!&nbsp;&nbsp;&nbsp;A imagem dever ter no máximo 500 pixel de lagura.<br>Caso tenha dúvidas de como fazer isto <a href="http://www.gnove.com.br/duvidas_view.asp?duv=10" target="_blank">clique aqui!</a></strong></span></td>
</tr>
<tr>
	<td class="name">Imagem&nbsp;<span class="required">*</span></td>
	<td><input type="file" name="cp_A02IMAGEM" size="50"></td>
</tr>
<tr>
	<td colspan="2" align="center"><p align="center"><img src="imgTopo/<%= va_A02IMAGEM %>" alt="" width="132" height="115" border="0"></p></td>
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

			<td class="misc" width="0"><nobr><div class="commonButton" id="bid-ok" title="OK"><button name="bname_ok" type="submit" style="background: url(imagens/btn_ok_bg.gif);">OK</button><span id="spanid-ok">OK</span></div><div class="commonButton" id="bid-cancel"><button name="bname_cancel" type="button" style="background: url(imagens/btn_cancel_bg.gif);" onClick="go2url();">Cancelar</button><span id="spanid-cancel">Cancelar</span></div></nobr></td>
		</tr></table>

	</div>

</form>

	</div>
	</td></tr></table>
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());    }}function ExpandLeftFrame(f) {    var i=document.getElementById("imgLeftFrameSwitcher");    if(i){        i.src="imagens/bar_"+(f?"close":"open")+".gif";        top.FoldFrame(f);    }}function SetExpandLeftFrame(){    if(typeof(top.GetBarExpanded)!="undefined"){        ExpandLeftFrame(top.GetBarExpanded());    }}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img alt="bar_close.gif" title="Esconder/Mostrar navegação" width="6" height="60" id="imgLeftFrameSwitcher" onClick="SwitchLeftFrame();" src="bar_close.gif"></div>
	</body>
</html>
