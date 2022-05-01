<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
%>
<!--#include file="_cnx.asp"-->
<%
iPer = Int(Trim(Request("mu")))
acesso(iPer)
iMod = "Config"

sNot = 1
sCt  = request("ct")
sSel = "Select * From CONFIG Where A00ID =1"
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sSel,objConect,3,3
'-----------------------------------------------
va_A08NOME                 = Trim(objRS("A08NOME"))
va_A21EMPRESA              = Trim(objRS("A21EMPRESA"))
va_A03EMAIL                = Trim(objRS("A03EMAIL"))
va_A07SENHA                = Trim(objRS("A07SENHA"))
va_A15ENDRECO              = Trim(objRS("A15ENDRECO"))
va_A16CIDADE               = Trim(objRS("A16CIDADE"))
va_A18CEP                  = Trim(objRS("A18CEP"))
va_A17ESTADO               = Trim(objRS("A17ESTADO"))
va_A19FONE                 = Trim(objRS("A19FONE"))
va_A20CELULAR              = Trim(objRS("A20CELULAR"))
va_A02TITULO               = Trim(objRS("A02TITULO"))
'va_A05MODELO               = Trim(objRS("A05MODELO"))
'va_A04COR_FONTE_SITE       = Trim(objRS("A04COR_FONTE_SITE"))
va_A09DESCRICAO            = Trim(objRS("A09DESCRICAO"))
va_A10PALAVRAS             = Trim(objRS("A10PALAVRAS"))
'va_A12TIPO_SITE            = Trim(objRS("A12TIPO_SITE"))
va_A13ACESSOS              = Trim(objRS("A13ACESSOS"))
va_A14ULTIMO               = Trim(objRS("A14ULTIMO"))
'va_A11TIPO_TOPO            = Trim(objRS("A11TIPO_TOPO"))
'va_A01TOPOIMG              = Trim(objRS("A01TOPOIMG"))
'va_A22INFORMATIVO          = Trim(objRS("A22INFORMATIVO"))
'va_A23ENQUETE              = Trim(objRS("A23ENQUETE"))
'va_A24DATA                 = Trim(objRS("A24DATA"))
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
<script language="JavaScript" src="picker.js"></script>

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
if (theForm.cp_A08NOME && !EW_hasValue(theForm.cp_A08NOME, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A08NOME, "TEXT", "Informe um valor para o campo SEU NOME"))
            return false;
    }
if (theForm.cp_A21EMPRESA && !EW_hasValue(theForm.cp_A21EMPRESA, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A21EMPRESA, "TEXT", "Informe um valor para o campo NOME DA EMPRESA"))
            return false;
    }
if (theForm.cp_A03EMAIL && !EW_hasValue(theForm.cp_A03EMAIL, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A03EMAIL, "TEXT", "Informe um valor para o campo EMAIL"))
            return false;
    }
if (theForm.cp_A15ENDRECO && !EW_hasValue(theForm.cp_A15ENDRECO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A15ENDRECO, "TEXT", "Informe um valor para o campo ENDRECO"))
            return false;
    }
if (theForm.cp_A16CIDADE && !EW_hasValue(theForm.cp_A16CIDADE, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A16CIDADE, "TEXT", "Informe um valor para o campo CIDADE"))
            return false;
    }
if (theForm.cp_A18CEP && !EW_hasValue(theForm.cp_A18CEP, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A18CEP, "TEXT", "Informe um valor para o campo CEP"))
            return false;
    }
if (theForm.cp_A17ESTADO && !EW_hasValue(theForm.cp_A17ESTADO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A17ESTADO, "TEXT", "Informe um valor para o campo ESTADO"))
            return false;
    }
if (theForm.cp_A19FONE && !EW_hasValue(theForm.cp_A19FONE, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A19FONE, "TEXT", "Informe um valor para o campo TELEFONE"))
            return false;
    }
if (theForm.cp_A20CELULAR && !EW_hasValue(theForm.cp_A20CELULAR, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A20CELULAR, "TEXT", "Informe um valor para o campo CELULAR"))
            return false;
    }
if (theForm.cp_A02TITULO && !EW_hasValue(theForm.cp_A02TITULO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A02TITULO, "TEXT", "Informe um valor para o campo TITULO DO SITE"))
            return false;
    }
if (theForm.cp_A09DESCRICAO && !EW_hasValue(theForm.cp_A09DESCRICAO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A09DESCRICAO, "TEXT", "Informe um valor para o campo DESCRICAO DO SITE"))
            return false;
    }
if (theForm.cp_A10PALAVRAS && !EW_hasValue(theForm.cp_A10PALAVRAS, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A10PALAVRAS, "TEXT", "Informe um valor para o campo PALAVRAS CHAVES"))
            return false;
    }
if (theForm.cp_A13ACESSOS && !EW_hasValue(theForm.cp_A13ACESSOS, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A13ACESSOS, "TEXT", "Informe um valor para o campo NUMERO DE ACESSOS"))
            return false;
    }
if (theForm.cp_A14ULTIMO && !EW_hasValue(theForm.cp_A14ULTIMO, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_A14ULTIMO, "TEXT", "Informe um valor para o campo ULTIMO ACESSO"))
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
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> <!--  &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>.asp');"><%= iMod %>urações</a>  -->&gt; Editar/Ver <%= iMod %>urações</div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>
			<td><img src="imagens/icons/ic_<%= iMod %>.gif">&nbsp;<% If sCt = "1" Then %><font color="#FF0000">Dados alterados com sucesso!</font><% Else %><span class="name"><%= Session("nome") %></span> - <%= iMod %>urações/Editar<% End If %></td>
			<td class="uplevel">
				<div class="commonButton"><span id="spanid-shortcut-add"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');"><img src="imagens/btn_uplevel_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Voltar</a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;</font></div>
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
	
		<form action="<%= iMod %>_options.asp" method="post" enctype="multipart/form-data" name="cad1" id="cad1" onSubmit="return Validator(this);">
       <INPUT type="hidden" name="hcp_A01TOPOIMG" value="<%=va_A01TOPOIMG%>">
<% If Session("nome") <> "GNove" Then %>
	<input type="hidden" name="cp_A12TIPO_SITE" value="<%= va_A12TIPO_SITE %>">
	<input type="hidden" name="cp_A22INFORMATIVO" value="<%= va_A22INFORMATIVO %>">
	<input type="hidden" name="cp_A23ENQUETE" value="<%= va_A23ENQUETE %>">
<% End If %>
	<div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Menus</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table class="formFields" cellspacing="0" width="100%">
<tr>
	<td class="name">Seu Nome&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A08NOME" value="<% = va_A08NOME %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Nome da empresa&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A21EMPRESA" value="<% = va_A21EMPRESA %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Seu email&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A03EMAIL" value="<% = va_A03EMAIL %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Endereço&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A15ENDRECO" value="<% = va_A15ENDRECO %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Cidade&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A16CIDADE" value="<% = va_A16CIDADE %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">CEP&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A18CEP" value="<% = va_A18CEP %>" size="10" maxlength="10" onKeyPress="AjustarCep(this)"></td>
</tr>
<tr>
	<td class="name">Estado&nbsp;<span class="required">*</span></td>
	<td>
	<select name="cp_A17ESTADO">
		<option>--</option>
		<option value="AC" <% If va_A17ESTADO = "AC" Then %>selected<% End If %>>AC</option>
		<option value="AL" <% If va_A17ESTADO = "AL" Then %>selected<% End If %>>AL</option>
		<option value="AP" <% If va_A17ESTADO = "AP" Then %>selected<% End If %>>AP</option>
		<option value="AM" <% If va_A17ESTADO = "AM" Then %>selected<% End If %>>AM</option>
		<option value="BA" <% If va_A17ESTADO = "BA" Then %>selected<% End If %>>BA</option>
		<option value="CE" <% If va_A17ESTADO = "CE" Then %>selected<% End If %>>CE</option>
		<option value="DF" <% If va_A17ESTADO = "DF" Then %>selected<% End If %>>DF</option>
		<option value="ES" <% If va_A17ESTADO = "ES" Then %>selected<% End If %>>ES</option>
		<option value="GO" <% If va_A17ESTADO = "GO" Then %>selected<% End If %>>GO</option>
		<option value="MA" <% If va_A17ESTADO = "MA" Then %>selected<% End If %>>MA</option>
		<option value="MT" <% If va_A17ESTADO = "MT" Then %>selected<% End If %>>MT</option>
		<option value="MS" <% If va_A17ESTADO = "MS" Then %>selected<% End If %>>MS</option>
		<option value="MG" <% If va_A17ESTADO = "MG" Then %>selected<% End If %>>MG</option>
		<option value="PA" <% If va_A17ESTADO = "PA" Then %>selected<% End If %>>PA</option>
		<option value="PB" <% If va_A17ESTADO = "PB" Then %>selected<% End If %>>PB</option>
		<option value="PR" <% If va_A17ESTADO = "PR" Then %>selected<% End If %>>PR</option>
		<option value="PE" <% If va_A17ESTADO = "PE" Then %>selected<% End If %>>PE</option>
		<option value="PI" <% If va_A17ESTADO = "PI" Then %>selected<% End If %>>PI</option>
		<option value="RJ" <% If va_A17ESTADO = "RJ" Then %>selected<% End If %>>RJ</option>
		<option value="RN" <% If va_A17ESTADO = "RN" Then %>selected<% End If %>>RN</option>
		<option value="RS" <% If va_A17ESTADO = "RS" Then %>selected<% End If %>>RS</option>
		<option value="RO" <% If va_A17ESTADO = "RO" Then %>selected<% End If %>>RO</option>
		<option value="RR" <% If va_A17ESTADO = "RR" Then %>selected<% End If %>>RR</option>
		<option value="SC" <% If va_A17ESTADO = "SC" Then %>selected<% End If %>>SC</option>
		<option value="SP" <% If va_A17ESTADO = "SP" Then %>selected<% End If %>>SP</option>
		<option value="SE" <% If va_A17ESTADO = "SE" Then %>selected<% End If %>>SE</option>
		<option value="TO" <% If va_A17ESTADO = "TO" Then %>selected<% End If %>>TO</option>
	</select>
	</td>
</tr>
<tr>
	<td class="name">Telefone&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A19FONE" value="<% = va_A19FONE %>" size="14" maxlength="14" onKeyPress="AjustarTelefone(this)"></td>
</tr>
<tr>
	<td class="name">Celular&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A20CELULAR" value="<% = va_A19FONE %>" size="14" maxlength="14" onKeyPress="AjustarTelefone(this)"></td>
</tr>
<tr>
	<td class="name">Titulo do site&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A02TITULO" value="<% = va_A02TITULO %>" size="60" maxlength="60"></td>
</tr>
<tr>
	<td class="name">Descrição de seu site (para buscadores)&nbsp;<span class="required">*</span></td>
	<td><textarea cols="10" rows="4" name="cp_A09DESCRICAO"><%= va_A09DESCRICAO %></textarea></td>
</tr>
<tr>
	<td class="name">Palavras chaves (para buscadores)&nbsp;<span class="required">*</span></td>
	<td><textarea cols="10" rows="4" name="cp_A10PALAVRAS"><%= va_A10PALAVRAS %></textarea></td>
</tr>
<tr>
	<td class="name">Acessos ao administrador&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A13ACESSOS" value="<% = va_A13ACESSOS %>" size="5" maxlength="5" readonly></td>
</tr>
<tr>
	<td class="name">Último acesso ao administrador&nbsp;<span class="required">*</span></td>
	<td><input type="text" name="cp_A14ULTIMO" value="<% = va_A14ULTIMO %>" size="20" maxlength="20" readonly></td>
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
