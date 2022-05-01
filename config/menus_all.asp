<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--#include file="_cnx.asp"-->
<%
iMod = "Menus"
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
			


//-->
		</script>


	</head>
	<body onLoad="_body_onload();" onUnload="_body_onunload();" onResize="_body_resize();" onHelp="OpenHelpWindow(); return false;" id="mainCP" class="MainFrameBody">

	<a href="#" name="top" id="top"></a>
	<table border="0" cellspacing="0" cellpadding="0" id="loaderContainer" onClick="return false;"><tr><td id="loaderContainerWH"><div id="loader" style="z-index: 10;"><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><p><img alt="loading.gif" title="" width="32" height="32" src="imagens/loading.gif"><strong>Por favor.<br>Aguarde...</strong></p></td></tr></table></div><script>_lon();</script></td></tr></table>
	<table width="100%" cellspacing="0" cellpadding="0" border="0" id="pageLayout"><tr><td id="screenWH">
	<div class="pathbar"><a href="#" onClick="return openScreen('dashboard1', 'general.asp');">Área de Trabalho</a> &gt; Todos os <%= iMod %></div>
	
	<div class="screenTitle">
		<table width="100%" cellspacing="0">
		<tr>

			<td><img src="imagens/ok.gif" width="16" height="16" alt="ok.gif" title="">&nbsp;<span class="name"><%= Session("nome") %></span> - <%= iMod %></td>
			<td class="uplevel">
				
				
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

<legend><%= iMod %></legend><table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<div class="listArea">
	<a href="#" onClick="return openScreen('dashboard', '<%= LCase(iMod) %>_new.asp');"><img src="imagens/on.gif" alt="" border="0" align="absmiddle">&nbsp;Cadastrar novo registro</a>	
<div>
</td></tr></table>

<hr>

<table width="100%" cellspacing="0" cellpadding="0" border="0"><tr><td>
<!-- 		<table width="100%" cellspacing="0">
			<tr>
				<td>
          <form action="<%= LCase(iMod) %>_all.asp" method="post" name="frmBusca" id="frmBusca">
				<select name="q" style="width: 250px;">
			        <option value="[A01NOME]">NOME</option>
			        <option value="[A07RG]">RG</option>
			        <option value="[A08CPF]">CPF</option>
		        </select>&nbsp;
               <select name="t" class="ud_caixa">
               <option selected value=" Like ">que contenha</option>
               <option value=" = ">igual a...</option>
               </select>&nbsp;
				<input type="text" name="totext" value="" size="20" maxlength="245">
				<input type="submit" name="procurar" value="&nbsp;&nbsp;&nbsp;Procurar" style="background: url(imagens/btn_search_bg.gif) no-repeat left; border: none White; height: 20px; cursor: hand;">
				&nbsp;&nbsp;<a href="<%= LCase(iMod) %>_all.asp">Mostar Tudo</a>
			</form>
				</td>
			</tr>
		</table> -->
		</div>
		<div class="paging">

		</div>

<%
'On error resume next
Dim Connect_String
Dim Page_Size
Dim StartPage
Dim Current_Page
Dim Page_Count
Dim CssClass
Dim CellValue
Dim intRowCount
Dim SQL
Dim i, strTemp, corTR, corData

iTabela = "clientes"
sCampo = Request("q")
sTipo  = Request("t")
sValor = Request("totext")

If Trim(sValor) = "" Then
   SQL = "Select * From "&LCase(iMod)&" Order By [A00ID] Desc"
Else
   If Trim(sTipo) = "Like" Then
   SQL = "Select * From "&LCase(iMod)&" Where " & sCampo & " " & sTipo & "'%" & sValor & "%'"
   Else
   SQL = "Select * From "&LCase(iMod)&" Where " & sCampo & " " & sTipo & "'" & sValor & "'"
   End If
End If

   Set rsTemp = Server.CreateObject("ADODB.Recordset")
   rsTemp.CursorLocation = 3
   If Request("Page") = "" Then
      Current_Page = 1
   else
     Current_Page = CInt(Request("Page"))
   end if

   Page_Size = "60"
   rsTemp.PageSize = Page_Size
   rsTemp.Open SQL, objConect

   Page_Count = rsTemp.PageCount
   If Current_Page < 1 Then Current_Page = 1
   If Current_Page > Page_Count Then Current_Page = Page_Count
   If Page_Count > 0 then rsTemp.AbsolutePage = Current_Page
%>

                        <table align="center" cellpadding="0" cellspacing="1" width="100%" class="list">
 							<tr>
							<td colspan="5" align="center">
					<table cellpadding="0" cellspacing="0">
					    <tr>
					        <td align="center"><a href="#" onClick="return openScreen('dashboard3', '<%= LCase(iMod) %>_all.asp?Page=1');">Primeira</a> </td>
					<% if Current_Page > 1 then %>
					        <td align="center"> <a href="#" onClick="return openScreen('dashboard4', '<%= LCase(iMod) %>_all.asp?Page=<%= (Current_Page - 1) %>');"><font color="#FF0000">Anterior</font></a> </td>
					<% End If %>
					<% if Current_Page < Page_Count then %>
					        <td align="center"> <a href="#" onClick="return openScreen('dashboard5', '<%= LCase(iMod) %>_all.asp?Page=<%= (Current_Page + 1) %>');"><font color="#FF0000">Próxima</font></a> </td>
					<% End If %>
					        <td align="center"> <a href="#" onClick="return openScreen('dashboard6', '<%= LCase(iMod) %>_all.asp?Page=<%= Page_Count %>');">Última</a></td>
					    </tr>
					</table>
							</td>
							</tr>
                            <tr>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>EXIBIR</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>MENU</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>LINK</strong></td>
                                <td align="center" background="imagens/list-th-bg-sort.gif"><strong>ATIVO|PERMISSÕES</strong></td>
                            </tr>
<%
   Dim pmCorSel
   pmCorSel = "#F0F7FD"
   Do While rsTemp.AbsolutePage = Current_Page And Not rsTemp.EOF
   If rsTemp.BOF AND rsTemp.EOF then response.End
   If pmCorSel = "#FFFFFF" Then: pmCorSel = "#F0F7FD": Else pmCorSel = "#FFFFFF"
   iAtivo = rsTemp("A03ATIVO")
   iPermi = rsTemp("A05PERMISSOES")
   If iAtivo = "1" Then: iAtivo = "SIM": Else: iAtivo = "<font color='#FF0000'>NÃO</font>"
   If iPermi = "1" Then: iPermi = "SIM": Else: iPermi = "<font color='#FF0000'>NÃO</font>"
%>
                            <tr bgcolor="<%= pmCorSel %>">
                                <td align="center"><a href="#" onClick="return openScreen('dashboard1', '<%= LCase(iMod) %>_edit.asp?id=<%= rsTemp(0) %>');"><img src="imagens/sis-search.gif" alt="Exibir este..." border="0" align="absmiddle"></a></td>
                                <td align="left"><%= rsTemp("A01MENU") %></td>
                                <td align="Left"><%= rsTemp("A02LINK") %></td>
                                <td align="Center"><table class="list" width="60" cellpadding="0" cellspacing="0"><tr><td><%= iAtivo %></td><td><%= iPermi %></td></tr></table></td>
                            </tr>
<%
   rsTemp.MoveNext
   Loop
   rsTemp.Close
   Set rsTemp = Nothing
%>
                        </table>
</td></tr></table></fieldset>

</div>


<p></p>

                    </td>
                </tr>
            </table>

	</div>
	</td></tr></table>
	<script language="javascript" type="text/javascript">function SwitchLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(!top.GetBarExpanded());}}function ExpandLeftFrame(f) {var i=document.getElementById("imgLeftFrameSwitcher");    if(i){i.src="imagens/bar_"+(f?"close":"open")+".gif"; top.FoldFrame(f);}}function SetExpandLeftFrame(){if(typeof(top.GetBarExpanded)!="undefined"){ExpandLeftFrame(top.GetBarExpanded());}}</script><div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>
	<div class="LeftFrameSwitcher" id="divLeftFrameSwitcher"><img src="imagens/bar_close.gif" alt="bar_close.gif" name="imgLeftFrameSwitcher" id="imgLeftFrameSwitcher" border="0" title="Esconder/Mostrar navegação" onClick="SwitchLeftFrame();"></div>

	</body>
</html>
