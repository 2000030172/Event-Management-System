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
    if(i<txt.length) 
  	{
    	 document.getElementById("tit").innerHTML+=txt.charAt(i);
     	 i++;
     	 setTimeout(typeWriter, speed);
  	}
  	return txt;
}
function login()
{
	window.location=my+"login.jsp";
}
function register()
{
	window.location=my+"register.jsp";
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