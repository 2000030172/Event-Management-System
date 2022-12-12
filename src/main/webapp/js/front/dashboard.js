function dash1()
{
	document.getElementById('home').style.display='block';
	document.getElementById('profile').style.display='none';
	document.getElementById('pwd').style.display='none';
	document.getElementById('event').style.display='none';
	document.getElementById('members').style.display='none';
	document.getElementById('contact').style.display='none';
}
function dash2()
{
	document.getElementById('home').style.display='none';
	document.getElementById('profile').style.display='block';
	document.getElementById('pwd').style.display='none';
	document.getElementById('event').style.display='none';
	document.getElementById('members').style.display='none';
	document.getElementById('contact').style.display='none';
}
function dash3()
{
	document.getElementById('home').style.display='none';
	document.getElementById('profile').style.display='none';
	document.getElementById('pwd').style.display='block';
	document.getElementById('event').style.display='none';
	document.getElementById('members').style.display='none';
	document.getElementById('contact').style.display='none';
}
function dash4()
{
	document.getElementById('home').style.display='none';
	document.getElementById('profile').style.display='none';
	document.getElementById('pwd').style.display='none';
	document.getElementById('event').style.display='block';
	document.getElementById('members').style.display='none';
	document.getElementById('contact').style.display='none';
}
function dash5()
{
	document.getElementById('home').style.display='none';
	document.getElementById('profile').style.display='none';
	document.getElementById('pwd').style.display='none';
	document.getElementById('event').style.display='none';
	document.getElementById('members').style.display='block';
	document.getElementById('contact').style.display='none';
}
function dash6()
{
	document.getElementById('home').style.display='none';
	document.getElementById('profile').style.display='none';
	document.getElementById('pwd').style.display='none';
	document.getElementById('event').style.display='none';
	document.getElementById('members').style.display='none';
	document.getElementById('contact').style.display='block';
}
function openNav() 
{
  document.getElementById("mySidenav").style.width="250px";
  document.getElementById("main").style.marginLeft="250px";
  document.getElementById("obtn").style.display="none";
  document.getElementById("cbtn").style.display="block";
}

function closeNav() 
{
  document.getElementById("mySidenav").style.width="0";
  document.getElementById("main").style.marginLeft="0";
  document.getElementById("cbtn").style.display="none";
  document.getElementById("obtn").style.display="block";
}


