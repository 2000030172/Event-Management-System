<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<link rel="stylesheet" type="text/css" href="css/loader.css">
<link rel="stylesheet" type="text/css" href="css/event.css">
<title>Events</title>
</head>
<body onload="eventDisplayFunction()">
<%@include file="navbar_login.jsp" %>
<div id="loader" class="center"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
		<br/>
		<br/>
		<br/>
		<div style="width:100%" id="display" ></div>
		<div id="id01" class="modal">
	        <div id="lbl" class="alert info"><span class="closebtn">&times;</span></div>
	        <div class="modal-content animate">
	            <div class="container" style="background-color:blue">
	                <h1 style="text-align: center;" class="p1">Event Registeration</h1>
	            </div>
	            <div class="container" style="pointer-events: all">
	            <span onclick="newTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
	                <h1 style="text-align: center;">Event Details</h1>
	                <hr size="3" width="90%" color="blue"> 
	                <input type="hidden" id="event"/>
	                <div style="margin-left: 50px;">
	                	<div class="row">
	                		<div class="column">
	                			<p> EventId : </p> 
	                		</div>
	                		<div class="column">
	                			<p id="e1"></p>
	                		</div>
	                	</div>
	                	<div class="row">
	                    	<div class="column">
	                    		<p>Name : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e2"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Location : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e3"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Starting Date : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e4"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Starting Time : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e5"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Ending Date : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e6"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Ending Time : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e7"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="column">
	                    		<p>Event Information : </p>
	                    	</div>
	                    	<div class="column">
	                    		<p id="e8"></p>
	                    	</div>
	                    </div>
	                </div>
	                <h1 style="text-align: center;">User Details</h1>
	                <hr size="3" width="90%" color="blue"> 
	                <div style="width :100%">
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Username</legend>
	                        <input type="text" id="t1" placeholder="Username" disabled/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>Name</legend>
	                        <input type="text" id="t2" placeholder="Name"/>
	                    </fieldset>
	                    </div>
	                    <br/>
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Email</legend>
	                        <input type="email" id="t3" placeholder="Email" disabled/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>*Gender</legend>
	                        <input type="text" id="t4" placeholder="Gender"/>
	                    </fieldset>
	                    </div>
	                    <br/>
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Year</legend>
	                        <input type="text" id="t5" placeholder="Year"/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>*Branch</legend>
	                        <input type="text" id="t6" placeholder="Branch"/>
	                    </fieldset>
	                    </div>
	                </div>
	            </div>
	            <div style="width: 100%;display: flex; justify-content: center;">
	            	<button onclick="saveEventRegister()">Submit</button>
	            </div>
	            <div class="container" style="background-color:#f1f1f1">
	            <br/>
            </div>
        </div>
        <div id="id02" class="modal">
		     <div id="rm" class="alert info"><span class="closebtn">&times;</span></div>
		     <div class="modal-content animate">
		            <div class="container" style="background-color:blue">
		                <h1 style="text-align: center;" class="p1">Event Deletion</h1>
		            </div>
		            <div class="container" style="pointer-events: all">
		            	<span onclick="newTabCheckClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
		                <h1 style="text-align: center;">Registration's Closed</h1>
		                <hr size="3" width="90%" color="blue"> 
		                <h1 style="text-align: center;">
		                	<label id="d1"></label>
		                </h1>
		                <div style="width: 100%;display: flex; justify-content: center;">
							<h1>Sorry you cannot proceed.Registrations are closed. Contact admin</h1>
						</div>
						<div class="container" style="background-color:#f1f1f1">
				           <br/>
			        	</div>
	        		</div>
	    	</div>
		</div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/navbar.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript">
function displayDetails()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("t1");
	var t2 = document.getElementById("t2");
	var t3 = document.getElementById("t3");
	var t4 = document.getElementById("t4");
	var t5 = document.getElementById("t5");
	var t6 = document.getElementById("t6");
	var url =my+"api/register/details/"+sessionStorage.getItem("username");
	
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
function eventDisplayFunction()
{
	User();displayDetails();readEvent();loader();startTime();typeWriter();
}
function myTime(date) 
{
    const [h,m]=date.split(':');
    var median;
    var hour;
    if(h==0)
    {
    	hour=12;
    	median="AM";
    }
    else if(h==12)
    {
    	hour=12;
    	median="PM";
    }
    else if(h<12)
    {
        hour=h;
        median="AM"
    }
    else if(h>12 && h<=24)
    {
        hour=h-12;
        if(hour<10)
        {
        	hour="0"+hour;
        }
        median="PM";
    }
    const result=hour+":"+m+" "+median;
    return result;
}
function myDate(dt)
{
    const [y,m,d]=dt.split('-');
    var month,day;
    if(d==1)
    {
        day="1st";
    }
    else if(d==2)
    {
        day="2nd";
    }
    else if(d==3)
    {
        day="3rd";
    }
    else
    {
        day=d+"th";
    }
    if(m==1)
    {
        month="January";
    }
    else if(m==2)
    {
        month="February";
    }
    else if(m==3)
    {
        month="March";
    }
    else if(m==4)
    {
        month="April";
    }
    else if(m==5)
    {
        month="May";
    }
    else if(m==6)
    {
        month="June";
    }
    else if(m==7)
    {
        month="July";
    }
    else if(m==8)
    {
        month="August";
    }
    else if(m==9)
    {
        month="September";
    }
    else if(m==10)
    {
        month="October";
    }
    else if(m==11)
    {
        month="November";
    }
    else if(m==12)
    {
        month="December";
    }
    const ans=[day,month,y].join(' ');
    return ans;
}
function readEvent()
{
	let personName=sessionStorage.getItem("username")
	if(personName==null)
	{
	    window.location=my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url=my+"api/event/read";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send();
		
		var display = document.getElementById("display");
		var event = document.getElementById("event");
		
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
					table=table+"<div class=\"column\">"+
                					"<div class=\"flip-card\">"+
                    					"<div class=\"flip-card-inner\">"+
                        					"<div class=\"flip-card-front\">";
                        					table=table+"<img src=\"img/display.svg\" class=\"img-fluid\" alt=\"Login image\" width=\"50%\" height=\"50%\" onContextMenu=\"return false;\"/>";
                        					table=table+"<br/>";
                        					table=table+"<h2>"+data[x].name+"</h2>";
								 			table=table+"</div>"+
                    					"<div class=\"flip-card-back\">"+
                    						"<label>"+
	                        					"<button onclick=\"newTabOpen('"+ data[x].eventId +"')\">Register</button></a>"+
                    						"</label>"+
                						"</div>"+
            						"</div>"+
            					"</div>"+
            				"</div>";
            				event.value=data[x].eventId;
					i++;
				}
				table=table+"</div>"+
				"</div>";
				display.innerHTML = table;
			}
		};
	}
}
function eventDetailsEvent(eid)
{
	let personName=sessionStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var e1 = document.getElementById("e1");
		var e2 = document.getElementById("e2");
		var e3 = document.getElementById("e3");
		var e4 = document.getElementById("e4");
		var e5 = document.getElementById("e5");
		var e6 = document.getElementById("e6");
		var e7 = document.getElementById("e7");
		var e8 = document.getElementById("e8");
		var event = document.getElementById("event");
		var url = my+"api/event/read/"+eid;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
			
		xhtml.send();
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				
				for(var x in data)
				{
					e1.innerHTML=data[x].eventId;
					e2.innerHTML=data[x].name;
					e3.innerHTML=data[x].location;
					e4.innerHTML=myDate(data[x].dor);
					e5.innerHTML=myTime(data[x].tr);
					e6.innerHTML=myDate(data[x].doc);
					e7.innerHTML=myTime(data[x].tc);
					e8.innerHTML=data[x].info;
					eventTime(data[x].doc);
				}
			}
		};
	}
}
function eventTime(time)
{
	var g2 = new Date(time);//Event
	var g1 = new Date();//Today
	if((g2.getMonth()>=g1.getMonth()) && (g2.getDate()>=g1.getDate()) && (g2.getFullYear()>=g1.getFullYear()))
    {
		//document.write("g1 is lesser than g2");
        //document.getElementById('demo').innerHTML="Event opened";
        document.getElementById('id01').style.display='block';
    }
	else
	{
		document.getElementById('id02').style.display='block';
		setTimeout(function()
		{
			newTabClose();
		},3000);
	}
}
function newTabClose()
{
    document.getElementById('id01').style.display='none';
}
function newTabCheckClose()
{
    document.getElementById('id02').style.display='none';
}
function newTabOpen(eid)
{
	eventDetailsEvent(eid);
    document.getElementById('id01').style.display='block';
    sessionStorage.setItem("eid",eid);
}
function saveEventRegister()
{
	let personName=sessionStorage.getItem("username")
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
		
		var eId=sessionStorage.getItem("eid");
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("t2");
		var t3 = document.getElementById("t3");
		var t4 = document.getElementById("t4");
		var t5 = document.getElementById("t5");
		var t6 = document.getElementById("t6");
		var lbl = document.getElementById("lbl");
		xhtml.send(JSON.stringify({
			username : t1.value,
			ev_id : eId,
			yr : t5.value,
			gen : t4.value,
			email : t3.value,
			branch : t6.value,
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
function eventDisplayEventFunction()
{
	AdminOrganiser();read();loader();startTime();typeWriter();
}
function read()
{
	let personName=sessionStorage.getItem("username")
	if(personName==null)
	{
	    window.location=my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var url=my+"api/event/read";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send();
		
		var display = document.getElementById("display");
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var table = "<div class=\"container\">"+ 
		        			"<div class=\"row\">";
		        
				var data = JSON.parse(this.responseText);
				for(var x in data)
				{
					table=table+"<div class=\"column\">"+
                					"<div class=\"flip-card\">"+
                    					"<div class=\"flip-card-inner\">"+
                        					"<div class=\"flip-card-front\">";
                        					table=table+"<img src=\"img/display.svg\" class=\"img-fluid\" alt=\"Login image\" width=\"50%\" height=\"50%\" onContextMenu=\"return false;\"/>";
                        					table=table+"<br/>";
                        					table=table+"<h2>"+data[x].name+"</h2>";
								 			table=table+"</div>"+
                    					"<div class=\"flip-card-back\">"+
                    						"<label>"+
	                        					"<button onclick=\"newUpdateOpen('"+ data[x].eventId +"')\">Update</button></a>"+
                    						"</label>"+
                    						"<br/>"+
                    						"<br/>"+
                    						"<label>"+
	                        					"<button onclick=\"newDeleteOpen('"+ data[x].eventId +"')\">Delete</button></a>"+
	                						"</label>"+
                						"</div>"+
            						"</div>"+
            					"</div>"+
            				"</div>";
					i++;
				}
				table=table+"</div>"+
				"</div>";
				display.innerHTML = table;
			}
		};
	}
}
function newUpdateClose()
{
    document.getElementById('upd').style.display='none';
}
function newUpdateOpen(eid)
{
	eventDetails(eid);
    document.getElementById('upd').style.display='block';
}
function newCreateClose()
{
    document.getElementById('crt').style.display='none';
}
function newCreateOpen()
{
    document.getElementById('crt').style.display='block';
}
function eventDetails(eid)
{
	var xhtml = new XMLHttpRequest();
	var e1 = document.getElementById("t1");
	var e2 = document.getElementById("t2");
	var e3 = document.getElementById("t3");
	var e4 = document.getElementById("t4");
	var e5 = document.getElementById("t5");
	var e6 = document.getElementById("t6");
	var e7 = document.getElementById("t7");
	var e8 = document.getElementById("t8");
	var event = document.getElementById("event");
	var url = my+"api/event/read/"+eid;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
		
	xhtml.send();
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			
			for(var x in data)
			{
				e1.value=data[x].eventId;
				e2.value=data[x].name;
				e3.value=data[x].dor;
				e4.value=data[x].tr;
				e5.value=data[x].doc;
				e6.value=data[x].tc;
				e7.value=data[x].location;
				e8.value=data[x].info;
			}
		}
	};
}
function update()
{
	let personName=sessionStorage.getItem("username")
	if(personName==null)
	{
		window.location = my+"login.jsp";  
	}
	else
	{
		var xhtml = new XMLHttpRequest();
		var t1 = document.getElementById("t1");
		var t2 = document.getElementById("t2");
		var t3 = document.getElementById("t3");
		var t4 = document.getElementById("t4");
		var t5 = document.getElementById("t5");
		var t6 = document.getElementById("t6");
		var url = "api/event/update/"+t1.value;
		xhtml.open("PUT", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		xhtml.send(JSON.stringify({
			eventId : t1.value,
			name : t2.value,
			dor : t3.value,
			tr : t4.value,
			doc : t5.value,
			tc : t6.value,
			location : t7.value,
			info : t8.value
		}));
			
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
				lbl.style.display="block";
				lbl.innerText = this.responseText;
				setTimeout(function()
				{
					    lbl.style.display="none";
				},1000);
				setTimeout(function()
				{
						newUpdateClose();
				},3000);  
		};
	}
}
function newDeleteClose()
{
    document.getElementById('del').style.display='none';
}
function newDeleteOpen(eid)
{
    document.getElementById('del').style.display='block';
    document.getElementById("d1").innerHTML=eid;
    var eventId=sessionStorage.setItem("evid",eid);
}
function remove()
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/event/delete/"+sessionStorage.getItem("evid");
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	var lbl = document.getElementById("rm");
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
				newDeleteClose();
			},1000); 
			window.location.reload();
	};
}
function save()
{
	var xhtml = new XMLHttpRequest();
	var url = my+"api/event/create";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	var t1 = document.getElementById("r1");
	var t2 = document.getElementById("r2");
	var t3 = document.getElementById("r3");
	var t4 = document.getElementById("r4");
	var t5 = document.getElementById("r5");
	var t6 = document.getElementById("r6");
	var t7 = document.getElementById("r7");
	var t8 = document.getElementById("r8");
	var lbl = document.getElementById("cf");
	xhtml.send(JSON.stringify({
		eventId : t1.value,
		name : t2.value,
		dor : t3.value,
		tr : t4.value,
		doc : t5.value,
		tc : t6.value,
		location : t7.value,
		info : t8.value
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
				  window.location.reload();
			}
			else
			{
				  lbl.style.display="none";
			}
	};
}
</script>
<script type="text/javascript" src="js/back/role.js"></script>
</html>	