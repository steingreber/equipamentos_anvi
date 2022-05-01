function confirm_delete() {
  return confirm ("Você realmente deseja excluir este registro?")
}

function getForm(element)
{
	return getParentByTagName(element, 'FORM');
}

function getParentByTagName(element, tagName)
{
	while (element) {
		if (element.tagName == tagName) {
			return element;
		}
		element = element.parentNode;
	}
}

function getParentById(element, id)
{
	while (element) {
		if (element.id == id) {
			return element;
		}
		element = element.parentNode;
	}
}

function getParentByClass(element, className)
{
	while (element) {
		if (hasClass(element, className)) {
			return element;
		}
		element = element.parentNode;
	}
}

function set_focus(d, el)
{
	if (!el)	// if form element not set - do nothing
		return;

	if ((x = findObj(e, d)) != null) {
		if (x.focus)
			x.focus();
		if (x.select)
			x.select();
	}
}

function syn(s)
{
	if (!s || !s.options || !s.options.length) 
		return false;
	
	if (s.options[s.options.length - 1].selected)
		s.options[s.options.length - 1].selected = false;
}

function plesk_scroll(w)
{
	var nav = navigator.appName;
	var ver = parseInt(navigator.appVersion);
	if ((nav.indexOf('Netscape') != -1) && (ver == 4) && w.document.location.hash) {
		var aname = w.document.location.hash.substr(1);
		var an = w.document.anchors[aname];
		if (an)
			w.scrollTo(an.x, an.y);
	}
}

function MM_reloadPage(init)	// reloads the window if Nav4 resized
{
	if (init == true)
		with (navigator) {
			if ((appName == 'Netscape') && (parseInt(appVersion) == 4)) {
				document.MM_pgW = innerWidth;
				document.MM_pgH = innerHeight;
				onresize = MM_reloadPage;
			}
		}
	else
		if ((innerWidth != document.MM_pgW) || (innerHeight != document.MM_pgH))
			location.reload();
}

function getButtonName(name)
{
    re = /^bname_([A-Za-z0-9-]+)$/;
    return name.replace(re,"$1");
}


function isFramed()
{
	return !opt_no_frames && top.workFrame && top.leftFrame && top.topFrame;
}

function setActiveButtonByName(name)
{
	try {
		return top.leftFrame.setActiveNode(name);
	} catch (e) {
		return false;
	}
}
	
function setActiveButton(o)
{
	try {
		return top.leftFrame.setActiveNode(o.id);
	} catch (e) {
		return false;
	}
}

function turnAutocompleteOff()
{
	try {
		var inputs = document.getElementsByTagName('INPUT');
		for (var i = 0; i < inputs.length; i++) {
			inputs[i].setAttribute('autocomplete', 'off');
		}
	} catch (e) {}
}

function setScrollInIE()
{
	/*@cc_on
	try {
		var lo = document.getElementById('pageLayout');
		document.body.scroll = (lo.clientHeight > document.documentElement.clientHeight || lo.clientWidth > document.documentElement.clientWidth) ? 'yes' : 'no';
	} catch (e) {
	}
	@*/
}

//---------------------------------- redirect

function get_workframe()
{
	try {
		if (top.workFrame.visibilityContent && !top.workFrame.removeMe)
			return top.workFrame.visibilityContent;
	} catch (e) {}
	if (top.workFrame)
		return top.workFrame;
	else
		return this;
}

function go_to(href)
{
	return go_to_workframe(href);
}

function go_to_workframe(href)
{
	_go_to(isFramed() ? get_workframe() : this, href);
}

function refresh_leftframe()
{
	_refresh(top.leftFrame);
}

function go_to_leftframe(href)
{
	_go_to(top.leftFrame, href);
}

function refresh_topframe()
{
	_refresh(top.topFrame);
}

function go_to_topframe(href)
{
	_go_to(top.topFrame, href);
}

function go_to_top(href)
{
	_go_to(top, href);
}

function _refresh(target)
{
	try {
		target.location.reload();
	} catch (e) {
	}
}

function _go_to(target, href)
{
	try {
	target.location = href;
	} catch (e) {
	}
}

//---------------------------------- conhelp & help

function SetConHelp(conhelp_name, direct)
{
	try {
		return top.leftFrame._SetConHelp(conhelp_name, direct);
	} catch (e) {
		return false;
	}
}

function SetContext(context, default_conhelp)
{
	SetHelpModule('');

	if (opt_integrated_mode && !opt_no_frames) {
		if (self != top)
			return top.SetContext(context, default_conhelp)
	}

	try {
		if (context)
			top._context = context;
		if (default_conhelp)
			top._default_conhelp = default_conhelp;
		else if (context)
			top._default_conhelp = context;
	} catch (e) {
		return false;
	}

	return SetConHelp();
}

function InitTips(path,key)
{
	try {
		return top._InitTips(path,key)
	} catch (e) {
		return false;
	}
}

function SetHelpPrefix(prefix)
{
	if (opt_integrated_mode && !opt_no_frames && top.SetHelpPrefix) {
		if (self != top)
			return top.SetHelpPrefix(prefix)
	}	

	try {
		top._help_prefix = prefix;
	} catch (e) {
		return false;
	}

	return true;
}

function SetHelpModule(module)
{
	if (opt_integrated_mode && !opt_no_frames && top.SetHelpModule) {
		if (self != top)
			return top.SetHelpModule(module)
	}

	try {
		top._help_module = module;
	} catch (e) {
		return false;
	}

	return true;
}

function OpenHelpWindow(context, prefix, module)
{
	if (opt_integrated_mode && !opt_no_frames && top.OpenHelpWindow) {
		if (self != top)
		return top.OpenHelpWindow(context, prefix, module)
	}	

	if (context == undefined)
		context = GetContext();
	if (prefix == undefined)
		prefix = GetHelpPrefix();
	if (module == undefined)
		module = GetHelpModule();

	if (module != '')
		prefix = '';

	var url = '/help.php?context=' + escape(context);
	if (prefix != '')
		url += '&prefix=' + escape(prefix);
	if (module != '')
		url += '&module=' + escape(module);

	try {
		var w = window.open(url, 'help',
				'toolbar=no,width=500,height=400,innerHeight=400,innerWidth=500,scrollbars=yes,resizable=yes');
		w.focus();
		return true;
	} catch (e) {
		return false;
	}
}

function GetContext()
{
	try {
	return top._context;
	} catch (e) {
		return false;
	}
}

function GetDefaultConhelp()
{
	try {
		return top._default_conhelp;
	} catch (e) {
		return false;
	}
}

function GetHelpPrefix()
{
	try {
		if (top._help_prefix == undefined)
			return '';
		else
	return top._help_prefix;
	} catch (e) {
		return false;
	}
}

function GetHelpModule()
{
	try {
		if (top._help_module == undefined)
			return '';
		else
		return top._help_module;
	} catch (e) {
		return false;
	}
}

function mouse_move(context, direct)
{
	if (!opt_integrated_mode || opt_no_frames) {
		return SetConHelp(context, direct);
	} else {
		if (self != top) {
	try {
				return top.mouse_move(context);
	} catch (e) {
				return false;
			}
		} else {
			return SetConHelp(context, direct);
		}
	}
}

function lon(target)
{
	try {
		if (parent.visibilityToolbar)
			parent.visibilityToolbar.set_display("standbyDisplayNoControls");
	} catch (e) {}

	try {
		if (!target)
			target = this;

		if (!target._lon_disabled_arr)
			target._lon_disabled_arr = new Array();
		else if (target._lon_disabled_arr.length > 0)
			return true;

		lresize(target);
		target.document.getElementById("loaderContainer").style.display = "";
		_lon(target);

		var select_arr = target.document.getElementsByTagName("select");

		for (var i = 0; i < select_arr.length; i++) {
			if (select_arr[i].disabled)
				continue;

			select_arr[i].disabled = true;
			_lon_disabled_arr.pop(select_arr[i]);
			var clone = target.document.createElement("input");
			clone.type = "hidden";
			clone.name = select_arr[i].name;
			var values = new Array();
			for (var n = 0; n < select_arr[i].length; n++) {
				if (select_arr[i][n].selected) {
					values[values.length] = select_arr[i][n].value;
				}
			}
			clone.value = values.join(",");
			select_arr[i].parentNode.insertBefore(clone, select_arr[i]);
		}
	} catch (e) {
		return false;
	}
	return true;
}

function loff(target)
{
	try {
		if (parent.visibilityToolbar) {
			parent.visibilityToolbar.set_display(visibilityCount
												 ? "standbyDisplay"
												 : "standbyDisplayNoControls");
		}
	} catch (e) {}

	try {
		if (!target)
			target = this;

		_loff(target);
		target.document.getElementById("loaderContainer").style.display = "none";

		if (target._lon_disabled_arr) {
			while(_lon_disabled_arr.length > 0) {
				var select = _lon_disabled_arr.push();
				select.disabled = false;

				var clones_arr = target.document.getElementsByName(select.name);
				for (var n = 0; n < clones_arr.length; n++) {
					if ("hidden" == clones_arr[n].type)
						clones_arr[n].parent.removeChild(clones_arr[n]);
				}
			}
		}
	} catch (e) {
		return false;
	}
	return true;
}

function lresize(target) {
	try {
		if (!target)
			target = this;

		el = target.document.getElementById("loaderContainer");
		if (target.document.body.scrollHeight > target.document.body.offsetHeight) {
			el.style.width = target.document.body.scrollWidth;
			el.style.height = target.document.body.scrollHeight;
		} else {
			el.style.width = target.document.body.offsetWidth;
			el.style.height = target.document.body.offsetHeight;
		}		
	} catch (e) {
	}
}

function lsubmit(f)
{
	try {
		if (f.lock.value == "true")
			return false;
		f.lock.value = "true";
	} catch (e) {
	}

	lon();

	try {
		f.submit();
	} catch (e) {
		loff();
		f.lock.value = "false";
		return false;
	}
	return true;
}

function getParentNodeByName(o, name)
{
	var parent = o.parentNode;
	if (!parent)
		return false;
	if (parent.nodeName != name)
		return getParentNodeByName(parent, name);
	return parent;
}

function errorfield(o, status)
{
	var tr = getParentNodeByName(o, 'TR');
	if (!tr)
		return false;
	tr.className = status ? 'error' : '';
	return true;
}

function hasClass(element, className)
{
    var classes = element.className.split(' ');
	for (var i in classes) {
		if (classes[i] == className)
			return true;
	}
	return false;
}

function addClass(element, className)
{
	if (!hasClass(element, className))
		element.className = (element.className == '' ? className : element.className + ' ' + className);
}

function removeClass(element, className)
{
	var newValue = '';
    var classes = element.className.split(' ');
	for (var i in classes) {
		if (classes[i] != className)
			newValue += newValue.length ? ' ' + classes[i] : classes[i];
	}
	element.className = newValue;
}

function _lon(target) {
	try {
		if (!target)
			target = this;

		oLoader = target.document.getElementById("loader");
		oBody = target.document.getElementsByTagName("body")[0];
		if (oLoader || oBody) {
			zIndex = oLoader.style.zIndex;
			if ( zIndex == "" ) zIndex = oLoader.currentStyle.zIndex;
			zIndex = parseInt(zIndex);
			if (!isNaN(zIndex) && zIndex > 1) {
				sHiderID = oLoader.id + "SubLayer";
				oIframe = target.document.getElementById(sHiderID);
				if (!oIframe) {
					oBody.insertAdjacentHTML("afterBegin", '<iframe src="javascript:false;" id="' + sHiderID + '" scroll="no" frameborder="0" style="position:absolute;visibility:hidden;border:0;top:0;left;0;width:0;height:0;background-color:#ccc;z-index:' + (zIndex - 1) + ';"></iframe>');
					oIframe = target.document.getElementById(sHiderID);
				}
				oIframe.style.width = oLoader.offsetWidth + "px";
				oIframe.style.height = oLoader.offsetHeight + "px";
				oIframe.style.left = oLoader.offsetLeft + "px";
				oIframe.style.top = oLoader.offsetTop + "px";
				oIframe.style.visibility = "visible";
			}
		}
	} catch (e) {
		return false;
	}
	return true;
}

function _loff(target) {
	try {
		if (!target)
			target = this;
	
		target.document.getElementById("loaderSubLayer").style.display = "none";
	} catch (e) {
		return false;
	}
	return true;
}

//cookies
function GetCookie(sName)
{
  var aCookie = document.cookie.split("; ");
  for (var i=0; i < aCookie.length; i++)
  {
    var aCrumb = aCookie[i].split("=");
    if (sName == aCrumb[0]) 
      return unescape(aCrumb[1]);
  }
  return null;
}
function SetCookie(sName, sValue)
{
  document.cookie = sName + "=" + escape(sValue) + "; "
}
function SetPermanentCookie(sName, sValue)
{
  var date = new Date();
  date.setTime(date.getTime()+(365*24*60*60*1000));
  document.cookie = sName + "=" + escape(sValue) + "; expires=" + date.toGMTString() + ";";
}
function DelCookie(sName)
{
  document.cookie = sName + "=" + escape(sValue) + "; expires=Fri, 31 Dec 1999 23:59:59 GMT;";
}

MM_reloadPage(true);