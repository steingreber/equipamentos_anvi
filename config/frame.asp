<%
If Session("yUser") <> True And Session("yPass") <> True Then: response.redirect "login.asp?mes=2"
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<html>
<head>
<link rel="shortcut icon" href="/favicon.ico">
<title>Gnove WEbStudio</title>
<script language="javascript" type="text/javascript" src="suport/common.js"></script>

<script language="javascript" type="text/javascript" src="suport/service.js"></script>
<script language="javascript">
<!--
var opt_no_frames = false;
var opt_integrated_mode = false;
var _help_prefix = "";
var _help_module = "";
var _context = "";

//-->
</script>

</head>

	<frameset rows="52,*" border=0 framespacing=0 frameborder=0 onHelp="OpenHelpWindow(); return false;">
		<frame src="topo.asp" name="topFrame" frameborder=0 border=0 framespacing=0 marginheight=0 marginwidth=0 scrolling="no" noresize>
		<frameset id="MainFrameSet" cols="210,*" border="0" frameborder="0" framespacing="0">
			<frame src="lateral.asp" name="leftFrame" frameborder="0" border="0" noresize>
			<frame src="entrada.asp" name="workFrame" frameborder="0" border="0" framespacing="0" marginheight="7" marginwidth="7" noresize scrolling="auto">
		</frameset>
	</frameset>
</html>