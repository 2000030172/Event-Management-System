<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/all-css.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<title>Login</title>
</head>
<body onload="userVerification();loginFunction()" style="margin:0;">
<%@include file="navbar.jsp" %>
<div id="loader" class="center"></div>
<br/><br/><br/></br>
<div style="display:none;" id="myDiv"  class="animate-bottom">
  <div id="lbl" class="alert info"><span class="closebtn">&times;</span></div>
  <div class="break"></div>
  <br/>
	<div class="card">
	  <div class="row">
	    <div class="leftcolumn">
	        <img src="img/login.svg" class="img-fluid" alt="Login image" width="80%" height="50%" onContextMenu="return false;">
	    </div>
	  </div>
	    <div class="row">
	      <div class="rightcolumn">
	            <input type="text" id="t1" placeholder="Username" required/>
	            <div class="required"><label id="user"></label></div>
	            <input type="password" id="t2" placeholder="Password" required/>
	            <div class="required"><label id="pass"></label></div>
	            <!-- Generating Captacha -->
	            <h2 id="otp"></h2>
	            <br/>
	            <div class="gen-route">
		            <input type="text" class="form-control" id="genotp" placeholder="Enter Verification Code" required>
		            	&nbsp;
		            <i class="fa-solid fa-rotate" style="cursor: pointer" onclick="generateOTP()"></i>
		        </div>
	            <div id="verify"></div>
	            <br/>
	            <br/>
	            <label>
	                <input type="checkbox" name="remember"required >  Remember me
	            </label>
	            <span class="psw"><a href="forgot.jsp">Forgot Password</a></span>
	            <br/>
	            <br/>
	            <button type="submit" onclick="validateFunction()">Login</button>
	            <br/>
	            <br/>
	            <label>Don't have an account? <a href="#!" style="color: crimson;font-size: large;" onclick="redirect()">Register</a></label>
	      </div>
	    </div>
	</div>
</div>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript" src="js/back/login.js"></script>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/front/navbar.js"></script>
<script>
function loginFunction()
{
	typeWriter();generateOTP();loader();startTime();
}
function validateFunction()
{
	saveLogin();verifyOTP();
}
</script>
</body>
</html>