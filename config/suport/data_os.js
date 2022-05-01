/*
   Apycom DHTML Menu data file
   Created by Apycom DHTML Tuner
   http://dhtml-menu.com
*/
var ns4 = (document.layers) ? true : false;
var ie4 = (document.all && !document.getElementById) ? true : false;
var ie5 = (document.all && document.getElementById) ? true : false;
var ns6 = (!document.all && document.getElementById) ? true : false;

function show(sw,obj) {
	// show/hide the divisions
	if (sw && (ie4 || ie5) ) document.all[obj].style.visibility = 'visible';
	if (!sw && (ie4 || ie5) ) document.all[obj].style.visibility = 'hidden';
	if (sw && ns4) document.layers[obj].visibility = 'visible';
	if (!sw && ns4) document.layers[obj].visibility = 'hidden';
}
// --- DHTML Tuner style names ---
var bstylesNames=["Individual Style 1",];
// --- End of DHTML Tuner style names ---

//------- Common -------
var bblankImage = "imagens/abas/blank.gif";
var bselectedItem = 0;
var bselectedSmItem = -1;

//------- Menu -------
var bmenuOrientation = 0;
var bmenuWidth = "450";
var bmenuHeight = 19;
var bmenuBorderWidth = 0;
var bmenuBorderStyle = "ridge";
var bmenuBackImage = "";

//------- Submenus -------
var bsmHeight = "10";
var bsmBackColor = "#FFFFFF";
var bsmBorderBottomDraw = 1;
var bsmBorderWidth = 1;
var bsmBorderStyle = "solid";
var bsmBorderColor = "#91A7B4";
var bsmItemAlign = "center";
var bsmItemSpacing = 1;
var bsmItemPadding = 0;

//------- Menu Positioning -------
var babsolute = 0;
var bleft = 120;
var btop = 120;
var bfloatable = 1;
var bfloatIterations = 6;
var tmoveable = 0;
var tmoveImage = "";
var tmoveImageHeight = 20;

//------- Font -------
var bfontStyle = ["normal 8pt Tahoma","",""];
var bfontColor = ["#000000","",""];
var bfontDecoration = ["","",""];

//------- Items -------
var bbeforeItemSpace = 0;
var bafterItemSpace = 0;
var bitemBorderStyle = ["ridge","ridge","ridge"];
var bitemBorderWidth = 0;
var bitemSpacing = 0;
var bitemPadding = 0;
var browSpace = 0;
var bitemAlign = "center";
var bitemCursor = "default";
var bitemTarget = "_blank";

//------- Item Images -------
var bitemBackImage = ["imagens/abas/tab01_back_n.gif","imagens/abas/tab01_back_o.gif","imagens/abas/tab01_back_s.gif"];
var bbeforeItemImage = ["imagens/abas/tab01_before_n.gif","imagens/abas/tab01_before_o.gif","imagens/abas/tab01_before_s.gif"];
var bbeforeItemImageW = 5;
var bbeforeItemImageH = 20;
var bafterItemImage = ["imagens/abas/tab01_after_n.gif","imagens/abas/tab01_after_o.gif","imagens/abas/tab01_after_s.gif"];
var bafterItemImageW = 5;
var bafterItemImageH = 20;

//------- Colors -------
var bmenuBackColor = "";
var bmenuBorderColor = "";
var bitemBorderColor = ["","",""];
var bitemBackColor = ["#ffffff","#FFEEB9","#F9BC00"];

//------- Icons -------
var biconWidth = 16;
var biconHeight = 16;
var biconAlign = "left";

//------- Separators -------
var bseparatorWidth = 1;

var bstyles = [
    ["bitemBorderWidth=1","bitemBorderStyle=solid,solid,solid","bitemBackImage=none,,","bbeforeItemImage=none,,","bafterItemImage=none,,","bitemBackColor=#ffffff,#bbccee,#bbccee","bitemBorderColor=#ffffff,#316AC5,#316AC5"],
];

var bmenuItems = [

    ["Informações Gerais","javascript:show(true,'geral');javascript:show(false,'emprego');;javascript:show(false,'conjuge');javascript:show(false,'obs');", "", "", "", "", "", "", "", "", "",],
    ["Emprego","javascript:show(true,'emprego');javascript:show(false,'geral');;javascript:show(false,'conjuge');javascript:show(false,'obs');", "", "", "", "", "", "", "", "", "",],
	["Conjuge/Filiação","javascript:show(true,'conjuge');javascript:show(false,'geral');javascript:show(false,'emprego');javascript:show(false,'obs');", "", "", "", "", "", "", "", "", "",],
	["Observações","javascript:show(true,'obs');javascript:show(false,'conjuge');javascript:show(false,'geral');javascript:show(false,'emprego');", "", "", "", "", "", "", "", "", "",],
	
];

apy_tabsInit();