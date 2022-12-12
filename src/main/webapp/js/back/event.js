function displayDetailsEvents()
{
	var xhtml = new XMLHttpRequest();
	var t1 = document.getElementById("a1");
	var t2 = document.getElementById("a2");
	var t3 = document.getElementById("a3");
	var t4 = document.getElementById("a4");
	var t5 = document.getElementById("a5");
	var t6 = document.getElementById("a6");
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
				localStorage.setItem("uname",data[x].name);
				t3.value=data[x].email;
				t4.value=data[x].gender;
				t5.value=data[x].year;
				t6.value=data[x].branch;
			}
		}
	};
}
function dateValid()
{
	document.getElementById("r3").setAttribute('min', new Date().toISOString().split('T')[0]);
	document.getElementById("r5").setAttribute('min', new Date().toISOString().split('T')[0]);
	document.getElementById("t3").setAttribute('min', new Date().toISOString().split('T')[0]);
	document.getElementById("t3").setAttribute('min', new Date().toISOString().split('T')[0]);
}
function eventDisplayFunction()
{
	User();displayDetailsEvents();readEvent();loader();startTime();typeWriter();
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
	let personName=localStorage.getItem("username")
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
		
		var display = document.getElementById("dsp");
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
	let personName=localStorage.getItem("username")
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
					eventTime(data[x].doc,data[x].tc);
					localStorage.setItem("endTime",data[x].doc);
					localStorage.setItem("ename",data[x].name);
				}
			}
		};
	}
}
Date.prototype.withoutTime=function () 
{
    var d=new Date(this);
    d.setHours(0,0,0,0);
    return d;
}
Date.prototype.withTime=function(hours, minutes) 
{
    var d = new Date(this);
    d.setHours(hours);
    d.setMinutes(minutes);
    return d;
}
function eventTime(day,time)
{
	var g2 = new Date(day);//Event
	var g1 = new Date();//Today
	const[hours,minutes]=time.split(':');
	//alert("Today Date : "+g1);
    //alert("Event Deadline : "+g2.withTime(hours,minutes));
	if(g1<=g2.withTime(hours,minutes))     
	{
		//document.write("g1 is lesser than g2");
        //document.getElementById('demo').innerHTML="Event opened";
        document.getElementById('id01').style.display='block';
        document.getElementById('id02').style.display='none';
    }
	else
	{
		document.getElementById('id02').style.display='block';
		var msg="Sorry you cannot proceed. Registrations are closed. Contact admin";
		msging(msg);
		setTimeout(function()
		{
			newTabClose();
		},6000);
	}
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
    localStorage.setItem("eid",eid);
}
function eventDisplayEventFunction()
{
	dateValid();AdminOrganiser();read();loader();startTime();typeWriter();
}
function read()
{
	let personName=localStorage.getItem("username")
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
function updateEvent()
{
	let personName=localStorage.getItem("username")
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
		var url = my+"api/event/update/"+t1.value;
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
				window.location.reload(); 
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
    localStorage.setItem("evid",eid);
}
function removeEvent()
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/event/delete/"+localStorage.getItem("evid");
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
function saveEvent()
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