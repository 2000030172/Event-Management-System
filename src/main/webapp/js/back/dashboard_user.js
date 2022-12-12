function insertComplainting()
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/insertComplaint";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	var usr=localStorage.getItem("username");
	var t1=document.getElementById("cp1");
	var lbl=document.getElementById("cmpd");
	
	var rep="NONE";
	var rol="NONE";
	var us="NONE";
	
	var currDate=new Date();
	var dt=currDate.toLocaleDateString('en-CA');
		
	xhtml.send(JSON.stringify({
		username:usr,
		rdate:dt,
		complaint:t1.value,
		reply:rep,
		role:rol,
		user:us
	}));
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			lbl.innerText=this.responseText;
		}
		alert("inserted")
	};
}
function readComplaints()
{
	var person=localStorage.getItem("username");
	if(person==null)
	{
		window.location=my+"login.jsp"
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url=my+"api/details-complaint/"+person;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		alert(url);
		xhtml.send();
		
		var display = document.getElementById("complaint");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var table = "<table border='1'>";
				var i=0;
				table += "<tr> <th>S.No</th> <th>Username</th> <th>Complient</th> </tr>";
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					table=table+"<tr>"+"<td>"+ (i+1) +"</td>"+"<td>"+ data[x].username +"</td>"+"<td>"+ data[x].complaint+"</td>"+"</tr>";
					i++;
				}
				table=table+"</table>";
				display.innerHTML = table;
			}
		};
	}
}
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
				localStorage.setitem("uname",data[x].name);
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
		branch : t5.value,
		gender : t6.value,
		state : t8.value,
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
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
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
function saveEventRegister()
{
	let personName=localStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url = my+"api/insert/event-register";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		var eId=localStorage.getItem("eid");
		var t1 = document.getElementById("w1");
		var t2 = document.getElementById("w2");
		var t3 = document.getElementById("w3");
		var t4 = document.getElementById("w4");
		var t5 = document.getElementById("w5");
		var t6 = document.getElementById("w6");
		var lbl = document.getElementById("lbl123");
		var ename=localStorage.getItem("ename");
		alert(ename);
		var user=localStorage.getItem("uname");
		alert(user);
		var val1=eId;
		var val2=t1.value;
		var result=val1+"-"+val2;
		var end=localStorage.getItem("endTime");
		var currDate=new Date();
		var dt=currDate.toLocaleDateString('en-CA');
		alert("Only one Event can register");
		alert(user);
		xhtml.send(JSON.stringify({
			eventidusername : result,
			username : t1.value,
			ev_id : eId,
			yr : t5.value,
			name : t2.name,
			gen : t4.value,
			email : t3.value,
			branch : t6.value,
			ev_name : ename,
			name : user,
			dc : end,
			dor : dt
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
					  },2000);
					  setTimeout(function()
					  {
						  	 newTabClose();
					  },3000);  
				}
				else
				{
					  lbl.style.display="none";
				}
		};
	}
}
function printStatus()
{
     var makepdf=document.getElementById("statuspdf");
     var mywindow=window.open();
     mywindow.document.open();
     mywindow.document.write(makepdf.innerHTML);
     mywindow.document.close();
     mywindow.focus();
     mywindow.print();
     mywindow.close();
     mywindow.save("EventStatus.pdf");
     return true;
}
function printCertificate()
{
     var makepdf=document.getElementById("certificatepdf");
     var mywindow=window.open();
     mywindow.document.open();
     mywindow.document.write(makepdf.innerHTML);
     mywindow.document.close();
     mywindow.focus();
     mywindow.print();
     mywindow.close();
     mywindow.save("Participation_Certification.pdf");
     return true;
}
function readRegisterEvent()
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/details/event-register/"+localStorage.getItem("username");
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send();
	var display = document.getElementById("reg");
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var table = "<div class=\"container\">"+ 
							"<div class=\"row\">";
			var i=0;
			var data = JSON.parse(this.responseText);
			for(var x in data)
			{
				//table=table+"<tr>"+"<td>"+ (i+1) +"</td>"+"<td>"+ data[x].eventidusername +"</td>"+"<td>"+ data[x].username+"</td>"+"<td>"+ data[x].ev_id +"</td>"+ "<td>"+ data[x].yr +"</td> "+"<td>"+ data[x].gen +"</td>"+"<td>"+ data[x].email +"</td>"+"<td>"+"<a href=eventupdate.jsp?eventId="+">edit</a>"+"</td>"+"<td>"+"<a href=eventdelete.jsp?"+">remove</a>"+"</td>"+"</tr>";
				i++;
				table=table+"<div class=\"column\">"+
				"<div class=\"flip-card\">"+
					"<div class=\"flip-card-inner\">"+
    					"<div class=\"flip-card-front\">";
    					table=table+"<img src=\"img/display.svg\" class=\"img-fluid\" alt=\"Login image\" width=\"50%\" height=\"50%\" onContextMenu=\"return false;\"/>";
    					table=table+"<br/>";
    					table=table+"<h2>"+data[x].ev_id+"</h2><br/>(*Event Registered)";
			 			table=table+"</div>"+
					"<div class=\"flip-card-back\">"+
						"<label>"+
        					"<button onclick=\"newStatusTabOpen('"+ data[x].username +"')\">Status</button></a>"+
						"</label>"+
						"<br/><br/>"+
						"<label>"+
	    					"<button onclick=\"newCertificateTabOpen('"+ data[x].username +"')\">Certificate</button></a>"+
						"</label>"+
					"</div>"+
				"</div>"+
			"</div>"+
		"</div>";
			}
			table=table+"</div>"+
			"</div>";
			display.innerHTML = table;
		}
	};
}
function newStatusTabOpen(name)
{
	document.getElementById('status').style.display='block';
	registeredEvent(name);
}
function registeredEvent(name)
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/details/event-register/"+localStorage.getItem("username");
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	xhtml.send();
	var display = document.getElementById("ds");
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var table = "<table border='1'>";
			var i=0;
			
			var data = JSON.parse(this.responseText);
			for(var x in data)
			{
				table=table+"<tr>"+
								"<td><h4>Username</h4></td>"+
								"<td>"+ data[x].username +"</td>"+
							"</tr><tr>"+
								"<td><h4>Name of Candidate</h4></td>"+
								"<td>"+ data[x].name +"</td>"+
							"</tr><tr>"+
								"<td><h4>Event id</h4></td>"+
								"<td>"+ data[x].ev_id +"</td>"+
							"</tr><tr>"+
								"<td><h4>Event Name</h4></td>"+
								"<td>"+ data[x].ev_name +"</td>"+
							"</tr><tr>"+
								"<td><h4>Year</h4></td>"+
								"<td>"+ data[x].yr+"</td>"+
							"</tr><tr>"+
								"<td><h4>Gender</h4></td>"+
								"<td>"+ data[x].gen +"</td>"+
							"</tr><tr>"+
								"<td><h4>Branch</h4></td>"+
								"<td>"+ data[x].branch+"</td>"+
							"</tr><tr>"+
								"<td><h4>Event Registerd</h4></td>"+
								"<td>"+ myDate(data[x].dor)+"</td>"+
							"</tr><tr>"+
								"<td><h4>Event Closed by</h4></td>"+
								"<td>"+ myDate(data[x].dc)+"</td>"+
							"</tr><tr>"+
							"</tr>";
							localStorage.setItem("edoc",data[x].dc);
				i++;
			}
			table=table+"</table>";
			display.innerHTML=table;
		}
	};
}
function newStatusTabClose()
{
	document.getElementById('status').style.display='none';
}
function newCertificateTabClose()
{
	document.getElementById('certificate').style.display='none';
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
				a5.value=data[x].branch;
				a6.value=data[x].gender;
				a7.value=data[x].phone;
				a8.value=data[x].state;
			}
		}
	};
}
function displayDetailsProfileForEvent()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("w1");
	var t2 = document.getElementById("w2");
	var t3 = document.getElementById("w3");
	var t4 = document.getElementById("w4");
	var t5 = document.getElementById("w5");
	var t6 = document.getElementById("w6");
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
				t6.value=data[x].email;
				t4.value=data[x].gender;
				t5.value=data[x].year;
				t3.value=data[x].branch;
			}
		}
	};
}
function newCertificateTabOpen()
{
	CertificateTabDateValidation();
}
function CertificateTabDateValidation()
{
	var doc=localStorage.getItem("edoc");
	var curr=new Date();
	if(doc<curr)
	{
		
	    document.getElementById('cerval').style.display='block';
	    var msg="Sorry you cannot Download Certificate as of now.";
	    msging(msg);
	    setTimeout(function()
		{
			document.getElementById('certificate').style.display='none';
		},3000);
	}
	else
	{
		document.getElementById('certificate').style.display='block';
	    certificationModule();
	}
}
function certificationModule()
{
	var ename=localStorage.getItem("ename");
	var user=localStorage.getItem("uname");
	document.getElementById("evname").innerHTML=ename;
	document.getElementById("cname").innerHTML=user;
}
function msging(val)
{
	var msg=new SpeechSynthesisUtterance();
	msg.volume = 1;
	msg.rate = 1;
	msg.pitch = 2; 
	msg.text=val;
	window.speechSynthesis.speak(msg);
}