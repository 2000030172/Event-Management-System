<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="readComplaints()">
	<div style="width: 100%" id="complaint"></div>
	
	Complaint : <input type="text" id="cp1"/>
	
	<label id="lbl"></label>
	<button onclick="insertComplainting()">Insert</button>
	
</body>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript">
function insertComplainting()
{
	var xhtml = new XMLHttpRequest();
	var url=my+"api/insertComplaint";
	xhtml.open("POST", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	
	var user=localStorage.getItem("username");
	var t1=document.getElementById("cp1");
	var lbl=document.getElementById("cmpd");
	
	var currDate=new Date();
	var dt=currDate.toLocaleDateString('en-CA');
		
	xhtml.send(JSON.stringify({
		username:user,
		rdate:dt,
		complaint:t1.value
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
</script>
</html>