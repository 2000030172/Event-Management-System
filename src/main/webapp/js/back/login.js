
function redirect()
{
   window.location=my+"register.jsp";
   sleep(1);
}
function validateRoleChecker()
{
	var role=localStorage.getItem("roles");
	var user=localStorage.getItem("username");
	if(role==null)
	{
		  setTimeout(function()
	   	  {
	    	   window.location=my+"login.jsp";
		  },1000);
	}
	else if(user==null)
	{
		setTimeout(function()
	   	  {
	    	   window.location=my+"login.jsp";
		  },1000);
	}
	else if(role=="USER")
	{
	   	  setTimeout(function()
	   	  {
	    	   window.location=my+"success.jsp";
		  },1000);
 	}
 	else if(role=="ORGANISER")
	{
	      setTimeout(function()
		  {
	        	window.location=my+"success_organiser.jsp";
	   	  },1000);
	}
	if(role=="ADMIN")
	{
		  setTimeout(function()
	  	  {
	  			window.location=my+"success_admin.jsp";
	 	  },1000);
	}
}
function log()
{
	localStorage.removeItem("username");
	localStorage.removeItem("password");
	localStorage.removeItem("roles");
	window.location=my+"login.jsp";
}
function verifyOTP()
{
    var gen = document.getElementById('genotp').value;
    var otp = document.getElementById('otp').innerHTML;
    if(gen==otp)
    {
      //  alert("Verified Successfully......")
        document.getElementById('verify').innerHTML="Verified Successfully...!";
    }
    else
    {
      document.getElementById('verify').innerHTML="Not Verified Successfully...!";
      window.location.reload();
    }
}
function close()
{
    var close = document.getElementsByClassName("closebtn");
    var i;
    for(i=0;i<close.length;i++) 
    {
        close[i].onclick=function()
        {
            var div=this.parentElement;
            div.style.opacity="0";
            setTimeout(
            function()
            {
                div.style.display="none";
            },100);
        }
    }
}
function generateOTP() 
{
    var string = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    let OTP = '';
    var len=string.length;
    for (let i = 0; i < 7; i++ ) 
    {
        OTP += string[Math.floor(Math.random() * len)];
    }
    //return OTP;
    document.getElementById("otp").innerHTML = OTP;
}
function myFunction(x) 
{
  var element = document.body;
  element.classList.toggle("dark-mode");
  x.classList.toggle("fa-moon-o");
}
var i=0;
var txt="Event Management System";
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
function saveLogin()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var lbl = document.getElementById("lbl");
	var username = document.getElementById("t1").value;
	var password = document.getElementById("t2").value;
	alert(my);
	var url = my+"api/login/"+t1.value+"/"+t2.value+"/";
    xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send();
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			if(lbl.style.display!=="none")
			{
			      lbl.style.display="block";
			      lbl.innerText=this.responseText;
			      setTimeout(function()
				  {
				    	lbl.style.display="none";
				  },3000);
			      if(this.responseText=="Login Verified Successfully...!")
			      {
					  var un=document.cookie=username;
					  var ps=document.cookie=password;
			    	  localStorage.setItem("username",un);
			    	  localStorage.setItem("password",ps);
			    	  //localStorage.setItem("username",setCookie("user", username, -1));
			    	  //localStorage.setItem("password",setCookie("pass", password,-1));
			    	  //
			    	  //setTimeout(function()
				   	  //{
	            		//	window.location=my+"success.jsp";
	         		  //},1000);
	         		  pageRedirection();
			      }
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
function pageRedirection()
{
	var xhtml = new XMLHttpRequest();
	var person=localStorage.getItem("username")
	var url =my+"api/register/details/"+person;
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
				localStorage.setItem("roles",data[x].roles);
				var role=localStorage.getItem("roles");
			    if(role=="USER")
			    {
				   	  setTimeout(function()
				   	  {
	            			window.location=my+"success.jsp";
	         		  },1000);
         		}
         		else if(role=="ORGANISER")
         		{
					  setTimeout(function()
				   	  {
	            			window.location=my+"success_organiser.jsp";
	         		  },1000);
				}
				else
				{
					  setTimeout(function()
				  	  {
	            			window.location=my+"success_admin.jsp";
	         		  },1000);
				}
			}
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