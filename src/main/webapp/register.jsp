<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/all-css.css">
  <link rel="stylesheet" type="text/css" href="css/register.css">
  <link rel="stylesheet" type="text/css" href="css/navbar.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href="/img/tab.png">
</head>
<body onload="typeWriter();startTime();loader();userVerification();logout()">
<%@include file="navbar.jsp" %>
<div id="loader" class="center"></div>
<br/>
<div class="break"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
  <div id="lbl" class="alert info"></div>
  <br/>
  <br/>
  <br/>
	    <div class="row">
	      <div class="leftcolumn">
	          <input type="email" id="t1" placeholder="Email" required/>
	          <br/>
	          <br/>
	          <br/>
	          <input type="text" id="t2" placeholder="Username" required/>
	          <br/>
	          <br/>
	          <br/>
	          <input type="text" id="t3" placeholder="Name" required/>
	          <br/>
	          <br/>
	          <br/>
	          <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="t4" required placeholder="Password" title="Password matching expression. Password must be at least 8 characters and must include at least one upper case letter, one lower case letter, and one numeric digit."/>
	          <br/>
	          <br/>
	          <br/>
	          <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="t5" required placeholder="Conform Password" title="Password matching expression. Password must be at least 8 characters and must include at least one upper case letter, one lower case letter, and one numeric digit."/>
	          <br/>
	          <div id="valid" style="color:red"></div>
	          <br/>
	          <label>
	            <input type="checkbox" name="remember"> I agree all statements in <a style="color: #0000FF;cursor: pointer;" onclick="newTabOpen()" style="width:auto;">Terms of service</a>
	          </label>
	          <!--Open Tag-->
	          <div id="id01" class="modal">
	            <div class="modal-content animate">
	              <div class="container" style="background-color:blue">
	                <br/>
	                <br/>
	                <span onclick="newTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
	              </div>
	          
	              <div class="container" style="pointer-events: all;">
	                <h1><b class="align-center">Terms and Conditions</b></h1>
	                  <p>1. You should be register /prebook for the event</p>
	                  <p>2. Pay the fee if it is there for the event beore the deadline</p>
	                  <p>3. If u pay the fee then it is non refundable</p>
	                  <p>4. You should join on the time</p>
	                  <p>5. Result will declared within two working days</p>
	                <br/>
	              </div>
	          
	              <div class="container" style="background-color:#f1f1f1">
	                <br/>
	              </div>
	            </div>
	          </div>
          <!--CLose Tag-->
	          <br/>
	          <br/>
	          <button onclick="saveRegister();">SignUp</button>
	          <br/>
	          <br/>
	          <label>Already have an account <a href="#!" style="color: crimson;font-size: large;" onclick="redirect()">Login</a></label>
	      </div>
	    </div>
	    <div class="row">
	      <div class="rightcolumn"  style="float: right;">
	          <img src="img/register.svg" class="img-fluid" alt="Signup image" width="100%" height="80%" onContextMenu="return false;">
	      </div>
	    </div>
	</div>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
<script type="text/javascript" src="js/back/register.js"></script>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/front/navbar.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
</body>
</html>