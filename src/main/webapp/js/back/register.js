function redirect()
{
    window.location=my+"login.jsp";
    sleep(1);
}
function myFunction(x) 
{
  var element = document.body;
  element.classList.toggle("dark-mode");
  x.classList.toggle("fa-moon-o");
}
var i=0;
var txt="Event Management System Register";
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
function saveRegister()
{
	var t4=document.getElementById("t4").value;
    var t5=document.getElementById("t5").value;
    if(t4!=t5)
    {
       document.getElementById("valid").innerHTML="Password Doesn't match";
       return false;
    }
    else
    {
		var xhtml = new XMLHttpRequest();
		var userVal = document.getElementById("t2");
		alert(userVal.value);
		var url =my+"api/register/details/"+userVal.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		alert(url);
		xhtml.send();
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				alert(JSON.parse(this.responseText));
				if(JSON.parse(this.responseText)=="[object Object]")
				{
					lbl.style.display="block";
					lbl.innerText="Username Already exists try to change username";
					setTimeout(function()
					{
						  window.location.reload();
					},2000);
				}
				else
				{
					registration();
				}
			}
		};
	}
}
function registration()
{
	var xhtml = new XMLHttpRequest();
	var url =my+"api/register";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var t3 = document.getElementById("t3");	
					
		var t4=document.getElementById("t4").value;
		xhtml.send(JSON.stringify({
			email : t1.value,
			username : t2.value,
			name : t3.value,
			password : t4
		}));
					
		var user=document.getElementById("t2").value;
	// Email Js userid
	    var userid = "email-js-UserId"
	    emailjs.init(userid);
	      
	// Service
	// Template
	    emailjs.send("email-js-service","email-js-template",{
	      to_name: t3.value,
	      to_email: t1.value,
	      to_username: t2.value,
	    });		
					
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
				if(lbl.style.display!=="none")
				{
				      lbl.style.display="block";
					  lbl.innerText=this.responseText;
					  localStorage.setItem("newuser",user);
					  window.location=my+"profile.jsp";
				}
				else
				{
					  lbl.style.display="none";	
				}
		};
}
function userVerification()
{
	let person=localStorage.getItem("username")
	if(person!=null)
	{
		window.location=my+"success.jsp";
	}
}
