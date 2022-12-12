<!DOCTYPE html>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page errorPage="error.jsp"%>  
<html>
<head>
<meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<link rel="stylesheet" type="text/css" href="css/all-css.css">
<link rel="stylesheet" type="text/css" href="css/dashboard.css">
</head>
<body onload="organiser_display()" öncontextmenu="return false">
<div id="loader" class="center"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
    <header>
    <div class="topnav">
        <a class="event-name">Event Management System</a>
        <a style="float: right;"><div class="time" id="time"></div></a>
        <a style="float: right;"><span class="dot"> • </span></a>
        <a style="float: right;"><div class="day" id="day"></div></a>
        <a class="openbtn" onclick="openNav()">
            <i class="fas fa-bars" id="obtn"></i>
        </a>
    </div>
    </header>
    <div class="sidebar" id="mySidenav">
        <div align="center">
            <img src="img/organiser.jpg" class="profile_image" height="100%" width="65%" alt="Organiser Profile">
            <h4>Hello, Organiser</h4>
        </div>
        <span class="closebtn" id="cbtn" onclick="closeNav()">&times;</span>
        <a onclick="dash1()" class="active"><i class="fas fa-tachometer-alt"></i><span>Home</span></a>
        <a onclick="dash2()"><i class="fa-solid fa-user"></i><span>Profile</span></a>
        <a onclick="dash3()"><i class="fa fa-pencil-square-o"></i><span>Update Password</span></a>
        <a onclick="dash4()"><i class="fa fa-clone"></i><span>Events</span></a>
        <a onclick="log()"><i class="fa fa-sign-out"></i><span>Logout</span></a>
    </div>

    <br/>
    <br/>
    <br/>

    <div id="main">
        <div align="center">
            <div id="home">
                <h1>Welcome Back, ${username}</h1>
                <h1>Role : Organiser</h1>
	            <h3>Session ID:  <%= session.getId()%></h3>
	            <h3>Login Time:  <%= new Date(session.getCreationTime())%></h3>
	            <h3>Last Accessed Time: <%= new Date(session.getLastAccessedTime())%></h3> 
            </div>
	        <div id="profile">
	        	<!-- Profile Details -->
	        	<h2>Profile Details</h2>
	        	<%@ include file="profile_details.jsp"%>	
	        </div>
	        <div id="pwd">
	        	<!-- Update Password -->
	        	<h2>Update Password</h2>
	        	<%@ include file="update_password.jsp"%>
	        </div>	
	        <div id="event">
	            <!-- All the Event CRUD -->
	            <h2>Event Details</h2>
	            <%@ include file="event.jsp"%>	
			    <br/>      
			 </div>
	            <!-- Participants -->
	         <div id="members">
	            <h2>Register</h2>
	            <%@ include file="participants.jsp"%>
	            <br/>
	         </div>
	            <!-- Contact -->
	         <div id="contact">
	            <h2>Contact</h2>
	            <div style="width:100%" id="cont" ></div>
	         </div>
	  </div>
	</div>
</div>
</body>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript" src="js/back/dashboard.js"></script>
<script type="text/javascript" src="js/front/dashboard.js"></script>
<script type="text/javascript" src="js/back/login.js"></script>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/navbar.js"></script>
<script type="text/javascript" src="js/back/event.js"></script>
<script type="text/javascript" src="js/back/role.js"></script>
<script type="text/javascript">
function organiser_display()
{
	Organiser();displayDetailsEvents();dash1();readContact();dateValid();displayDetailsUser();displayDetailsProfile();readRegister();openNav();eventDisplayEventFunction();
}
</script>
</html>