<!--
//Js criado em 15/08/2006 09:37:33 Rodrigo Carvalho dos Santos
//para chamar as funções
//onkeypress="AjustarNumero(this)"
//onkeypress="AjustarNumero2(this)"
//onkeypress="AjustarTelefone(this)"
//onkeypress="AjustarCep(this)"
//onBlur="limpa(this);" onKeyUp="verificaValor(this,event.keyCode);"

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


//Ajusta o Cep quando esta sendo digitado
function AjustarCep(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
	else 
	{ 
		if(Objeto.value.length==2)
		{
			Objeto.value=Objeto.value + "." ;
		}
		else 
		{
    	if(Objeto.value.length==6)
				{		
					Objeto.value=Objeto.value + "-";
				}
		}
	}
}

function AjustarNumero2(Objeto)
{
	if ((event.keyCode==47)||(event.keyCode<46)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
}

function AjustarNumero(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
}

//Ajusta o CPF quando esta sendo digitado
function AjustarCpf(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
	else 
	{ 
		if((Objeto.value.length==3)||(Objeto.value.length==7))
		{
			Objeto.value=Objeto.value + "." ;
		}
		else 
		{
    	if(Objeto.value.length==11)
				{		
					Objeto.value=Objeto.value + "-";
				}
		}
	}
}

//Ajusta o Cep quando esta sendo digitado
function AjustarMoeda(Objeto)
{
	if ((event.keyCode<48)||(event.keyCode>57))
	{
		event.returnValue =false;
	} 
	else 
	{ 
		if(Objeto.value.length==3)
		{
			Objeto.value="R$ " + Objeto.value + "." ;		
		}
		else
		{
    	if((Objeto.value.length==7)||(Objeto.value.length==10))
				{		
					Objeto.value=Objeto.value + ".";
				}
		}
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

var toolbar=0; 
var menubar=0; 
var statusbar=0;
var scrollbar=1; 
var resizable=0;

function AbrePaginaLocadora(name, url)
{
toolbar_str = toolbar ? 'yes' : 'yes';
menubar_str = menubar ? 'yes' : 'yes';
statusbar_str = statusbar ? 'yes' : 'yes';
scrollbar_str = scrollbar ? 'yes' : 'yes';
resizable_str = resizable ? 'yes' : 'yes';
// Manter o comando abaixo na mesma linha
window.open(url, name, 'left=0,top=0,width=788,height=440,toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

function ResolucaoHorizontal()
{
	if (screen.width <= 800) 
	{
		return (800 - 21) 
	}
	else 
	{
		return (screen.width - 21) 
	}
}

function ResolucaoVertical()
{
	return (screen.height)
}

function ativo(src) 
{
  if (!src.contains(event.fromElement))
  {
    src.bgColor = '#FFFFFF';
    src.style.cursor = 'hand';
	self.status = 'Irroba Multimedia - Desenvolvimento de Softwares';
  }
}

function inativo(src) 
{
  if (!src.contains(event.toElement))
  {
    src.bgColor = '#E8E8E8';
    src.style.cursor = 'default';
	self.status = 'Irroba Multimedia - Desenvolvimento de Softwares';
  }
}

function clique(src) 
{
  if(event.srcElement.tagName=='TD')
  {
    src.children.tags('A')[0].click();
	self.status = 'Irroba Multimedia - Desenvolvimento de Softwares';
  }
}

function MM_displayStatusMsg(msgStr) { //v1.0
  status=msgStr;
  document.MM_returnValue = true;
}

function AbrePagina(Pagina,Frame)
{
  msgWindow = window.open(Pagina,Frame,"");
}

function goBack() { 
  window
	  .back(); 
} 

function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function FlagJS()
{
	Hr = new Date() 
	dd = Hr.getDate() 
	mm = Hr.getMonth() + 1 
	aa = Hr.getYear() 	
	hh = Hr.getHours() 
	min = Hr.getMinutes() 
	seg = Hr.getSeconds() 
	Flag = ((dd < 10) ? "0" + dd + "" : dd + "") 
	Flag += ((mm < 10) ? "0" + mm + "" + aa : mm + "" + aa)
	Flag += ((hh < 10) ? "0" + hh + "" : hh + "") 
	Flag += ((min < 10) ? "0" + min + "" : min + "") 
	Flag += ((seg < 10) ? "0" + seg : seg) 
	return Flag
}


//Auto tabulação do formulario
VerifiqueTAB=true;

function checkTAB(){
	VerifiqueTAB= true;
}

function pulaCampo(campo,f){
	//document.form1.loja.tagName 
	if ((campo.tagName=="INPUT" || campo.tagName=="SELECT") && VerifiqueTAB==true){
		if (campo.maxLength==campo.value.length){
			next = 0;
			while (next<f.length && campo.name!=f[next].name) next++;
			next++
			while (next<f.length && f[next].type!="text" && f[next].type!="password" && f[next].type!="checkbox" && f[next].type!="radio" && f[next].nodeName!="SELECT") next++;
			if (next<f.length) f[next].focus();
	
		}
		VerifiqueTAB= false;
	}
}

//Formatação de numeros
//DE		1200.00 
//Para	R$ 1.200,00
function formatCurrency(number){
  var num = new String (number);
  if (num.indexOf (".") == -1){
		intLen = num.length;
    toEnd = intLen;
    var strLeft = new String (num.substring (0, toEnd));
    var strRight = new String ("00");
  }else {
		pos = eval (num.indexOf ("."));
		var strLeft = new String (num.substring (0, pos));
		intToEnd = num.length;
		intThing = pos + 1;
		var strRight = new String (num.substring (intThing, intToEnd));
		if (strRight.length > 2){
			nextInt = strRight.charAt(2);
			if (nextInt >= 5){
				strRight = new String (strRight.substring (0, 2));
				strRight = new String (eval ((strRight * 1) + 1));
				if((strRight * 1) >= 100){
					strRight = "00";
					strLeft = new String (eval ((strLeft * 1) + 1));
				}
				if (strRight.length <= 1){
					strRight = new String ("0" + strRight);
				}
			}else{
				strRight = new String (strRight.substring (0, 2));
			}
		}else{
			if (strRight.length != 2){
				strRight = strRight + "0";
			}
		}
	}
	if (strLeft.length > 3){
		var curPos = (strLeft.length - 3);
		while (curPos > 0){
			var remainingLeft = new String (strLeft.substring (0, curPos));
			var strLeftLeft = new String (strLeft.substring (0, curPos));
			var strLeftRight = new String (strLeft.substring (curPos, strLeft.length));
			strLeft = new String (strLeftLeft + "." + strLeftRight);
			curPos = (remainingLeft.length - 3);
		}
	}
	strWhole = strLeft + "," + strRight;
	finalValue = 'R$ '+ strWhole;
	return (finalValue);
}

//DE		R$ 1.200,00 ou 1.200,00 
//Para	1200.00
function formatEnglish(number){
	number = number + "";
	number = number.replace(/\./g,"");
	number = number.replace(/,/g,".");
	number = number.replace(/ /g,"");
	number = number.replace(/R\$/gi,"");
	return (number);
}


//Auto formatacao para Numero enquanto digita
function verificaValor(campo,e){

  //problema com o tab
  if (campo.value.length == 0)
  {
      campo.value = "R$ ";
      return false;
  }    
  
  //se nao tem virgula
  if ((e==8 && (campo.value=="R$" || campo.value=="R$ ")) ||
		 (e==9 || e==16) ||
		 (campo.value == "R$" || campo.value == "R$ ") ||
		 (campo.value.substring(1,campo.value.length).indexOf("R")>0)){
    campo.value="R$ ";
    return false;
  }
  
  if(campo.value.substring(0,3)=="R$ ")
		valor = campo.value.substring(3,campo.value.length);
  else if(campo.value.substring(0,3)!="R$ "){
		valor = campo.value;
		campo.value = "R$ "+campo.value;
  }

  valorU = valor.substring(valor.length-1);

  if(valorU!="1" && valorU!="2" && valorU!="3" && valorU!="4" &&
valorU!="5" && valorU!="6"
  && valorU!="7" && valorU!="8" && valorU!="9" && valorU!="0" &&
valorU!="." && valorU!=","){

    campo.value=campo.value.substring(0,campo.value.length-1);
    return false;
   }




  if(valor.indexOf(",")<0){

     if(valor.indexOf(".")>0 && valor.length==4){
        part = valor.split(".");
        camp="";
        for(m=0;m<part.length;m++)
          camp+=part[m];
      campo.value ="R$ "+ camp;
       }
     tmp = "";
     for(i=valor.length;i>=0;i--){
       if(valor.charAt(i)!=".")
      tmp += valor.charAt(i);
     }


     tmp2="";
     final ="";
     partes = new Array(parseInt(tmp.length/3)+2);
     for (j=0;j<parseInt((tmp.length-1)/3);j++){
       partes[j] = tmp.substring(3*j,3*j+3);
       final = tmp.substring(3*j+3);

     }



     for(k=0;k < j;k++){
       tmp2 += partes[k]+ ".";
     }

     tmp2+=  (final);
     tmp3="";
     for(i=tmp2.length;i>=0;i--){
      tmp3 += tmp2.charAt(i);
     }


     if( parseInt(tmp2.indexOf("."))==3){
        campo.value ="R$ "+ tmp3;
       }
  }
  //se tem virgula
  else{
    tmp = campo.value.substring(campo.value.lastIndexOf(",")+1,campo.value.length);
    if(tmp.indexOf(".")>0 || tmp.indexOf(",")>0){
      campo.value = campo.value.substring(0, campo.value.length-1);
    }
    if(tmp.length==3)
      campo.value = campo.value.substring(0, campo.value.length-1);
  }
}

function limpa(campo){
  if(campo.value == "R$" || campo.value=="R$ ")
    campo.value="";
  else if(campo.value.length>3 && campo.value.indexOf(",")<0)
    campo.value+=",00";
  else if(campo.value.indexOf(",")>0 && campo.value.substring(campo.value.indexOf(",")).length==2 )
    campo.value+="0";  
}

function justNumber(campo){
	
	buffer = campo.value
	lastChar = buffer.substring(buffer.length - 1)
		

	if(lastChar != "1" && lastChar != "2" && lastChar != "3" && lastChar != "4" &&
	   lastChar != "5" && lastChar != "6" && lastChar != "7" && lastChar != "8" &&
	   lastChar != "9" && lastChar != "0" && lastChar != ".")

			campo.value = campo.value.substring(0, campo.value.length - 1)    
}

//-->