<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--#include file="_cnx.asp"-->
<%
'<------- /°°°°°°°°°°°°°°°°°°°°°°°°°°\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOSLinhas_edit.asp
'CRIADO EM.........: 29/2/2008 10:02:57
'----------------------------------------------
iMod = "PRODUTOSLinhas"
sCt  = request("ct")
sNot = request.querystring("id")
sSel = "Select * From "&iMod&" Where idSub =" & sNot
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open sSel, objConect, 3, 3
'-----------------------------------------------
va_descri                  = Trim(objRS("descri"))
va_status                  = Trim(objRS("status"))
'-----------------------------------------------
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

function ValidaPRODUTOSLinhas(theForm)
{
if (theForm.cp_descri && !EW_hasValue(theForm.cp_descri, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_descri, "TEXT", "O campo DESCRIÇÃO não pode ser vazio!"))
            return false;
    }
  if (theForm.cp_status && !EW_hasValue(theForm.cp_status, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_status, "RADIO", "Selecione um item no campo ATIVO!"))
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
    <div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', 'produtos_all.asp');">Produtos</a> &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_all.asp');">Linhas</a> &gt; Editar/Ver</div>

    <div class="screenTitle">
        <table width="100%" cellspacing="0">
        <tr>
            <td><img src="imagens/icons/ic_produtos.gif">&nbsp;<% If sCt = "1" Then %><font color="#FF0000">Dados alterados com sucesso!</font><% Else %><span class="name"><%= Session("nome") %></span> - Linhas / Editar<% End If %></td>
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

        <form action="<%= LCase(iMod) %>_options.asp?opt=2&id=<%= sNot %>" method="post" name="cad1" id="cad1" onSubmit="return ValidaPRODUTOSLinhas(this);">

    <div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Informações deste registro</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table width="100%" border="0" cellspacing="0">
<tr>
    <td class="name">Descrição&nbsp;<span class="required">*</span></td>
    <td><input type="text" name="cp_descri" value="<% = va_descri %>" size="60" maxlength="200"></td>
</tr>
<tr>
    <td class="name">Ativo&nbsp;<span class="required">*</span></td>
    <td>
                    <input type="radio" name="cp_status" value="1"<% If va_status = "1" Then %> checked style="background-color: #C0C0C0;"<% End If %>>SIM&nbsp;
                    <input type="radio" name="cp_status" value="0"<% If va_status = "0" Then %> checked style="background-color: #C0C0C0;"<% End If %>>NÃO&nbsp;
    </td>
    </td>
</tr>
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

