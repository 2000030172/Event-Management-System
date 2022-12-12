function myFunction(x)
{
	var element = document.body;
	element.classList.toggle("dark-mode");
	x.classList.toggle("fa-moon-o");
}
function myDark(x)
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
    if(i<txt.length) 
  	{
    	 document.getElementById("tit").innerHTML+=txt.charAt(i);
     	 i++;
     	 setTimeout(typeWriter, speed);
  	}
  	return txt;
}
function profile()
{
	window.location=my+"profile_details.jsp";
}
function startTime()
{
    var date=new Date(); 
    var hh=date.getHours();
    var mm=date.getMinutes();
    var ss=date.getSeconds();
    var session="AM";
    if(hh==0)
    {
        hh=12;
    }
    if(hh>12)
    {
         hh=hh-12;
        session="PM";
    }
    let time=checkTime(hh)+":"+checkTime(mm)+":"+checkTime(ss)+" "+session;
    document.getElementById("time").innerText=time; 
    var text=date.toDateString();
	document.getElementById("day").innerHTML=text;
    t=setTimeout('startTime()', 500);
}
function checkTime(i)
{
    if(i<10)
    {
        i="0"+i;
    }
    return i;
}
function login()
{
	let personName=localStorage.getItem("newuser")
	let person=localStorage.getItem("username")
	if(personName==null)
	{
		window.location=my+"register.jsp";  
	}
	if(person!=null)
	{
		window.location=my+"success.jsp";
	}
	else
	{
		document.getElementById("t1").value = personName;
	}
}
function updateProfileRegisteration()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var t3 = document.getElementById("t3");
	var t4 = document.getElementById("t4");
	var t5 = document.getElementById("t5");
	var t6 = document.getElementById("t6");
	var url = my+"api/profile/"+t1.value;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send(JSON.stringify({
		username : t1.value,
		year : t2.value,
		branch : t3.value,
		gender : t4.value,
		state : t5.value,
		phone : t6.value
	}));
		
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			if(lbl.style.display!=="none")
			{
			      lbl.style.display="block";
				  lbl.innerText = this.responseText;
				  setTimeout(function()
				  {
				    	lbl.style.display="none";
				  },3000);
				  
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
function redirect()
{
	setTimeout(function()
	{
		window.location=my+"login.jsp";
	},1000);
	localStorage.removeItem("newuser");
}