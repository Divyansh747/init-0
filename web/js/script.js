function loaded(){
     document.getElementById("loader").style.display = "none";
}

var progbar = 1;
var pog;

var  width = 0;
function progress(){
		var p = document.getElementById("progressbarper");
	if(progbar == 0){
		//document.write("asdas");
		if(width > 100){
		p.style.width = (200 - width) + "%";
		}else{
		p.style.width = width + "%";
		}
		width++;
		if(width == 200){
			width = 0
		}
	}
	if(progbar == 1){
		width = 0;
		p.style.width = width;
	}
		
}

var  lineOne = 0;
var  linetwo = 40;
var  linethree = 20;
function StartSlider(){
		var line1 = document.getElementById("line1");
		var line2 = document.getElementById("line2");
		var line3 = document.getElementById("line3");
		if(lineOne > 100){
		line1.style.marginLeft = (200 - lineOne) + "%";
		}else{
		line1.style.marginLeft = lineOne + "%";
		}
		lineOne++;
		if(lineOne == 200){
			lineOne = 0
		}
		if(linetwo > 100){
		line2.style.width = (200 - linetwo) + "%";
		}else{
		line2.style.width = linetwo + "%";
		}
		linetwo++;
		if(linetwo == 200){
			linetwo = 0
		}
		if(linethree > 100){
		line3.style.marginLeft = (200 - linethree) + "%";
		}else{
		line3.style.marginLeft = linethree + "%";
		}
		linethree++;
		if(linethree == 200){
			linethree = 0
		}

	
	
}
function appearLinkModel(){
	var LinkModel = document.getElementById("LinkModel");
	LinkModel.style.marginLeft = 0;
	LinkModel.style.width = "100%";
}
function closeLinkModel(event){
	var LinkModel = document.getElementById("LinkModel");
	if (event.target == LinkModel) {
	LinkModel.style.marginLeft = "-30%";
	LinkModel.style.width = "0";
	}
}

function Changetogglebut(){
	var togglebut = document.getElementById("togglebut");
	if(togglebut.style.cssFloat == "right"){
		togglebut.style.cssFloat = "left";
		showpage(School);
		hidepage(College);
	}else{
		togglebut.style.cssFloat = "right";
		hidepage(School);
		showpage(College);
	}
}
function showpage(id){
	var card1 = document.getElementById("card1");
	id.classList.remove("hide");
	progbar = 1;
}
function hidepage(id){
	id.classList.add("hide");
}

function changeoptionschool(id, classid){
	progbar = 1;
	var School = document.getElementById("Schoolop").children;
	for(var i = 0; i < School.length; i++) {
		if(School[i].classList.contains("activeoption") == true){
	School[i].classList.remove("activeoption");
	
		}
    }
	id.classList.add("activeoption");
	document.getElementById("Class").value=classid;
}
function changeoptioncollege(id, University){
	progbar = 1;
	
	var School = document.getElementById("Collegeop").children;
	for(var i = 0; i < School.length; i++) {
		if(School[i].classList.contains("activeoption") == true){
	School[i].classList.remove("activeoption");
		}
    }
	id.classList.add("activeoption");
	document.getElementById("University").value=University;
	
}	
function submitfrom(id){
	id.submit();
	
}
function openlogin(){
		var loginModel = document.getElementById("loginModel");
	loginModel.style.marginLeft = "0";
	loginModel.style.width = "100%";
	
}
function closeLoginModel(){
	var loginModel = document.getElementById("loginModel");
	if (event.target == loginModel) {
	loginModel.style.marginLeft = "100%";
	loginModel.style.width = "0";
	}	
	
	
	
}


//var orginalContent = document.getElementById("card1").innerHTML;
function getField(){
/*var n=document.forms["SelectYourUniversity"]["university"].value;
var http = new XMLHttpRequest();
http.open("POST", "SelectUniversity.html?", true);
http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
var params = "university=" + n; // probably use document.getElementById(...).value
http.send(params);
http.onload = function() {
  var r = (http.responseText).toString();
document.getElementById("contain").innerHTML = r;
}*/

}
