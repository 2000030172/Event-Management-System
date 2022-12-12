function updateProfile()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("u1");
	var t2 = document.getElementById("u2");
	var t3 = document.getElementById("u3");
	var t4 = document.getElementById("u4");
	var t5 = document.getElementById("u5");
	var t6 = document.getElementById("u6");
	var t7 = document.getElementById("u7");
	var t8 = document.getElementById("u8");
	var t9 = document.getElementById("u9");
	var lbl = document.getElementById("cf");
	var url = my+"api/profile/update/admin/"+t1.value;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send(JSON.stringify({
		username : t1.value,
		email : t2.value,
		name : t3.value,
		year : t4.value,
		gender : t5.value,
		state : t6.value,
		phone : t7.value,
		branch : t8.value,
		roles : t9.value
	}));
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			if(lbl.style.display!=="none")
			{
			      lbl.style.display="block";
				  lbl.innerText = this.responseText;
				  window.location.reload();
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
function newUpdateProfileClose()
{
	document.getElementById('up').style.display='none';
}
function newUpdateProfileOpen()
{
	document.getElementById('up').style.display='block';
}
function readRegister()
{
	let personName=localStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url=my+"api/register/details";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send();
		
		var display = document.getElementById("participant");
		var a=document.getElementById("admins");
		var u=document.getElementById("users");
		var o=document.getElementById("organisers");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var table = "<table border='1'>";
				var i=0;
				table=table+"<tr> <th>S.No</th> <th>Username</th> <th>Name</th> <th>Email</th> <th>Gender</th> <th>Phone</th> <th>Year</th> <th>Branch</th> <th>State</th> <th>Role</th> <th>Edit</th> <th>Delete</th> </tr>";
				var data=JSON.parse(this.responseText);
				var user=0,admin=0,organiser=0;
				for(var x in data)
				{
					table=table+"<tr>"+"<td>"+ (i+1) +"</td>"+"<td>"+ data[x].username +"</td>"+"<td>"+ data[x].name+"</td>"+"<td>"+ data[x].email +"</td>"+ "<td>"+ data[x].gender +"</td> "+"<td>"+ data[x].phone +"</td>"+"<td>"+ data[x].year +"</td>"+"<td>"+ data[x].branch +"</td>"+"<td>"+ data[x].state +"</td>"+"<td>"+ data[x].roles +"</td>"+
					"<td><button onclick=\"newOpenEditProfile('"+data[x].username+"')\" style=\"border-radius: 50%; color:white; background-color: green; padding: 15px 20px;\"><i class=\"fa-solid fa-pen-to-square\"></i></button></td>"+
					"<td><button onclick=\"newOpenDeleteProfile('"+data[x].username+"')\" style=\"border-radius: 50%; color:white; background-color: red; padding: 15px 20px;\"><i class=\"fa-solid fa-trash\"></i></button></td>"+"</tr>";
					if(data[x].roles=="USER")
					{
						user++;
					}
					if(data[x].roles=="ADMIN")
					{
						admin++;
					}				
					if(data[x].roles=="ORGANISER")
					{	
						organiser++;
					}
					i++;
				}
				table=table+"</table>";
				display.innerHTML=table;
				a.innerHTML=admin;
				u.innerHTML=user;
				o.innerHTML=organiser;
			}
		};
	}
}
function newOpenEditProfile(eid)
{
	document.getElementById('prf').style.display='block';
	profileDisplay(eid);
}
function newCloseEditProfile()
{
	document.getElementById('prf').style.display='none';
}
function newOpenDeleteProfile(eid)
{
	document.getElementById('drf').style.display='block';
	document.getElementById('dam1').innerHTML=eid
}
function newCloseDeleteProfile()
{
	document.getElementById('drf').style.display='none';
}
function profileDisplay(eid)
{
	let personName=localStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var e1 = document.getElementById("u1");
		var e2 = document.getElementById("u2");
		var e3 = document.getElementById("u3");
		var e4 = document.getElementById("u4");
		var e5 = document.getElementById("u5");
		var e6 = document.getElementById("u6");
		var e7 = document.getElementById("u7");
		var e8 = document.getElementById("u8");
		var e9 = document.getElementById("u9");
		var event = document.getElementById("event");
		var url = my+"api/register/details/"+eid;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				//alert(data.roles);
				for(var x in data)
				{
					e1.value=data[x].username;
					e2.value=data[x].email;
					e3.value=data[x].name;
					e4.value=data[x].year;
					e5.value=data[x].gender;
					e6.value=data[x].state;
					e7.value=data[x].phone;
					e8.value=data[x].branch;
					e9.value=data[x].roles;
				}
			}
		};
	}
}
function removeProfile()
{
	var xhtml = new XMLHttpRequest();
	var t1=document.getElementById("dam1");
	var url=my+"api/profile/delete/admin/"+t1.innerText;
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	var lbl = document.getElementById("rip");

	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			lbl.style.display="block";
			lbl.innerText = this.responseText;
			setTimeout(function()
			{
				 lbl.style.display="none";
			},2000);
			setTimeout(function()
			{
				newCloseDeleteProfile()
			},1000); 
			window.location.reload();
	};
}
function readContact()
{
	let personName=localStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url=my+"api/details/contact";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send();
		
		var display = document.getElementById("cont");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var table = "<table border='1'>";
				var i=0;
				table += "<tr> <th>S.No</th> <th>Email</th> <th>Name</th> <th>Comment</th> </tr>";
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					table=table+"<tr>"+"<td>"+ (i+1) +"</td>"+"<td>"+ data[x].email +"</td>"+"<td>"+ data[x].name+"</td>"+"<td>"+ data[x].comment +"</td>"+"</tr>";
					i++;
				}
				table=table+"</table>";
				display.innerHTML=table;
			}
		};
	}
}
function displayDetailsUser()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("username");
	var t2 = document.getElementById("email");
	var t3 = document.getElementById("name");
	var t4 = document.getElementById("year");
	var t5 = document.getElementById("branch");
	var t6 = document.getElementById("gender");
	var t7 = document.getElementById("phone");
	var t8 = document.getElementById("state");
	t1.innerHTML=localStorage.getItem("username");
	var url =my+"api/register/details/"+t1.innerHTML;
	
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
				t2.innerHTML=data[x].email;
				t3.innerHTML=data[x].name;
				t4.innerHTML=data[x].year;
				t5.innerHTML=data[x].branch;
				t6.innerHTML=data[x].gender;
				t7.innerHTML=data[x].phone;
				t8.innerHTML=data[x].state;
			}
		}
	};
}
function displayDetailsProfile()
{
	var xhtml = new XMLHttpRequest();
	var a1 = document.getElementById("a1");
	var a2 = document.getElementById("a2");
	var a3 = document.getElementById("a3");
	var a4 = document.getElementById("a4");
	var a5 = document.getElementById("a5");
	var a6 = document.getElementById("a6");
	var a7 = document.getElementById("a7");
	var a8 = document.getElementById("a8");
	a1.value=localStorage.getItem("username");
	var url =my+"api/register/details/"+a1.value;
	
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
				a2.value=data[x].email;
				a3.value=data[x].name;
				a4.value=data[x].year;
				a8.value=data[x].branch;
				a5.value=data[x].gender;
				a7.value=data[x].phone;
				a6.value=data[x].state;
			}
		}
	};
}
function updateUserProfile()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("a1");
	var t2 = document.getElementById("a2");
	var t3 = document.getElementById("a3");
	var t4 = document.getElementById("a4");
	var t5 = document.getElementById("a5");
	var t6 = document.getElementById("a6");
	var t7 = document.getElementById("a7");
	var t8 = document.getElementById("a8");
	var lbl=document.getElementById("upi");
	var url = my+"api/profile/login/"+t1.value;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send(JSON.stringify({
		username : t1.value,
		email : t2.value,
		name : t3.value,
		year : t4.value,
		branch : t8.value,
		gender : t5.value,
		state : t6.value,
		phone : t7.value
	}));
		
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			if(lbl.style.display!=="none")
			{
			      lbl.style.display="block";
				  lbl.innerText = this.responseText;
				  if(this.responseText=="Profile Updated..!")
			      {
					  setTimeout(function()
					  {
						  window.location.reload();
					  },2000);
				  }
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
function newUpdateProfileClose()
{
	document.getElementById('up').style.display='none';
}
function newUpdateProfileOpen()
{
	document.getElementById('up').style.display='block';
}
function updateNewPassword()
{
	var xhtml = new XMLHttpRequest();
	var user=localStorage.getItem("username");
	var t1 = document.getElementById("update1");
	var t2 = document.getElementById("update2");
	var lbl = document.getElementById("lbl");
	var pass=localStorage.getItem("password");
	var url = my+"api/password/"+user;
	xhtml.open("PUT", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	if(pass==t1.value)
	{
		xhtml.send(JSON.stringify({
			password : t2.value
		}));
		localStorage.setItem("password",t2.value);
		setTimeout(function()
		{
      			window.location=my+"success.jsp";
   		},1000);
	}
	else
	{
		lbl.style.display="block";
		lbl.innerText = "Wrong password Entered";
	}
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			if(lbl.style.display!=="none")
			{
			      lbl.style.display="block";
				  lbl.innerText = this.responseText;
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
function displayDetailsEvents()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var t3 = document.getElementById("t3");
	var t4 = document.getElementById("t4");
	var t5 = document.getElementById("t5");
	var t6 = document.getElementById("t6");
	var url =my+"api/register/details/"+localStorage.getItem("username");
	
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
				t1.value=data[x].username;
				t2.value=data[x].name;
				t3.value=data[x].email;
				t4.value=data[x].gender;
				t5.value=data[x].year;
				t6.value=data[x].branch;
			}
		}
	};
}