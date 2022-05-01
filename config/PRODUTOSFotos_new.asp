<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--#include file="_cnx.asp"-->
<%
'<------- /°°°°°°°GERADO COM°°°°°°°°°\ ------->
'<------ / PageMaster v3.0.11\ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOSFotos_new.asp
'CRIADO EM.........: 1/3/2008 11:29:32
'----------------------------------------------
iMod = "PRODUTOSFotos"
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

function ValidaPRODUTOSFotos(theForm)
{
  if (theForm.cp_status && !EW_hasValue(theForm.cp_status, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_status, "RADIO", "Selecione um item no campo ATIVO!"))
            return false;
    }
if (theForm.cp_idProduto && !EW_hasValue(theForm.cp_idProduto, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_idProduto, "TEXT", "O campo RODUTO não pode ser vazio!"))
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
    <div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; <a href="#" onClick="return openScreen('dashboard1', 'produtos_all.asp');">Produtos</a> &gt; <a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_all.asp');">Fotos</a> &gt; Novo Registro</div>

    <div class="screenTitle">
        <table width="100%" cellspacing="0">
        <tr>
            <td><img src="imagens/icons/ic_produtos.gif"><span class="name"><%= Session("nome") %></span> - Fotos/Novo</td>
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

        <form action="<%= LCase(iMod) %>_options.asp?opt=1" method="post" enctype="multipart/form-data" name="cad1" id="cad1" onSubmit="return ValidaPRODUTOSFotos(this);">
<input type="hidden" name="cp_idProduto" value="<%= Request("id2") %>">
    <div class="formArea">

<div id="geral" style="top: 0px;">
<fieldset>
<legend>Informações deste registro</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<table width="100%" border="0" cellspacing="0">
<tr>
    <td class="name">Ativo&nbsp;<span class="required">*</span></td>
    <td>
         <input type="radio" name="cp_status" value="1" checked>SIM&nbsp;
         <input type="radio" name="cp_status" value="0">NÃO&nbsp;
    </td>
    </td>
</tr>
<tr>
    <td class="name">Foto&nbsp;<span class="required">*</span></td>
    <td><input type="file" name="cp_descri" size="50"></td>
</tr>
<tr>    <td class="name">Selecione a orientação da imagem</td>
    <td>
    <input type="radio" name="iOrientacao" value="R">&nbsp;<img src="imagens/i_retrato.gif" alt="" border="0" align="absmiddle">&nbsp;
    <input type="radio" name="iOrientacao" value="P" checked>&nbsp;<img src="imagens/i_paisagem.gif" alt="" border="0" align="absmiddle">
    </td>
<tr>
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

