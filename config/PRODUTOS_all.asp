<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--#include file="_cnx.asp"-->
<%
'<------- /같같같같같같같같같같같같같\ ------->
'<------ / Gerando com PageMaster 3.0 \ ------>
'<----- /   http://www.gnove.com.br    \ ----->
'<----- \______________________________/ ----->

'NOME DO ARQUIVO...: PRODUTOS_all.asp
'CRIADO EM.........: 29/2/2008 09:39:58
'----------------------------------------------
iPer = Int(Trim(Request("mu")))
acesso (iPer)
iMod = UCase("PRODUTOS")
%>
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
//-->
        </script>
 
    </head>
    <body onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();" onHelp="OpenHelpWindow(); return false;" id="mainCP" class="MainFrameBody">
 
    <a href="#" name="top" id="top"></a>
    <table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
    <table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
    <div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">햞ea de Trabalho</a> &gt; <%= iMod %></div>
 
    <div class="screenTitle">
        <table width="100%" cellspacing="0">
        <tr>
 
            <td><img src="imagens/icons/ic_<%= iMod %>.gif">&nbsp;<span class="name"><%= Session("nome") %></span> - <%= iMod %></td>
            <td class="uplevel">
                <div class="commonButton"><span id="spanid-shortcut-add"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');"><img src="imagens/btn_uplevel_bg.gif" alt="" border="0" align="absmiddle">&nbsp;Voltar</a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;</font></div>
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
<legend>Lista de registro</legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<div class="listArea">
    <a href="#" onClick="return openScreen('dashboard', '<%= iMod %>_new.asp');"><img src="imagens/on.gif" alt="" border="0" align="absmiddle">&nbsp;Cadastrar novo registro</a>&nbsp;|&nbsp;<a href="#" onClick="return openScreen('dashboard', 'PRODUTOSLinhas_all.asp');"><img src="imagens/on.gif" alt="" border="0" align="absmiddle">&nbsp;Cadastrar Linhas</a><!-- &nbsp;|&nbsp;<a href="#" onClick="return openScreen('dashboard', 'PRODUTOSSolados_all.asp');"><img src="imagens/on.gif" alt="" border="0" align="absmiddle">&nbsp;Cadastrar Solados</a> -->
<div>
</td></tr></table>
<table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
        <table width="100%" cellspacing="0">
            <tr>
                <td>
    <tr>
          <form name="frmBusca" method="post" action=PRODUTOS_all.asp>
    <td height="34" align="center" colspan="3" class="tabelatitulo">
               <p><select name="q" size=1 class="ud_caixa">
               <option value="[a01produto]">PRODUTO</option>
               <option value="[a07referencia]">REFERENCIA</option>
               <option value="[a02linha]">LINHA</option>
               <option value="[a06ativo]">ATIVO</option>
               </select> 
               <select name="t" class="ud_caixa">
               <option selected value="Like">que contenha</option>
               <option value=" = ">igual a...</option>
               </select>
               <input type="text" name="totext" size=15 class="ud_caixa">
                <input type="submit" name="procurar" value="&nbsp;&nbsp;&nbsp;Procurar" style="background: url(imagens/btn_search_bg.gif) no-repeat left; border: none White; height: 20px; cursor: hand;">
                &nbsp;&nbsp;<a href="<%= LCase(iMod) %>_all.asp">Mostar Tudo</a>
            </form>
                </td>
            </tr>
        </table>
<hr noshade>
<table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
        </div>
        <div class="paging">
        </div>
<%
sCampo = Request("q")
sTipo  = Request("t")
sValor = Request("totext")
If Trim(sValor) = "" Then
   SQL = "Select * From [" & iMod & "] Order By [a00id] Desc"
Else
   If Trim(sTipo) = "Like" Then
   SQL = "Select * From " & iMod & " Where " & sCampo & " " & sTipo & " '%" & sValor & "%'"
   Else
   SQL = "Select * From " & iMod & " Where " & sCampo & " " & sTipo & "'" & sValor & "'"
   End If
End If
   Set rsTemp = Server.CreateObject("ADODB.Recordset")
   rsTemp.CursorLocation = 3
   If Request("Page") = "" Then
      Current_Page = 1
   Else
     Current_Page = CInt(Request("Page"))
   End If
   Page_Size = "50"
   rsTemp.PageSize = Page_Size
   rsTemp.Open SQL, objConect

   Page_Count = rsTemp.PageCount
   If Current_Page < 1 Then Current_Page = 1
   If Current_Page > Page_Count Then Current_Page = Page_Count
   If Page_Count > 0 Then rsTemp.AbsolutePage = Current_Page
%>

                        <table align="center" cellpadding="0" cellspacing="1" width="100%" class="list">
                            <tr>
                            <td colspan="5" align="center">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center"><a href="#" onClick="return openScreen('dashboard3', '<%= iMod %>_all.asp?Page=1');">Primeira</a> </td>
                    <% if Current_Page > 1 then %>
                            <td align="center"> <a href="#" onClick="return openScreen('dashboard4', '<%= iMod %>_all.asp?Page=<%= (Current_Page - 1) %>');"><font color="#FF0000">Anterior</font></a> </td>
                    <% End If %>
                    <% if Current_Page < Page_Count then %>
                            <td align="center"> <a href="#" onClick="return openScreen('dashboard5', '<%= iMod %>_all.asp?Page=<%= (Current_Page + 1) %>');"><font color="#FF0000">Pr�xima</font></a> </td>
                    <% End If %>
                            <td align="center"> <a href="#" onClick="return openScreen('dashboard6', '<%= iMod %>_all.asp?Page=<%= Page_Count %>');">�ltima</a></td>
                        </tr>
                    </table>
                            </td>
                            </tr>
                            <tr>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>OP합ES</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>PRODUTO</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>LINHA</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>REF</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>AT</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>FOTO</strong></td>
                            </tr>
<%
   pmCorSel = "#F0F7FD"
   Do While rsTemp.AbsolutePage = Current_Page And Not rsTemp.EOF
   If rsTemp.BOF And rsTemp.EOF Then response.End
   If pmCorSel = "#FFFFFF" Then: pmCorSel = "#F0F7FD": Else pmCorSel = "#FFFFFF"
   If rsTemp("status") = "1" Then: iOpt = "<img src=""imagens/ok.gif"">": Else: iOpt = "<img src=""imagens/off.gif"">"
   sLin = "Select * From PRODUTOSLinhas Where idSub =" & rsTemp("a02linha")
   Set objRS = Server.CreateObject("ADODB.Recordset")
   objRS.Open sLin, objConect, 3, 3
   iLinha = objRS("descri")
%>
                            <tr bgcolor="<%= pmCorSel %>">
                                <td align="center"><a href="#" onClick="return openScreen('dashboard1', '<%= iMod %>_edit.asp?id=<%= rsTemp(0) %>');"><img src="imagens/sis-search.gif" alt="Exibir este registro" border="0" align="absmiddle"></a><!-- &nbsp;<a href="#" onClick="return openScreen('dashboard1', 'produtosCores_new.asp?id2=<%= rsTemp(0) %>');"><img src="imagens/bricks.png" alt="Cadastrar cores" border="0" align="absmiddle"></a> -->&nbsp;<a href="#" onClick="return openScreen('dashboard1', 'produtosfotos_all.asp?id2=<%= rsTemp(0) %>');"><img src="imagens/photo_add.png" alt="Cadastrar mais fotos" border="0" align="absmiddle"></a></td>
                                <td align="Left"><%= UCase(rsTemp("a01produto")) %></td>
                                <td align="Left"><%= UCase(iLinha) %></td>
                                <td align="Left"><%= UCase(rsTemp("a07referencia")) %></td>
                                <td align="Center"><%= iOpt %></td>
                                <td align="Center"><img src="imgProdutos/<%= rsTemp("a05foto") %>" width="30" height="30" align="absmiddle"></td>
                            </tr>
<%
   rsTemp.MoveNext
   Loop
   rsTemp.Close
   Set rsTemp = Nothing
%>
                        </table>
</td></tr></table>

</div>

<!-- <p></p> -->
                    </td>
                </tr>
            </table></fieldset>

    </div>

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
    <div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navega豫o" onClick="SwitchLeftFrame();"></div>

    </body>
</html>

