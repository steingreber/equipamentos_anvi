//Valida curriculo
function validaCurriculo(theForm)
{
  if (theForm.cp_a02taempregado && !EW_hasValue(theForm.cp_a02taempregado, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a02taempregado, "RADIO", "ESTA EMPREGADO?!"))
            return false;
    }
if (theForm.cp_a03areadeinteresse && !EW_hasValue(theForm.cp_a03areadeinteresse, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a03areadeinteresse, "TEXT", "Informe sua AREA DE INTERESSE"))
            return false;
    }
if (theForm.cp_a04escolaridade && !EW_hasValue(theForm.cp_a04escolaridade, "SELECT" )) {
        if (!EW_onError(theForm, theForm.cp_a04escolaridade, "SELECT", "Selecione a ESCOLARIDADE"))
            return false;
    }
if (theForm.cp_a05Inicio && !EW_hasValue(theForm.cp_a05Inicio, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a05Inicio, "TEXT", "Informe a DATA DE INICIO DA FORMAÇÃO"))
            return false;
    }
if (theForm.cp_a06fim && !EW_hasValue(theForm.cp_a06fim, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a06fim, "TEXT", "Informe a DATA DE FIM DA FORMAÇÃO"))
            return false;
    }
if (theForm.cp_a07curso && !EW_hasValue(theForm.cp_a07curso, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a07curso, "TEXT", "Informe um valor para o campo CURSO"))
            return false;
    }
  if (theForm.cp_a08alemao && !EW_hasValue(theForm.cp_a08alemao, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a08alemao, "RADIO", "Fala ALEMÃO?"))
            return false;
    }
  if (theForm.cp_a09tipo && !EW_hasValue(theForm.cp_a09tipo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a09tipo, "RADIO", "Que NÍVEL ALEMÃO?"))
            return false;
    }
  if (theForm.cp_a10espanhol && !EW_hasValue(theForm.cp_a10espanhol, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a10espanhol, "RADIO", "Fala ESPANHOL?"))
            return false;
    }
  if (theForm.cp_a11tipo && !EW_hasValue(theForm.cp_a11tipo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a11tipo, "RADIO", "Que NÍVEL ESPANHOL?"))
            return false;
    }
  if (theForm.cp_a12alemao && !EW_hasValue(theForm.cp_a12alemao, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a12alemao, "RADIO", "Fala FRANCES?"))
            return false;
    }
  if (theForm.cp_a13tipo && !EW_hasValue(theForm.cp_a13tipo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a13tipo, "RADIO", "Que NÍVEL FRANCES?"))
            return false;
    }
  if (theForm.cp_a14ingles && !EW_hasValue(theForm.cp_a14ingles, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a14ingles, "RADIO", "Fala INGLES?"))
            return false;
    }
  if (theForm.cp_a159tipo && !EW_hasValue(theForm.cp_a159tipo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a159tipo, "RADIO", "Que NÍVEL INGLES?"))
            return false;
    }
  if (theForm.cp_a16italiano && !EW_hasValue(theForm.cp_a16italiano, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a16italiano, "RADIO", "Fala ITALIANO?"))
            return false;
    }
  if (theForm.cp_a17tipo && !EW_hasValue(theForm.cp_a17tipo, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a17tipo, "RADIO", "Que NÍVEL ITALIANO?"))
            return false;
    }
  if (theForm.cp_a18entrada && !EW_hasValue(theForm.cp_a18entrada, "TEXT" )) {
          if (!EW_onError(theForm, theForm.cp_a18entrada, "TEXT", "Informe a data correta para o campo DATA ENTRADA 1"))
              return false;
      }
  if (theForm.cp_a18entrada && !EW_checkeurodate(theForm.cp_a18entrada.value)) {
      if (!EW_onError(theForm, theForm.cp_a18entrada, "TEXT", "Data inválida para o campo DATA ENTRADA 1"))
          return false;
      }
  if (theForm.cp_a19saida && !EW_hasValue(theForm.cp_a19saida, "TEXT" )) {
          if (!EW_onError(theForm, theForm.cp_a19saida, "TEXT", "Informe a data correta para o campo DATA SAIDA 1 "))
              return false;
      }
  if (theForm.cp_a19saida && !EW_checkeurodate(theForm.cp_a19saida.value)) {
      if (!EW_onError(theForm, theForm.cp_a19saida, "TEXT", "Data inválida para o campo DATA SAIDA 1"))
          return false;
      }
  if (theForm.cp_a20atual && !EW_hasValue(theForm.cp_a20atual, "RADIO" )) {
          if (!EW_onError(theForm, theForm.cp_a20atual, "RADIO", "Selecione um valor para EMPREGO ATUAL!"))
            return false;
    }
if (theForm.cp_a21empresa && !EW_hasValue(theForm.cp_a21empresa, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a21empresa, "TEXT", "Informe um valor para o campo NOME DA EMPRESA"))
            return false;
    }
if (theForm.cp_a22cargo && !EW_hasValue(theForm.cp_a22cargo, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a22cargo, "TEXT", "Informe um valor para o campo CARGO 1"))
            return false;
    }
if (theForm.cp_a23atribuicoes && !EW_hasValue(theForm.cp_a23atribuicoes, "TEXTAREA" )) {
            if (!EW_onError(theForm, theForm.cp_a23atribuicoes, "TEXTAREA", "Informe um valor para o campo ATRIBUICOES"))
                return false;
        }
  if (theForm.cp_a24entrada && !EW_hasValue(theForm.cp_a24entrada, "TEXT" )) {
          if (!EW_onError(theForm, theForm.cp_a24entrada, "TEXT", "Informe a data correta para o campo DATA ENTRADA 2"))
              return false;
      }
  if (theForm.cp_a24entrada && !EW_checkeurodate(theForm.cp_a24entrada.value)) {
      if (!EW_onError(theForm, theForm.cp_a24entrada, "TEXT", "Data inválida para o campo DATA ENTRADA 2"))
          return false;
      }
  if (theForm.cp_a25saida && !EW_hasValue(theForm.cp_a25saida, "TEXT" )) {
          if (!EW_onError(theForm, theForm.cp_a25saida, "TEXT", "Informe a data correta para o campo DATA SAIDA 2"))
              return false;
      }
  if (theForm.cp_a25saida && !EW_checkeurodate(theForm.cp_a25saida.value)) {
      if (!EW_onError(theForm, theForm.cp_a25saida, "TEXT", "Data inválida para o campo DATA SAIDA 2"))
          return false;
      }
if (theForm.cp_a26cargo && !EW_hasValue(theForm.cp_a26cargo, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a26cargo, "TEXT", "Informe um valor para o campo CARGO 2"))
            return false;
    }
if (theForm.cp_a27atribuicoes && !EW_hasValue(theForm.cp_a27atribuicoes, "TEXTAREA" )) {
            if (!EW_onError(theForm, theForm.cp_a27atribuicoes, "TEXTAREA", "Informe um valor para o campo ATRIBUICOES"))
                return false;
        }
if (theForm.cp_a36curriculo && !EW_hasValue(theForm.cp_a36curriculo, "TEXTAREA" )) {
            if (!EW_onError(theForm, theForm.cp_a36curriculo, "TEXTAREA", "Anexe seu curriculo"))
                return false;
        }
  return true;
}

//Valida anuncio
function validaanuncio(theForm)
{
if (theForm.cp_a01produto && !EW_hasValue(theForm.cp_a01produto, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a01produto, "TEXT", "Informe um valor para o campo NOME DO PRODUTO"))
            return false;
    }
if (theForm.cp_a02descricao && !EW_hasValue(theForm.cp_a02descricao, "TEXTAREA" )) {
            if (!EW_onError(theForm, theForm.cp_a02descricao, "TEXTAREA", "Informe um valor para o campo DESCRICAO"))
                return false;
        }
if (theForm.cp_a03valor && !EW_hasValue(theForm.cp_a03valor, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a03valor, "TEXT", "Informe um valor para o campo VALOR"))
            return false;
    }
if (theForm.cp_a04idcad && !EW_hasValue(theForm.cp_a04idcad, "SELECT" )) {
        if (!EW_onError(theForm, theForm.cp_a04idcad, "SELECT", "Selecione um valor para o campo USUÁRIO"))
            return false;
    }
if (theForm.cp_a05foto && !EW_hasValue(theForm.cp_a05foto, "TEXT" )) {
        if (!EW_onError(theForm, theForm.cp_a05foto, "TEXT", "Selecione uma IMAGEM"))
            return false;
    }
  return true;
}

//Valida cadastro de acesso
function validacadastro(theForm)
{
  if (theForm.fu30username.value == "")
  {
    alert("Digite um valor para o campo EMAIL");
    theForm.fu30username.focus();
    return (false);
  }
  if (theForm.fu31senha.value == "")
  {
    alert("Digite um valor para o campo SENHA");
    theForm.fu31senha.focus();
    return (false);
  }
  if (theForm.fu01Nome.value == "")
  {
    alert("Digite um valor para o campo NOME ");
    theForm.fu01Nome.focus();
    return (false);
  }
  if (theForm.fu04FoneContato.value == "")
  {
    alert("Digite um valor para o campo FONE CONTATO");
    theForm.fu04FoneContato.focus();
    return (false);
  }
  if (theForm.fu05EstadoCivil.value == "")
  {
    alert("Selecione um valor para o campo ESTADO CIVIL");
    theForm.fu05EstadoCivil.focus();
    return (false);
  }
  if (theForm.fu06Sexo.value == "")
  {
    alert("Selecione um valor para o campo SEXO");
    theForm.fu06Sexo.focus();
    return (false);
  }
  if (theForm.fu07Identidade.value == "")
  {
    alert("Digite um valor para o campo RG");
    theForm.fu07Identidade.focus();
    return (false);
  }
  if (theForm.fu06CPF.value == "")
  {
    alert("Digite um valor para o campo CPF");
    theForm.fu06CPF.focus();
    return (false);
  }
  if (theForm.fu14EndRes.value == "")
  {
    alert("Digite um valor para o campo ENDEREÇO");
    theForm.fu14EndRes.focus();
    return (false);
  }
  if (theForm.fu15Numero.value == "")
  {
    alert("Digite um valor para o campo NÚMERO");
    theForm.fu15Numero.focus();
    return (false);
  }  
  if (theForm.fu19Cidade.value == "")
  {
    alert("Digite um valor para o campo CIDADE");
    theForm.fu19Cidade.focus();
    return (false);
  }
  if (theForm.fu20Estado.value == "")
  {
    alert("Digite um valor para o campo ESTADO");
    theForm.fu20Estado.focus();
    return (false);
  }
  if (theForm.fu18CEP.value == "")
  {
    alert("Digite um valor para o campo CEP");
    theForm.fu18CEP.focus();
    return (false);
  }
  if (theForm.fu02Data_Nascto.value == "")
  {
    alert("Digite um valor para o campo DATA NASCTO:");
    theForm.fu02Data_Nascto.focus();
    return (false);
  }
  return (true);
}

//Valida Login de acesso
function validalogin(theForm)
{
  if (theForm.email.value == "")
  {
    alert("Digite um valor para o campo EMAIL");
    theForm.email.focus();
    return (false);
  }
  if (theForm.senha.value == "")
  {
    alert("Digite um valor para o campo SENHA");
    theForm.senha.focus();
    return (false);
  }
  return (true);
}

function abrirproduto(pagina,titulo,largura, altura){
	pwindow=dhtmlmodal.open('ProdutoBox', 'iframe', pagina, titulo, 'width='+largura+'px,height='+altura+'px,center=1,resize=0,scrolling=1')
}

function validaContato(theForm)
{
  if (theForm.cp1NOME.value == "")
  {
    alert("O campo NOME não pode ser vazio!");
    theForm.cp1NOME.focus();
    return (false);
  }
  if (theForm.cp2CIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cp2CIDADE.focus();
    return (false);
  }
  if (theForm.cp3ESTADO.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cp3ESTADO.focus();
    return (false);
  }
  if (theForm.cp4DDD.value == "")
  {
    alert("O campo DDD não pode ser vazio!");
    theForm.cp4DDD.focus();
    return (false);
  }
  if (theForm.cp5FONE.value == "")
  {
    alert("O campo FONE não pode ser vazio!");
    theForm.cp5FONE.focus();
    return (false);
  }
  if (theForm.cp6EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp6EMAIL.focus();
    return (false);
  }
  return (true);
}

function validaProjeto(theForm)
{
  if (theForm.cp1NOME.value == "")
  {
    alert("O campo NOME não pode ser vazio!");
    theForm.cp1NOME.focus();
    return (false);
  }
  if (theForm.cp2PROPRIEDADE.value == "")
  {
    alert("O campo PROPRIEDADE não pode ser vazio!");
    theForm.cp2PROPRIEDADE.focus();
    return (false);
  }
  if (theForm.cp2Email.value == "")
  {
    alert("O campo E-MAIL não pode ser vazio!");
    theForm.cp2Email.focus();
    return (false);
  }
  if (theForm.cp3ENDERECO.value == "")
  {
    alert("O campo ENDEREÇO não pode ser vazio!");
    theForm.cp3ENDERECO.focus();
    return (false);
  }
  if (theForm.cp4CIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cp4CIDADE.focus();
    return (false);
  }
  if (theForm.cp5ESTADO.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cp5ESTADO.focus();
    return (false);
  }
  if (theForm.cp6DDD.value == "")
  {
    alert("O campo DDD não pode ser vazio!");
    theForm.cp6DDD.focus();
    return (false);
  }
  if (theForm.cp7FONE.value == "")
  {
    alert("O campo FONE não pode ser vazio!");
    theForm.cp7FONE.focus();
    return (false);
  }
  if (theForm.cp8AREA.value == "")
  {
    alert("O campo ÁREA A SER IRRIGADA não pode ser vazio!");
    theForm.cp8AREA.focus();
    return (false);
  }
  return (true);
}

function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function mostra(id){
	for (i=1;i<13;i++){
		tr1 = eval("r"+i+".style")
		tr1.display='none';
	}
	tr = eval("r"+id+".style")
	tr.display='';
}

//Ajusta o Telefone quando esta sendo digitado
function AjustarTelefone(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
	else 
	{ 
		if(Objeto.value.length==2)
		{
			Objeto.value="(" + Objeto.value + ") " ;		
		}
		else
		{
    	if(Objeto.value.length==9)
				{		
					Objeto.value=Objeto.value + "-";
				}
		}
	}
}

function AjustarNumero(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
}

//Ajusta a data quando esta sendo digitada
function AjustarData(Objeto) 
{
	if ((event.keyCode<48)||(event.keyCode>57)) 
	{
		event.returnValue = false; 
	}
	else 
	{
		if ((Objeto.value.length==2)||(Objeto.value.length==5))
		{
			Objeto.value=Objeto.value + "/";
		}
	}
}

function VerSwf()
{
	document.write ("<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0' width='780' height='139' id='topo_site' align='middle'><param name='allowScriptAccess' value='sameDomain' /><param name='movie' value='imagens/topo_site.swf' /><param name='quality' value='best' /><param name='wmode' value='transparent' /><embed src='imagens/topo_site.swf' quality='best' wmode='transparent' width='780' height='139' name='topo_site' align='middle' allowScriptAccess='sameDomain' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' /></object>");
}

function VerBannerSwf()
{
	document.write ("<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0' width='600' height='150' id='topo_site' align='middle'><param name='allowScriptAccess' value='sameDomain' /><param name='movie' value='imagens/banner.swf' /><param name='quality' value='best' /><param name='wmode' value='transparent' /><embed src='imagens/banner.swf' quality='best' wmode='transparent' width='600' height='150' name='topo_site' align='middle' allowScriptAccess='sameDomain' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' /></object>");
}

function BannerSwfpq()
{
	document.write ("<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0' width='580' height='70' id='topo_site' align='middle'><param name='allowScriptAccess' value='sameDomain' /><param name='movie' value='imagens/banner_pq.swf' /><param name='quality' value='best' /><param name='wmode' value='transparent' /><embed src='imagens/banner_pq.swf' quality='best' wmode='transparent' width='580' height='70' name='topo_site' align='middle' allowScriptAccess='sameDomain' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' /></object>");
}

function ConteudoFlash(nomefla, altura, largura){
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="'+largura+'" height="'+altura+'" id="c4" align="middle">');
	document.write('<param name="allowScriptAccess" value="sameDomain" />');
	document.write('<param name="Menu" value="false" />');
	document.write('<param name="movie" value="'+nomefla+'" />');
	document.write('<param name="quality" value="high" />');
	document.write('<param name="wmode" value="transparent" />');
	document.write('<param name="bgcolor" value="#ffffff" />');
	document.write('<embed src="'+nomefla+'.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+largura+'" height="'+altura+'" name="top_ micro" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
	document.write('</object>');
}

function ajax(url,div,mes) 
{ 
document.getElementById(div).innerHTML='<div align="center" class="carregando"><br><img src="imagens/carregando.gif"><br /><br /><font face="Verdana" size="2">'+mes+'</font></div>'
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

function go2url() {
window.location = "index.asp";
}

function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
   var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
   if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function fotoZoom(img){
  foto1= new Image();
  foto1.src=(img);
  Controlla(img);
}
function Controlla(img){
  if((foto1.width!=0)&&(foto1.height!=0)){
    viewFoto(img);
  }
  else{
    funzione="Controlla('"+img+"')";
    intervallo=setTimeout(funzione,20);
  }
}
function viewFoto(img){
  largh=foto1.width+20;
  altez=foto1.height+20;
  stringa="width="+largh+",height="+altez;
  finestra=window.open(img,"",stringa);
}

function Abrejanelaenquete(ID){
	popup = window.open(ID,'janelaen','toolbar=no,location=no,status=no,scrollbars=yes,resizable=no,top=0,left=0,width=335,height=451');
	self.janelaen=popup;
}
	
function open_window(name, url, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
{
  toolbar_str = toolbar ? 'yes' : 'no';
  menubar_str = menubar ? 'yes' : 'no';
  statusbar_str = statusbar ? 'yes' : 'no';
  scrollbar_str = scrollbar ? 'yes' : 'no';
  resizable_str = resizable ? 'yes' : 'no';

  cookie_str = document.cookie;
  cookie_str.toString();

  pos_start  = cookie_str.indexOf(name);
  pos_end    = cookie_str.indexOf('=', pos_start);

  cookie_name = cookie_str.substring(pos_start, pos_end);

  pos_start  = cookie_str.indexOf(name);
  pos_start  = cookie_str.indexOf('=', pos_start);
  pos_end    = cookie_str.indexOf(';', pos_start);
  
  if (pos_end <= 0) pos_end = cookie_str.length;
  cookie_val = cookie_str.substring(pos_start + 1, pos_end);
  if (cookie_name == name && cookie_val  == "done")
    return;

  window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

//VALIDA CONTATO
function Validator(theForm)
{
  if (theForm.cp1NOME.value == "")
  {
    alert("O campo NOME não pode ser vazio!");
    theForm.cp1NOME.focus();
    return (false);
  }
  if (theForm.cp2CIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cp2CIDADE.focus();
    return (false);
  }
  if (theForm.cp3ESTADO.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cp3ESTADO.focus();
    return (false);
  }
  if (theForm.cp5FONE.value == "")
  {
    alert("O campo FONE não pode ser vazio!");
    theForm.cp5FONE.focus();
    return (false);
  }
  if (theForm.cp6EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp6EMAIL.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp6EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL não é válido!");
    theForm.cp6EMAIL.focus();
    return (false);
  }
  return (true);
}

//VALIDA INFORMATIVOS
function ValidatorInfo(theForm)
{
  if (theForm.cp_NOME.value == "")
  {
    alert("O campo NOME não pode ser vazio!");
    theForm.cp_NOME.focus();
    return (false);
  }
  if (theForm.cp_EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp_EMAIL.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp_EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL não é válido!");
    theForm.cp_EMAIL.focus();
    return (false);
  }
  return (true);
}

function pedidoValor(theForm)
{
  if (theForm.cp2SEUNOME.value == "")
  {
    alert("O campo SEU NOME não pode ser vazio!");
    theForm.cp2SEUNOME.focus();
    return (false);
  }
  if (theForm.cp4EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp4EMAIL.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp_EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL não é válido!");
    theForm.cp_EMAIL.focus();
    return (false);
  }
  return (true);
}

function indicar(theForm)
{
  if (theForm.seunome.value == "")
  {
    alert("O campo NOME não pode ser vazio!");
    theForm.seunome.focus();
    return (false);
  }
  if (theForm.seuemail.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.seuemail.focus();
    return (false);
  }
  if (theForm.nomeamigo.value == "")
  {
    alert("O nome de seu amigo não pode ser vazio!");
    theForm.nomeamigo.focus();
    return (false);
  }
  if (theForm.emailamigo.value == "")
  {
    alert("O email de seu amigo não pode ser vazio!");
    theForm.emailamigo.focus();
    return (false);
  }
  return (true);
}

function validaAtend(theForm)
{
  if (theForm.cp1AREA.value == "")
  {
    alert("Selecione a área de atendimento");
    theForm.cp1AREA.focus();
    return (false);
  }
  if (theForm.cp2SEUNOME.value == "")
  {
    alert("O campo SEU NOME não pode ser vazio!");
    theForm.cp2SEUNOME.focus();
    return (false);
  }
    if (theForm.cpCIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cpCIDADE.focus();
    return (false);
  }
     if (theForm.cpUF.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cpUF.focus();
    return (false);
  }
  if (theForm.cp4DDD.value == "")
  {
    alert("O campo DDD não pode ser vazio!");
    theForm.cp4DDD.focus();
    return (false);
  }
  if (theForm.cp5TELEFONE.value == "")
  {
    alert("O campo TELEFONE não pode ser vazio!");
    theForm.cp5TELEFONE.focus();
    return (false);
  }
    if (theForm.cp3EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp3EMAIL.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp3EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL não é válido!");
    theForm.cp3EMAIL.focus();
    return (false);
  }
  return (true);
}

function validaAssessor(theForm)
{
  if (theForm.cp2SEUNOME.value == "")
  {
    alert("O campo SEU NOME não pode ser vazio!");
    theForm.cp2SEUNOME.focus();
    return (false);
  }
  if (theForm.cp4EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp4EMAIL.focus();
    return (false);
  }
  if (theForm.cp5ENDERECO.value == "")
  {
    alert("O campo ENDERECO não pode ser vazio!");
    theForm.cp5ENDERECO.focus();
    return (false);
  }
  if (theForm.cp7CIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cp7CIDADE.focus();
    return (false);
  }
  if (theForm.cp8ESTADO.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cp8ESTADO.focus();
    return (false);
  }
  if (theForm.cp9CEP.value == "")
  {
    alert("O campo CEP não pode ser vazio!");
    theForm.cp9CEP.focus();
    return (false);
  }
  if (theForm.cp10DDD.value == "")
  {
    alert("O campo DDD não pode ser vazio!");
    theForm.cp10DDD.focus();
    return (false);
  }
  if (theForm.cp11FONE.value == "")
  {
    alert("O campo TELEFONE não pode ser vazio!");
    theForm.cp11FONE.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp4EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL informado não é válido!");
    theForm.cp4EMAIL.focus();
    return (false);
  }
  return (true);
}

function validaRepresentante(theForm)
{
  if (theForm.cp2SEUNOME.value == "")
  {
    alert("O campo SEU NOME não pode ser vazio!");
    theForm.cp2SEUNOME.focus();
    return (false);
  }
  if (theForm.cp3CPF.value == "")
  {
    alert("O campo CPF não pode ser vazio!");
    theForm.cp3CPF.focus();
    return (false);
  }
  if (theForm.cp2RG.value == "")
  {
    alert("O campo RG não pode ser vazio!");
    theForm.cp2RG.focus();
    return (false);
  }
  if (theForm.cp4EMAIL.value == "")
  {
    alert("O campo EMAIL não pode ser vazio!");
    theForm.cp4EMAIL.focus();
    return (false);
  }
  if (theForm.cp5ENDERECO.value == "")
  {
    alert("O campo ENDERECO não pode ser vazio!");
    theForm.cp5ENDERECO.focus();
    return (false);
  }
  if (theForm.cp7CIDADE.value == "")
  {
    alert("O campo CIDADE não pode ser vazio!");
    theForm.cp7CIDADE.focus();
    return (false);
  }
  if (theForm.cp8ESTADO.value == "")
  {
    alert("O campo ESTADO não pode ser vazio!");
    theForm.cp8ESTADO.focus();
    return (false);
  }
  if (theForm.cp9CEP.value == "")
  {
    alert("O campo CEP não pode ser vazio!");
    theForm.cp9CEP.focus();
    return (false);
  }
  if (theForm.cp10DDD.value == "")
  {
    alert("O campo DDD não pode ser vazio!");
    theForm.cp10DDD.focus();
    return (false);
  }
  if (theForm.cp11FONE.value == "")
  {
    alert("O campo TELEFONE não pode ser vazio!");
    theForm.cp11FONE.focus();
    return (false);
  }
  if (theForm.banco.value == "")
  {
    alert("Informe o nome do banco!");
    theForm.banco.focus();
    return (false);
  }
  if (theForm.agencia.value == "")
  {
    alert("Informe o número da agência");
    theForm.agencia.focus();
    return (false);
  }
  if (theForm.conta.value == "")
  {
    alert("Informe o número da conta");
    theForm.conta.focus();
    return (false);
  }
  if (theForm.tipoconta.value == "")
  {
    alert("Selecione o tipo de sua conta.");
    theForm.tipoconta.focus();
    return (false);
  }
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(theForm.cp4EMAIL.value)){
  return (true)
  }
  {
    alert("O EMAIL informado não é válido!");
    theForm.cp4EMAIL.focus();
    return (false);
  }
  return (true);
}

//v1.0
//Copyright 2006 Adobe Systems, Inc. All rights reserved.
function AC_AddExtension(src, ext)
{
  if (src.indexOf('?') != -1)
    return src.replace(/\?/, ext+'?'); 
  else
    return src + ext;
}

function AC_Generateobj(objAttrs, params, embedAttrs) 
{ 
  var str = '<object ';
  for (var i in objAttrs)
    str += i + '="' + objAttrs[i] + '" ';
  str += '>';
  for (var i in params)
    str += '<param name="' + i + '" value="' + params[i] + '" /> ';
  str += '<embed ';
  for (var i in embedAttrs)
    str += i + '="' + embedAttrs[i] + '" ';
  str += ' ></embed></object>';

  document.write(str);
}

function AC_FL_RunContent(){
  var ret = 
    AC_GetArgs
    (  arguments, ".swf", "movie", "clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
     , "application/x-shockwave-flash"
    );
  AC_Generateobj(ret.objAttrs, ret.params, ret.embedAttrs);
}

function AC_SW_RunContent(){
  var ret = 
    AC_GetArgs
    (  arguments, ".dcr", "src", "clsid:166B1BCA-3F9C-11CF-8075-444553540000"
     , null
    );
  AC_Generateobj(ret.objAttrs, ret.params, ret.embedAttrs);
}

function AC_GetArgs(args, ext, srcParamName, classid, mimeType){
  var ret = new Object();
  ret.embedAttrs = new Object();
  ret.params = new Object();
  ret.objAttrs = new Object();
  for (var i=0; i < args.length; i=i+2){
    var currArg = args[i].toLowerCase();    

    switch (currArg){	
      case "classid":
        break;
      case "pluginspage":
        ret.embedAttrs[args[i]] = args[i+1];
        break;
      case "src":
      case "movie":	
        args[i+1] = AC_AddExtension(args[i+1], ext);
        ret.embedAttrs["src"] = args[i+1];
        ret.params[srcParamName] = args[i+1];
        break;
      case "onafterupdate":
      case "onbeforeupdate":
      case "onblur":
      case "oncellchange":
      case "onclick":
      case "ondblClick":
      case "ondrag":
      case "ondragend":
      case "ondragenter":
      case "ondragleave":
      case "ondragover":
      case "ondrop":
      case "onfinish":
      case "onfocus":
      case "onhelp":
      case "onmousedown":
      case "onmouseup":
      case "onmouseover":
      case "onmousemove":
      case "onmouseout":
      case "onkeypress":
      case "onkeydown":
      case "onkeyup":
      case "onload":
      case "onlosecapture":
      case "onpropertychange":
      case "onreadystatechange":
      case "onrowsdelete":
      case "onrowenter":
      case "onrowexit":
      case "onrowsinserted":
      case "onstart":
      case "onscroll":
      case "onbeforeeditfocus":
      case "onactivate":
      case "onbeforedeactivate":
      case "ondeactivate":
      case "type":
      case "codebase":
        ret.objAttrs[args[i]] = args[i+1];
        break;
      case "width":
      case "height":
      case "align":
      case "vspace": 
      case "hspace":
      case "class":
      case "title":
      case "accesskey":
      case "name":
      case "id":
      case "tabindex":
        ret.embedAttrs[args[i]] = ret.objAttrs[args[i]] = args[i+1];
        break;
      default:
        ret.embedAttrs[args[i]] = ret.params[args[i]] = args[i+1];
    }
  }
  ret.objAttrs["classid"] = classid;
  if (mimeType) ret.embedAttrs["type"] = mimeType;
  return ret;
}


// Form Validation JavaScript

function EW_onError(form_object, input_object, object_type, error_message) {
	alert(error_message);									
	if (object_type == "RADIO" || object_type == "CHECKBOX") {
		if (input_object[0])
			input_object[0].focus();
		else
			input_object.focus();
	}	else if (!(document.all && document.all["_"+input_object.name+"_editor"])) { 
		input_object.focus();  
	}  
	if (object_type == "TEXT" || object_type == "PASSWORD" || object_type == "TEXTAREA" || object_type == "FILE") {
		if (!(document.all && document.all["_"+input_object.name+"_editor"]))
			input_object.select();
	}
	return false;	
}

function EW_hasValue(obj, obj_type) {
	if (obj_type == "TEXT" || obj_type == "PASSWORD" || obj_type == "TEXTAREA" || obj_type == "FILE")	{
		if (obj.value.length == 0) 
			return false;
		else if (document.all && document.all["_"+obj.name+"_editor"] && (obj.value == '<P>&nbsp;</P>'))
			return false;  
		else 
			return true;
	}	else if (obj_type == "SELECT") {
		if (obj.type != "select-multiple" && obj.selectedIndex == 0)
			return false;
		else if (obj.type == "select-multiple" && obj.selectedIndex == -1)
			return false;
		else
			return true;
	}	else if (obj_type == "RADIO" || obj_type == "CHECKBOX")	{
		if (obj[0]) {
			for (i=0; i < obj.length; i++) {
				if (obj[i].checked)
					return true;
			}
		} else {
			return (obj.checked);
		}
		return false;	
	}
}

// Date (mm/dd/yyyy)
function EW_checkusdate(object_value) {
	if (object_value.length == 0)
		return true;
	
	isplit = object_value.indexOf('/');
	
	if (isplit == -1 || isplit == object_value.length)
		return false;
	
	sMonth = object_value.substring(0, isplit);
	
	if (sMonth.length == 0)
		return false;
	
	isplit = object_value.indexOf('/', isplit + 1);
	
	if (isplit == -1 || (isplit + 1 ) == object_value.length)
		return false;
	
	sDay = object_value.substring((sMonth.length + 1), isplit);
	
	if (sDay.length == 0)
		return false;
	
	isep = object_value.indexOf(' ', isplit + 1); 
	if (isep == -1) {
		sYear = object_value.substring(isplit + 1);
	} else {
		sYear = object_value.substring(isplit + 1, isep);
		sTime = object_value.substring(isep + 1);
		if (!EW_checktime(sTime))
			return false; 
	}
	
	if (!EW_checkinteger(sMonth)) 
		return false;
	else if (!EW_checkrange(sMonth, 1, 12)) 
		return false;
	else if (!EW_checkinteger(sYear)) 
		return false;
	else if (!EW_checkrange(sYear, 0, 9999)) 
		return false;
	else if (!EW_checkinteger(sDay)) 
		return false;
	else if (!EW_checkday(sYear, sMonth, sDay))
		return false;
	else
		return true;
}

// Date (yyyy/mm/dd)
function EW_checkdate(object_value) {
	if (object_value.length == 0)
		return true;
	
	isplit = object_value.indexOf('/');
	
	if (isplit == -1 || isplit == object_value.length)
		return false;
	
	sYear = object_value.substring(0, isplit);
	
	isplit = object_value.indexOf('/', isplit + 1);
	
	if (isplit == -1 || (isplit + 1 ) == object_value.length)
		return false;
	
	sMonth = object_value.substring((sYear.length + 1), isplit);
	
	if (sMonth.length == 0)
		return false;
	
	isep = object_value.indexOf(' ', isplit + 1); 
	if (isep == -1) {
		sDay = object_value.substring(isplit + 1);
	} else {
		sDay = object_value.substring(isplit + 1, isep);
		sTime = object_value.substring(isep + 1);
		if (!EW_checktime(sTime))
			return false; 
	}
	
	if (sDay.length == 0)
		return false;
	
	if (!EW_checkinteger(sMonth)) 
		return false;
	else if (!EW_checkrange(sMonth, 1, 12)) 
		return false;
	else if (!EW_checkinteger(sYear)) 
		return false;
	else if (!EW_checkrange(sYear, 0, 9999)) 
		return false;
	else if (!EW_checkinteger(sDay)) 
		return false;
	else if (!EW_checkday(sYear, sMonth, sDay))
		return false;
	else
		return true;
}

// Date (dd/mm/yyyy)
function EW_checkeurodate(object_value) {
	if (object_value.length == 0)
	  return true;
	
	isplit = object_value.indexOf('/');
	
	if (isplit == -1)	{
		isplit = object_value.indexOf('.');
	}
	
	if (isplit == -1 || isplit == object_value.length)
		return false;
	
	sDay = object_value.substring(0, isplit);
	
	monthSplit = isplit + 1;
	
	isplit = object_value.indexOf('/', monthSplit);
	
	if (isplit == -1)	{
		isplit = object_value.indexOf('.', monthSplit);
	}
	
	if (isplit == -1 ||  (isplit + 1 )  == object_value.length)
		return false;
	
	sMonth = object_value.substring((sDay.length + 1), isplit);
	
	isep = object_value.indexOf(' ', isplit + 1); 
	if (isep == -1) {
		sYear = object_value.substring(isplit + 1);
	} else {
		sYear = object_value.substring(isplit + 1, isep);
		sTime = object_value.substring(isep + 1);
		if (!EW_checktime(sTime))
			return false; 
	}
	
	if (!EW_checkinteger(sMonth)) 
		return false;
	else if (!EW_checkrange(sMonth, 1, 12)) 
		return false;
	else if (!EW_checkinteger(sYear)) 
		return false;
	else if (!EW_checkrange(sYear, 0, null)) 
		return false;
	else if (!EW_checkinteger(sDay)) 
		return false;
	else if (!EW_checkday(sYear, sMonth, sDay)) 
		return false;
	else
		return true;
}

function EW_checkday(checkYear, checkMonth, checkDay) {
	maxDay = 31;
	
	if (checkMonth == 4 || checkMonth == 6 ||	checkMonth == 9 || checkMonth == 11) {
		maxDay = 30;
	} else if (checkMonth == 2)	{
		if (checkYear % 4 > 0)
			maxDay =28;
		else if (checkYear % 100 == 0 && checkYear % 400 > 0)
			maxDay = 28;
		else
			maxDay = 29;
	}
	
	return EW_checkrange(checkDay, 1, maxDay); 
}

function EW_checkinteger(object_value) {
	if (object_value.length == 0)
		return true;
	
	var decimal_format = ".";
	var check_char;
	
	check_char = object_value.indexOf(decimal_format);
	if (check_char < 1)
		return EW_checknumber(object_value);
	else
		return false;
}

function EW_numberrange(object_value, min_value, max_value) {
	if (min_value != null) {
		if (object_value < min_value)
			return false;
	}
	
	if (max_value != null) {
		if (object_value > max_value)
			return false;
	}
	
	return true;
}

function EW_checknumber(object_value) {
	if (object_value.length == 0)
		return true;
	
	var start_format = " .+-0123456789";
	var number_format = " .0123456789";
	var check_char;
	var decimal = false;
	var trailing_blank = false;
	var digits = false;
	
	check_char = start_format.indexOf(object_value.charAt(0));
	if (check_char == 1)
		decimal = true;
	else if (check_char < 1)
		return false;
	 
	for (var i = 1; i < object_value.length; i++)	{
		check_char = number_format.indexOf(object_value.charAt(i))
		if (check_char < 0) {
			return false;
		} else if (check_char == 1)	{
			if (decimal)
				return false;
			else
				decimal = true;
		} else if (check_char == 0) {
			if (decimal || digits)	
			trailing_blank = true;
		}	else if (trailing_blank) { 
			return false;
		} else {
			digits = true;
		}
	}	
	
	return true;
}

function EW_checkrange(object_value, min_value, max_value) {
	if (object_value.length == 0)
		return true;
	
	if (!EW_checknumber(object_value))
		return false;
	else
		return (EW_numberrange((eval(object_value)), min_value, max_value));	
	
	return true;
}

function EW_checktime(object_value) {
	if (object_value.length == 0)
		return true;
	
	isplit = object_value.indexOf(':');
	
	if (isplit == -1 || isplit == object_value.length)
		return false;
	
	sHour = object_value.substring(0, isplit);
	iminute = object_value.indexOf(':', isplit + 1);
	
	if (iminute == -1 || iminute == object_value.length)
		sMin = object_value.substring((sHour.length + 1));
	else
		sMin = object_value.substring((sHour.length + 1), iminute);
	
	if (!EW_checkinteger(sHour))
		return false;
	else if (!EW_checkrange(sHour, 0, 23)) 
		return false;
	
	if (!EW_checkinteger(sMin))
		return false;
	else if (!EW_checkrange(sMin, 0, 59))
		return false;
	
	if (iminute != -1) {
		sSec = object_value.substring(iminute + 1);		
		if (!EW_checkinteger(sSec))
			return false;
		else if (!EW_checkrange(sSec, 0, 59))
			return false;	
	}
	
	return true;
}

function EW_checkphone(object_value) {
	if (object_value.length == 0)
		return true;
	
	if (object_value.length != 12)
		return false;
	
	if (!EW_checknumber(object_value.substring(0,3)))
		return false;
	else if (!EW_numberrange((eval(object_value.substring(0,3))), 100, 1000))
		return false;
	
	if (object_value.charAt(3) != "-" && object_value.charAt(3) != " ")
		return false
	
	if (!EW_checknumber(object_value.substring(4,7)))
		return false;
	else if (!EW_numberrange((eval(object_value.substring(4,7))), 100, 1000))
		return false;
	
	if (object_value.charAt(7) != "-" && object_value.charAt(7) != " ")
		return false;
	
	if (object_value.charAt(8) == "-" || object_value.charAt(8) == "+")
		return false;
	else
		return (EW_checkinteger(object_value.substring(8,12)));
}


function EW_checkzip(object_value) {
	if (object_value.length == 0)
		return true;
	
	if (object_value.length != 5 && object_value.length != 10)
		return false;
	
	if (object_value.charAt(0) == "-" || object_value.charAt(0) == "+")
		return false;
	
	if (!EW_checkinteger(object_value.substring(0,5)))
		return false;
	
	if (object_value.length == 5)
		return true;
	
	if (object_value.charAt(5) != "-" && object_value.charAt(5) != " ")
		return false;
	
	if (object_value.charAt(6) == "-" || object_value.charAt(6) == "+")
		return false;
	
	return (EW_checkinteger(object_value.substring(6,10)));
}


function EW_checkcreditcard(object_value) {
	var white_space = " -";
	var creditcard_string = "";
	var check_char;
	
	if (object_value.length == 0)
		return true;
	
	for (var i = 0; i < object_value.length; i++) {
		check_char = white_space.indexOf(object_value.charAt(i));
		if (check_char < 0)
			creditcard_string += object_value.substring(i, (i + 1));
	}	
	
	if (creditcard_string.length == 0)
		return false;	 
	
	if (creditcard_string.charAt(0) == "+")
		return false;
	
	if (!EW_checkinteger(creditcard_string))
		return false;
	
	var doubledigit = creditcard_string.length % 2 == 1 ? false : true;
	var checkdigit = 0;
	var tempdigit;
	
	for (var i = 0; i < creditcard_string.length; i++) {
		tempdigit = eval(creditcard_string.charAt(i));		
		if (doubledigit) {
			tempdigit *= 2;
			checkdigit += (tempdigit % 10);			
			if ((tempdigit / 10) >= 1.0)
				checkdigit++;			
			doubledigit = false;
		}	else {
			checkdigit += tempdigit;
			doubledigit = true;
		}
	}
		
	return (checkdigit % 10) == 0 ? true : false;
}


function EW_checkssc(object_value) {
	var white_space = " -+.";
	var ssc_string="";
	var check_char;
	
	if (object_value.length == 0)
		return true;
	
	if (object_value.length != 11)
		return false;
	
	if (object_value.charAt(3) != "-" && object_value.charAt(3) != " ")
		return false;
	
	if (object_value.charAt(6) != "-" && object_value.charAt(6) != " ")
		return false;
	
	for (var i = 0; i < object_value.length; i++) {
		check_char = white_space.indexOf(object_value.charAt(i));
		if (check_char < 0)
			ssc_string += object_value.substring(i, (i + 1));
	}	
	
	if (ssc_string.length != 9)
		return false;	 
	
	if (!EW_checkinteger(ssc_string))
		return false;
	
	return true;
}
	

function EW_checkemail(object_value) {
	if (object_value.length == 0)
		return true;
	
	if (!(object_value.indexOf("@") > -1 && object_value.indexOf(".") > -1))
		return false;    
	
	return true;
}
	
// GUID {xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}	
function EW_checkGUID(object_value)	{
	if (object_value.length == 0)
		return true;
	if (object_value.length != 38)
		return false;
	if (object_value.charAt(0)!="{")
		return false;
	if (object_value.charAt(37)!="}")
		return false;	
	
	var hex_format = "0123456789abcdefABCDEF";
	var check_char;	
	
	for (var i = 1; i < 37; i++) {		
		if ((i==9) || (i==14) || (i==19) || (i==24)) {
			if (object_value.charAt(i)!="-")
				return false;
		} else {
			check_char = hex_format.indexOf(object_value.charAt(i));
			if (check_char < 0)
				return false;
		}
	}
	return true;
}
	

// Update a combobox with filter value
// object_value_array format
// object_value_array[n] = option value
// object_value_array[n+1] = option text 1
// object_value_array[n+2] = option text 2
// object_value_array[n+3] = option filter value
function EW_updatecombo(obj, object_value_array, filter_value) {	
	for (var i = obj.length-1; i > 0; i--) {
		obj.options[i] = null;
	}	
	for (var j=0; j<object_value_array.length; j=j+4) {
		if (object_value_array[j+3].toUpperCase() == filter_value.toUpperCase()) {
			EW_newopt(obj, object_value_array[j], object_value_array[j+1], object_value_array[j+2]);			
		}	
	}
}

// Create combobox option 
function EW_newopt(obj, value, text1, text2) {
	var text = text1;
	if (text2 != "")
		text += ", " + text2;
	var optionName = new Option(text, value, false, false)
	var length = obj.length;
	obj.options[length] = optionName;
}

// Select combobox option
function EW_selectopt(obj, value) {
	for (var i = obj.length-1; i>=0; i--) {
		if (obj.options[i].value.toUpperCase() == value.toUpperCase()) {
			obj.selectedIndex = i;
			break;
		}
	}
}

// Get image width/height
function EW_getimagesize(file_object, width_object, height_object) {
	if (navigator.appVersion.indexOf("MSIE") != -1)	{
		myimage = new Image();
		myimage.onload = function () {
			width_object.value = myimage.width; height_object.value = myimage.height;
		}		
		myimage.src = file_object.value;
	}
}