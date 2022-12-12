function funAdmin()
{
	var personName=localStorage.getItem("username");
	var role=localStorage.getItem("roles");
	if(personName==null)
	{
		setTimeout(function()
		{
			window.location = my+"login.jsp";
		},1000);  
	}
	if(role=="ADMIN")
	{
		document.getElementById("demo").innerHTML=personName;
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
}
function User()
{
	var role=localStorage.getItem("roles");
	var personName=localStorage.getItem("username");
	if(personName==null)
	{
		setTimeout(function()
		{
			window.location = my+"login.jsp";
		},1000);  
	}
	if(role=="ADMIN")
	{
		setTimeout(function()
		{
			window.location=my+"success_admin.jsp";
		},1000);
	}
	else if(role=="ORGANISER")
	{
		setTimeout(function()
		{
			window.location=my+"success_organiser.jsp";
		},2000);
	}
}
function Organiser()
{
	var role=localStorage.getItem("roles");
	var personName=localStorage.getItem("username");
	if(personName==null)
	{
		setTimeout(function()
		{
			window.location = my+"login.jsp";
		},1000);  
	}
	if(role=="ADMIN")
	{
		setTimeout(function()
		{
			window.location=my+"success_admin.jsp";
		},1000);
	}
	else if(role=="USER")
	{
		setTimeout(function()
		{
			window.location=my+"success.jsp";
		},2000);
	}
}
function AdminOrganiser()
{
	var personName=localStorage.getItem("username");
	var role=localStorage.getItem("roles");
	if(personName==null)
	{
		setTimeout(function()
		{
			window.location = my+"login.jsp";
		},1000);  
	}
	if(role=="USER")
	{
		setTimeout(function()
		{
			window.location=my+"success.jsp";
		},1000);
	}
}
function Admin()
{
	var role=localStorage.getItem("roles");
	var personName=localStorage.getItem("username");
	if(personName==null)
	{
		setTimeout(function()
		{
			window.location = my+"login.jsp";
		},1000);  
	}
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
		},2000);
	}
}