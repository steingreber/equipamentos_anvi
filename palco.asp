<!--#include file="_cnx.asp"-->
<html>

<head>
<title><%= va_A02TITULO %></title>
<meta name="robots" content="none">
<link type="text/css" rel="stylesheet" href="suport/suport.css">
</head>
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
Dim SQL, sID, sGaleria
Dim i, strTemp, corTR, corData

	sID      = Request("id")
	sGaleria = Request("galeria")

   SQL = "SELECT * FROM PRODUTOSFotos Where idProduto=" & sGaleria & " Order By idSub"

   Set rsTemp = Server.CreateObject("ADODB.Recordset")
   rsTemp.CursorLocation = 3
   If Request("Page") = "" Then
      Current_Page = 1
   else
     Current_Page = CInt(Request("Page"))
   end if

   Page_Size = "1"
   rsTemp.PageSize = Page_Size
   rsTemp.Open SQL, objConect

   Page_Count = rsTemp.PageCount
   If Current_Page < 1 Then Current_Page = 1
   If Current_Page > Page_Count Then Current_Page = Page_Count
   If Page_Count > 0 then rsTemp.AbsolutePage = Current_Page
   Errou
%>
<body bgcolor="#FFFFFF" text="<%= va_A04COR_FONTE_SITE %>" link="<%= va_A04COR_FONTE_SITE %>" vlink="<%= va_A04COR_FONTE_SITE %>" alink="<%= va_A04COR_FONTE_SITE %>" leftmargin="0" topmargin="0" marginwidth="0">
<table width="600" height="410" cellpadding="0" cellspacing="0">
<%
   Do While rsTemp.AbsolutePage = Current_Page And Not rsTemp.EOF
   If rsTemp.BOF AND rsTemp.EOF then response.End
%>
    <tr>
        <td width="411" rowspan="2" align="center"><img src="config/imgProdutos/<%= rsTemp(2) %>" border="0"></td>
        <td width="189" align="center" class="subtitulo"></td>
    </tr>
    <tr>
	<td align="center" valign="bottom">
<%
If Current_Page > 1 then
  Response.Write "<A HREF=""palco.asp?Page=" & (Current_Page - 1) & "&galeria=" & sGaleria & """><img src='imagens/bt_ant.gif' alt='Anterior' border='0'></A>&nbsp;" & vbCrLfelse
  Response.Write ""
End If
If Current_Page < Page_Count then
  Response.Write "&nbsp;<A HREF=""palco.asp?Page=" & (Current_Page + 1) & "&galeria=" & sGaleria & """><img src='imagens/bt_pro.gif' alt='Próximo' border='0'></A>"
Else
  Response.Write ""
End If
%><br>
	</td>
    </tr>
<%
   rsTemp.MoveNext
   Loop
   rsTemp.Close
   Set rsTemp = Nothing
%>
</table>
<%
Sub Errou
If err <> 0 Then
%>
<br>
<table cellpadding="0" cellspacing="0" width="100%" height="100%">
    <tr>
        <td align="center" valign="middle">
            <table style="BORDER-RIGHT: #cccccc 1px solid; BORDER-TOP: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; BORDER-BOTTOM: #cccccc 1px solid" align="center" cellpadding="0" cellspacing="0" width="571" bordercolordark="black" bordercolorlight="black">
                <tr>
                    <td width="571" height="63" align="center">
                        <p style="margin-left:5pt;"><span class="titulo">Informação do sistema...</span></p>
                    </td>
                </tr>
                <tr>
                    <td width="571" height="128" align="center">
           <span class="titulo">Erro nº <%=err.Number%> <br><%=err.Source%><br><%= err.Description%></span>
                    </td>
                </tr>
                <tr>
                    <td width="571" height="38" align="center">
           <span class="titulo"><a href="javascript:close();">Fechar</a></span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
<%
Response.End
End If
End Sub
%>

</body>

</html>
