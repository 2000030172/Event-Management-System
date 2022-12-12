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
<body onload="User();readRegisterEvent();dash1();displayDetailsProfileForEvent();displayDetailsEvents();displayDetailsProfile();displayDetailsUser();openNav();loader();startTime();readEvent();">
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
            <img src="data:image/jpeg;base64,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" class="profile_image" alt="User Profile">
            <h4>Hello, User</h4>
        </div>
        <span class="closebtn" id="cbtn" onclick="closeNav()">&times;</span>
        <a onclick="dash1()" class="active"><i class="fas fa-tachometer-alt"></i><span>Home</span></a>
        <a onclick="dash2()"><i class="fa-solid fa-user"></i><span>Profile</span></a>
        <a onclick="dash3()"><i class="fa fa-pencil-square-o"></i><span>Update Password</span></a>
        <a onclick="dash4()"><i class="fa fa-clone"></i><span>Events</span></a>
        <a onclick="dash5()"><i class="fa fa-credit-card-alt"></i><span>Registered Events</span></a>
        <a onclick="dash6()"><i class="fa fa-comments"></i><span>Contact Queries</span></a>
        
        <a onclick="log()"><i class="fa fa-sign-out"></i><span>Logout</span></a>
    </div>
    <br/>
    <br/>
    <br/>
    <div id="main">
        <div align="center">
            <div id="home">
            	<br/>
                <h1>Welcome Back, ${username} </h1>
                <h1>Role : User</h1>
	            <h3>Session ID:  <%= session.getId()%></h3>
	            <h3>Login Time:  <%= new Date(session.getCreationTime())%></h3>
	            <h3>Last Accessed Time: <%= new Date(session.getLastAccessedTime())%></h3>
            </div>
	       <div id="profile">
	       		<br/>
	        	<!-- Profile Details -->
	        	<h2>Profile Details</h2>
	        	<%@ include file="profile_details.jsp"%>	
	        </div>
	        <div id="pwd">
	        	<br/>
	        	<!-- Update Password -->
	        	<h2>Update Password</h2>
	        	<%@ include file="update_password.jsp"%>
	        </div>	
	        <div id="event">
	        	<!-- Event Details -->
	            <br/>
	            <h2>Event Details</h2>
	            <h1 style="color: red">Only One Event can be Registered</h1>
	            <%@ include file="events.jsp"%>	
    		</div>
    		
    		<div id="members">
    			<br/>
    			<h2>Events Registered</h2>
    			<%@ include file="registered_events.jsp"%>
    		</div>
    		
    		<div id="contact">
    			<!-- Contact -->
    			Queries
    			
    			Complaint : <input type="text" id="cp1"/>
				<label id="cmpd" class="alert info"><span class="closebtn">&times;</span></label>
				<button onclick="insertComplainting()">Insert</button>
    			<br/>
    			<br/>
    			<button onclick="readComplaints()">Your Previous Queries</button>
    			<div style="width:100%" id="complaint"></div>
    		</div>
		</div>
     </div> 
</div>
</body>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript" src="js/front/dashboard.js"></script>
<script type="text/javascript" src="js/back/dashboard_user.js"></script>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/navbar.js"></script>
<script type="text/javascript" src="js/back/login.js"></script>
<script type="text/javascript" src="js/back/event.js"></script>
<script type="text/javascript" src="js/back/role.js"></script>
</html>