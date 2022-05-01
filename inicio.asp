<link href="suport/estilo.css" rel="stylesheet" type="text/css" />
<table width="780">
  <tr>
    <td height="60" valign="bottom" class="fundo_top"><h4><img src="imagens/clear.gif" alt="" width="40" height="20" border="0" align="absmiddle">HOME</h4></td>
  </tr>
</table>
<%
	sLin = "Select * From EMPRESA Where A00ID = 2"
	Set objRS = Server.CreateObject("ADODB.Recordset")
	objRS.Open sLin, objConect, 3, 3

	'Response.write "<p align='center'><img src='config/imgtopo/"&objRS(2)&"' border='0'></p>"
	Response.write "<p align=""justify"" class=""subtitulo"" style=""margin-left: 8px; margin-right: 8px;"">"&objRS(1)&"</p><br>"

	objRS.Close
	Set objRS = Nothing	
%>
<table width="680" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="332" height="205" background="imagens/fundo_1.jpg">
<%
randomize
set result = objConect.Execute("SELECT * FROM PRODUTOS")
nums = ""
while not result.eof
 nums = nums & result("a00id") & "|"
 result.movenext
wend

arrTemp = Split(nums,"|")
id_sort = Round((ubound(arrTemp)-1) * Rnd)

set result = objConect.Execute("SELECT * FROM PRODUTOS Where a00id = " & arrTemp(id_sort))
%>
            <table width="282" align="center" cellpadding="0" cellspacing="0" height="125">
                <tr>
                    <td width="101" height="125" align="center" bgcolor="white" style="border-width:1px; border-color:rgb(0,51,204); border-style:solid;"><a href="javascript:ajax('produtos_view.asp?id=<%= result(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= result(5) %>" alt="" border="0"></a></td>
                    <td width="181" height="125"><span class="titulo"><strong><%= result(1) %></strong></span><br><span class="subtitulo"><%= result(10) %></span></td>
                </tr>
            </table>
        </td>
        <td width="17" height="410" rowspan="2">&nbsp;</td>
        <td width="331" height="205" background="imagens/fundo_1.jpg">
<%
randomize
set result1 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id <> "& result(0))
nums1 = ""
while not result1.eof
 nums1 = nums1 & result1("a00id") & "|"
 result1.movenext
wend

arrTemp1 = Split(nums1,"|")
id_sort1 = Round((ubound(arrTemp1)-1) * Rnd)

set result1 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id = " & arrTemp1(id_sort1))
%>
            <table width="282" align="center" cellpadding="0" cellspacing="0" height="125">
                <tr>
                    <td width="101" height="125" align="center" bgcolor="white" style="border-width:1px; border-color:rgb(0,51,204); border-style:solid;"><a href="javascript:ajax('produtos_view.asp?id=<%= result1(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= result1(5) %>" alt="" border="0" /></a></td>
                    <td width="181" height="125"><span class="titulo"><strong><%= result1(1) %></strong></span><br><span class="subtitulo"><%= result1(10) %></span></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="332" height="205" background="imagens/fundo_1.jpg">
<%
randomize
set result2 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id <> "& result(0) & " AND a00id <> " & result1(0))
nums2 = ""
while not result2.eof
 nums2 = nums2 & result2("a00id") & "|"
 result2.movenext
wend

arrTemp2 = Split(nums2,"|")
id_sort2 = Round((ubound(arrTemp2)-1) * Rnd)

set result2 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id = " & arrTemp2(id_sort2))
%>
            <table width="282" align="center" cellpadding="0" cellspacing="0" height="125">
                <tr>
                    <td width="101" height="125" align="center" bgcolor="white" style="border-width:1px; border-color:rgb(0,51,204); border-style:solid;"><a href="javascript:ajax('produtos_view.asp?id=<%= result2(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= result2(5) %>" alt="" border="0" /></a></td>
                    <td width="181" height="125"><span class="titulo"><strong><%= result2(1) %></strong></span><br><span class="subtitulo"><%= result2(10) %></span></td>
                </tr>
            </table>
        </td>
        <td width="331" height="205" background="imagens/fundo_1.jpg">
<%
randomize
set result3 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id <> "& result(0) & " AND a00id <> " & result1(0) & " AND a00id <> " & result2(0))
nums3 = ""
while not result3.eof
 nums3 = nums3 & result3("a00id") & "|"
 result3.movenext
wend

arrTemp3 = Split(nums3,"|")
id_sort3 = Round((ubound(arrTemp3)-1) * Rnd)

set result3 = objConect.Execute("SELECT * FROM PRODUTOS Where a00id = " & arrTemp3(id_sort3))
%>
            <table width="282" align="center" cellpadding="0" cellspacing="0" height="125">
                <tr>
                    <td width="101" height="125" align="center" bgcolor="white" style="border-width:1px; border-color:rgb(0,51,204); border-style:solid;"><a href="javascript:ajax('produtos_view.asp?id=<%= result3(0) %>','conteudo','Aguarde...')"><img src="config/imgProdutos/mini/<%= result3(5) %>" alt="" border="0" /></a></td>
                    <td width="181" height="125"><span class="titulo"><strong><%= result3(1) %></strong></span><br><span class="subtitulo"><%= result3(10) %></span></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%
result.Close
result1.Close
result2.Close
result3.Close
Set result = Nothing
Set result1 = Nothing
Set result2 = Nothing
Set result3 = Nothing
%>