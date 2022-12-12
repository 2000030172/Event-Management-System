<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<link rel="stylesheet" type="text/css" href="css/loader.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/all-css.css">
</head>
<body onload="typeWriter();startTime();loader();">
<%@include file="navbar.jsp" %>
<div id="loader" class="center"></div>
<br/>
<div class="break"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
	  <div class="row">
	  <h1 style="text-align: center;">We can assist you with your password. Please enter your username.</h1>
	  <br/>
	  <br/>
	    <div class="leftcolumn">
	        <img src="img/forgot.svg" class="img-fluid" alt="Login image" width="80%" height="10%" onContextMenu="return false;">
	    </div>
	  </div>
	    <div class="row">
	      <div class="rightcolumn">
	           <input type="text" id="user" placeholder="Username"/>
	           <br/>
	           <br/>
	           <button onclick="findUserData()">Send</button>
	      </div>
	    </div>
	     <label id="forgot"></label>
</div>
<script type="text/javascript" src="js/back/url.js"></script>
<script>
function findUserData()
{
	var xhtml=new XMLHttpRequest();
	var user=document.getElementById("user");
	var url=my+"api/register/details/"+user.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data=JSON.parse(this.responseText);
			for(var x in data)
			{
				forgotPaswordRecovery(data[x].username,data[x].email,data[x].password);
			}
		}
	};
	document.getElementById('forgot').innerHTML='Email Sended Successfully...!';
}
function forgotPaswordRecovery(user,em,pass)
{
    var userid = "user_YlpUOvR4XMQbNkLOirmRy"
    emailjs.init(userid);
    
    emailjs.send("service_n4ku3mh","template_mhb12ls",{
    	to_username: user,
		value: pass,
		to_email: em,
	});
    
    return otp;
}
function myFunction(x) 
{
  var element = document.body;
  element.classList.toggle("dark-mode");
  x.classList.toggle("fa-moon-o");
}
var i=0;
var txt="Forgot Password";
var lin="-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-";
var speed=80;
function typeWriter() 
{
   writeUp();
}
function writeUp()
{
  	if(i<txt.length) 
  	{
    	 document.getElementById("tit").innerHTML+=txt.charAt(i);
     	 i++;
     	 setTimeout(typeWriter, speed);
  	}
  	return txt;
}
</script>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/register.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
</body>
</html>