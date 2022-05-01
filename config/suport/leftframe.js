//---------------------------------------- navigation
var treeopened = null;

function opentree(tree)
{
	var cls = '';
	if (document.getElementById) {
		var el = document.getElementById (tree);
		if (el && el.className) {
			SetPermanentCookie('nav-' + tree, (el.className == 'navOpened') ? '0' : '1');
			el.className = (el.className == 'navOpened') ? 'navClosed' : 'navOpened';
		}
	}
	if (navigator.appName == 'Microsoft Internet Explorer' && document.documentElement && navigator.userAgent.indexOf ('Opera') == -1) parent.setScrollInIE();
	return false;
}

function setActiveNode(id)
{
	try {
		if (activeItem == id) {
			return false;
		}
		if (activeItem != '' ) {
			var cur = document.getElementById(activeItem);
			cur.className = 'node';
		}
		activeItem = id;
		var el = document.getElementById(id);
		el.className='nodeActive';
	} catch(e) {}

	return false;
}

function openScreen(id, url)
{
	setActiveNode(id);
	try {
		lon(top.workFrame);
	} catch (e) {
	}
	return go_to(url);
}

function mover(o)
{
	o.className = 'navTitleOver';
}

function mout(o)
{
	o.className = 'navTitle';
}