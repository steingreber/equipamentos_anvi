function ConteudoFlash(nomefla, altura, largura){
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+largura+'" height="'+altura+'" id="c4" align="middle">\n');
document.write('<param name="allowScriptAccess" value="sameDomain" />\n');
document.write('<param name="Menu" value="false">');
document.write('<param name="movie" value="'+nomefla+'" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="'+nomefla+'.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+largura+'" height="'+altura+'" name="top_ micro" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\n');
document.write('</object>\n');
}

function exibe_b(xqual){
if (xqual == 1)
{
	//pessoa fisica
	document.getElementById("fatasia").style.display = 'none';
	document.getElementById("razao").style.display = 'none';
	document.getElementById("sexo").style.display = 'block';
	document.getElementById("estcivil").style.display = 'block';
	document.getElementById("dtnasc").style.display = 'block';
	document.getElementById("cpf").style.display = 'block';
	document.getElementById("rg").style.display = 'block';
	document.getElementById("cnpj").style.display = 'none';
	document.getElementById("insc").style.display = 'none';
}
else if (xqual == 2)
{
	//pessoa juridica
	document.getElementById("fatasia").style.display = 'block';
	document.getElementById("razao").style.display = 'block';
	document.getElementById("sexo").style.display = 'none';
	document.getElementById("estcivil").style.display = 'none';
	document.getElementById("dtnasc").style.display = 'none';
	document.getElementById("cpf").style.display = 'none';
	document.getElementById("rg").style.display = 'none';
	document.getElementById("cnpj").style.display = 'block';
	document.getElementById("insc").style.display = 'block';
}
else if (xqual == 3)
{
	//Modo grade
	document.getElementById("bt00").style.display = 'none'; 	//gravar
	document.getElementById("bt01").style.display = 'none'; 	//cancelar
	document.getElementById("bt02").style.display = 'none'; 	//vazio1
	document.getElementById("bt03").style.display = 'none'; 	//primeiro
	document.getElementById("bt04").style.display = 'none'; 	//anterior
	document.getElementById("bt05").style.display = 'none'; 	//proximo
	document.getElementById("bt06").style.display = 'none'; 	//ultimo
	document.getElementById("bt07").style.display = 'none'; 	//vazio2
	document.getElementById("bt08").style.display = 'block';	//novo
	document.getElementById("bt09").style.display = 'none'; 	//excluir
	document.getElementById("bt10").style.display = 'none'; 	//editar	
	document.getElementById("bt11").style.display = 'block';	//vazio3
	document.getElementById("bt12").style.display = 'none'; 	//modo1
	document.getElementById("bt13").style.display = 'none'; 	//modo2
	document.getElementById("bt14").style.display = 'block';	//pesquisa
	document.getElementById("bt15").style.display = 'block';	//vazio4
	document.getElementById("bt16").style.display = 'block';	//sair
}
else if (xqual == 4)
{
	//modo formulario
	document.getElementById("bt00").style.display = 'none'; 	//gravar
	document.getElementById("bt01").style.display = 'none'; 	//cancelar
	document.getElementById("bt02").style.display = 'block'; 	//vazio1
	document.getElementById("bt03").style.display = 'block'; 	//primeiro
	document.getElementById("bt04").style.display = 'block'; 	//anterior
	document.getElementById("bt05").style.display = 'block'; 	//proximo
	document.getElementById("bt06").style.display = 'block'; 	//ultimo
	document.getElementById("bt07").style.display = 'block'; 	//vazio2
	document.getElementById("bt08").style.display = 'block';	//novo
	document.getElementById("bt09").style.display = 'block'; 	//excluir
	document.getElementById("bt10").style.display = 'block'; 	//editar	
	document.getElementById("bt11").style.display = 'block';	//vazio3
	document.getElementById("bt12").style.display = 'block'; 	//modo1
	document.getElementById("bt13").style.display = 'none'; 	//modo2
	document.getElementById("bt14").style.display = 'block';	//pesquisa
	document.getElementById("bt15").style.display = 'block';	//vazio4
	document.getElementById("bt16").style.display = 'block';	//sair
}
}

function confirm_delete() {
  return confirm ("Você realmente deseja excluir este registro?")
}

function camada( sId ) {
  var sDiv = document.getElementById( sId );
  if( sDiv.style.visibility == "hidden" ) {
    sDiv.style.visibility = "visible";
  } else {
    sDiv.style.visibility = "hidden";
  }
}

function ajax(url,div,mes) 
{ 
document.getElementById(div).innerHTML='<div align="center" class="carregando"><br><img src="imagens/carregando.gif"><br /><br />'+mes+'</div>'
mostra=document.getElementById(div);
    req = null; 
    if (window.XMLHttpRequest) { 
        req = new XMLHttpRequest(); 
        req.onreadystatechange = processReqChange; 
        req.open("GET",url,true); 
        req.send(null); 
    } else if (window.ActiveXObject) { 
        req = new ActiveXObject("Microsoft.XMLHTTP"); 
        if (req) {
		
         req.onreadystatechange = processReqChange; 
         req.open("GET",url,true); 
	 
            req.send(); 
        } 
    } 
}

function processReqChange() 
{
    if (req.readyState == 4) { 
        if (req.status ==200) { 
			mostra.innerHTML = req.responseText;
        } else { 
            alert("Houve um problema ao obter os dados:\n" + req.statusText); 
        } 
    } 
} 