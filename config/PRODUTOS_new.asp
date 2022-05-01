<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--#include file="_cnx.asp"-->
<%
'<------- /°°°°°°°°°°°°°°°°°°°°°°°°°°\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOS_new.asp
'CRIADO EM.........: 29/2/2008 09:39:58
'----------------------------------------------
iMod = "PRODUTOS"
%>
<html>

    <head>
        <link rel="shortcut icon" href="/favicon.ico">
        <title>GNove</title>

<script language=JavaScript src="popcalendar.js"></script>
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
<!--
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
                Else
                {
                    if (bt) bt.click();
                }
                return false;}if (key == "27") {
                bt = document.getElementById("bid-cancel");
                if (navigator.appName == "Netscape")
                {
                    if (bt) bt.onclick();
                }
                Else
                {
                    if (bt) bt.click();
                }
                return false;}
                    } catch (e) {
                    }
                    return true;
                }
                if (document.layers) document.captureEvents(Event.KEYPRESS);
                document.onkeypress = _key_hadler_onkeypress;

function ValidaPRODUTOS(theForm)
{
  if (theForm.cp_a06ativo && !EW_hasValue(theForm.cp_a06ativo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a06ativo, "RADIO", "Selecione um item no campo ATIVO!"))
            return false;
    }
if (theForm.cp_a01produto && !EW_hasValue(theForm.cp_a01produto, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a01produto, "TEXT", "O campo PRODUTO não pode ser vazio!"))
            return false;
    }
if (theForm.cp_a07referencia && !EW_hasValue(theForm.cp_a07referencia, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a07referencia, "TEXT", "O campo REFERENCIA não pode ser vazio!"))
            return false;
    }
if (theForm.cp_a02linha && !EW_hasValue(theForm.cp_a02linha, "SELECT" )) {
        if (!EW_onError(theForm, theForm.cp_a02linha, "SELECT", "Selecione um item no campo LINHA"))
            return false;
    }
if (theForm.cp_a03numeroIni && !EW_checkinteger(EW_this.cp_a03numeroIni.value)) {
        if (!EW_onError(theForm, theForm.cp_a03numeroIni, "TEXT", "O campo A03NUMEROINI tem de ser um número válido !"))
            return false;
        }
if (theForm.cp_a04numeroFim && !EW_checkinteger(EW_this.cp_a04numeroFim.value)) {
        if (!EW_onError(theForm, theForm.cp_a04numeroFim, "TEXT", "O campo A04NUMEROFIM tem de ser um número válido !"))
            return false;
        }
if (theForm.cp_a05foto && !EW_hasValue(theForm.cp_a05foto, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a05foto, "TEXT", "O campo FOTO não pode ser vazio!"))
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
    <div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_all.asp');"><%= iMod %></a> &gt; Novo Registro <%= iMod %></div>

    <div class="screenTitle">
        <table width="100%" cellspacing="0">
        <tr>
            <td><img src="imagens/icons/ic_<%= iMod %>.gif"><span class="name"><%= Session("nome") %></span> - <%= iMod %>/Novo</td>
            <td class="uplevel">
                <div class="commonButton"><span id="spanid-shortcut-add"><a href="#" onClick="return openScreen('dashboard1', '<%= iMod %>_all.asp');"><img src="imagens/btn_uplevel_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Voltar</a></div>
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

        <form action="<%= LCase(iMod) %>_options.asp?opt=1" method="post" enctype="multipart/form-data" name="cad1" id="cad1" onSubmit="return ValidaPRODUTOS(this);">

    <div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Informações deste registro</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table width="100%" border="0" cellspacing="0">
<tr>
    <td class="name">Ativo&nbsp;<span class="required">*</span></td>
    <td>
         <input type="radio" name="cp_a06ativo" value="1" checked>SIM&nbsp;
         <input type="radio" name="cp_a06ativo" value="0">NÃO&nbsp;
    </td>
    </td>
</tr>
<tr>
    <td class="name">Produto&nbsp;<span class="required">*</span></td>
    <td><input type="text" name="cp_a01produto" size="60" maxlength="200"></td>
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
content = freeRTE_Preload(va_a08descricao)
%>
<script src="../js/richtext.js" type="text/javascript" language="javascript"></script>
<script src="../js/config.js" type="text/javascript" language="javascript"></script>
<script src="../js/pt_br.js" type="text/javascript" language="javascript"></script>
<script>rteFormName = "cp_a08descricao";</script>
<script>initRTE('<%= content %>', 'example.css');</script>
	</td>
</tr>
<tr>
    <td class="name">Resumo&nbsp;<span class="required">*</span></td>
    <td><input type="text" name="cp_a10resumo" size="60" maxlength="254"></td>
</tr>
<tr>
    <td class="name">Linha&nbsp;<span class="required">*</span></td>
    <td>
           <select name="cp_a02linha" size="1" class="ud_caixa">
<%
sLin = "Select * From PRODUTOSLinhas Where status=1"
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sLin, objConect, 3, 3
%>
                <option>Selecione</option>
<%Do While not objRs.EOF%>
                <option value="<%= objRs("idSub") %>"><%= objRs("descri") %></option>
<% objRs.MoveNext
Loop
objRs.close %>
           </select>
    </td>
</tr>
<tr>
    <td class="name">Foto&nbsp;<span class="required">*</span></td>
    <td><input type="file" name="file1" size="50"></td>
</tr>
<tr>    <td class="name">Selecione a orientação da imagem</td>
    <td>
    <input type="radio" name="iOrientacao" value="R">&nbsp;<img src="imagens/i_retrato.gif" alt="" border="0" align="absmiddle">&nbsp;
    <input type="radio" name="iOrientacao" value="P" checked>&nbsp;<img src="imagens/i_paisagem.gif" alt="" border="0" align="absmiddle">
    </td>
</table>
</td></tr></table>
</fieldset>
</div>
    </div>
    <div class="formArea">
        <table width="95%" class="buttons" cellspacing="0" cellpadding="0"><tr>
            <td class="main" width="0"></td>
            <td class="footnote" id="footnote"><span class="required">*</span> Campos requeridos</td>
            <td class="misc" width="0"><nobr><div class="commonButton" id="bid-ok" title="OK"><button name="bname_ok" type="submit" style="background: url(imagens/btn_ok_bg.gif);">OK</button><span id="spanid-ok">OK</span></div><div class="commonButton" id="bid-cancel"><button name="bname_cancel" type="button" style="background: url(imagens/btn_cancel_bg.gif);" onClick="javascript:history.go(-1);">Cancelar</button><span id="spanid-cancel">Cancelar</span></div></nobr></td>
        </tr></table>

    </div>

</form>
    </div>
    </td></tr></table>

    <script language="javascript" type="text/javascript">
    function SwitchLeftFrame(){
        if(typeof(top.GetBarExpanded)!="undefined"){
        ExpandLeftFrame(!top.GetBarExpanded());
        }
    }
    function ExpandLeftFrame(f) {
        var i=document.getElementById("imgLeftFrameSwitcher");
        if(i){i.src="imagens/bar_"+(f?"close":"open")+".gif"; top.FoldFrame(f);
        }
    }
    function SetExpandLeftFrame(){
        if(typeof(top.GetBarExpanded)!="undefined"){
        ExpandLeftFrame(top.GetBarExpanded());
        }
    }
    </script>
    <div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>

    </body>
</html>

