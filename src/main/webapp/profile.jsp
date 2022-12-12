<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/all-css.css">
<link rel="stylesheet" type="text/css" href="css/profile.css">
<link rel="icon" type="image/x-icon" href="/img/tab.png">
</head>
<body onload="typeWriter();login();loader();startTime();">
<%@include file="navbar.jsp" %>
<div id="loader" class="center"></div>
<br/>
<div class="break"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
  <div id="lbl" class="alert info"><span class="closebtn">&times;</span></div>
  <br/>
  <br/>
  <br/>
	<div class="card">
	  <div class="row">
	    <div class="leftcolumn">
	        <img src="img/profile.svg" class="img-fluid" alt="Login image" width="80%" height="50%" onContextMenu="return false;">
	    </div>
	  </div>
	    <div class="row">
	      <div class="rightcolumn">
	      	 <form method="post" onsubmit="updateProfileRegisteration();redirect();" action="login.jsp">   
	            <input type="text" id="t1" placeholder="Username" disabled/>
	            <br/>
	            <br/>
	            <fieldset>
	              <legend>Year of Study</legend>
	                <select name="year" id="t2" required> 
	                      <option value="">Select One</option> 
	                      <option value="1st year">First year</option>
	                      <option value="2nd year">Second Year</option>
	                      <option value="3rd year">Third Year</option>
	                      <option value="4th year">Fourth Year</option>
	                </select>
	            </fieldset>
	            <br/>
	            <fieldset>
	              <legend>Branch</legend>
	                <select name="branch" id="t3" required> 
	                      <option value="">Select One</option> 
	                      <option value="Artifical Intelligence & Data Science">Artifical Intelligence & Data Science</option>
	                      <option value="Bio Technology">Bio Technology</option>
	                      <option value="Civil Engineering">Civil Engineering</option>
	                      <option value="Computer Science & Engineering">Computer Science & Engineering</option>
	                      <option value="Computer Science & information Technology">Computer Science & information Technology</option>
	                      <option value="Electrical & Electronics Engineering">Electrical & Electronics Engineering</option>
	                      <option value="Electronics & Communication Engineering">Electronics & Communication Engineering</option>
	                      <option value="Electronics and Computer Science">Electronics and Computer Science</option>
	                      <option value="Internet of Things">Internet of Things</option>
	                      <option value="Mechanical Engineering">Mechanical Engineering</option>
	                </select>
	            </fieldset>
	            <br/>
	            <fieldset>
	              <legend>Gender</legend>
	              	<select name="gender" id="t4" required> 
	                    <option value="">Select one</option> 
	                    <option value="Male">Male</option>
	                    <option value="Female">Female</option>
	                </select>
	            </fieldset>
	            <br/>
	            <fieldset>
	              <legend>State</legend>
	                <select name="state" id="t5" required> 
	                    <option value="">Select one</option> 
	                    <option value="Andhra Pradesh">Andhra Pradesh </option>
	                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
	                    <option value="Assam">Assam</option>
	                    <option value="Bihar">Bihar</option>
	                    <option value="Chattisgarh">Chattishgarh </option>
	                    <option value="Goa">Goa</option>
	                    <option value="Gujarat">Gujarat</option>
	                    <option value="Haryana">Haryana</option>
	                    <option value="Himachal Pradesh">Himachal Pradesh</option> 
	                    <option value="Jammu & Kashmir">Jammu & Kashmir</option>
	                    <option value="Jharkhand">Jharkhand </option>
	                    <option value="Karnataka">Karnataka </option>
	                    <option value="Kerala">Kerala </option>
	                    <option value="Madhya Pradesh">Madhya Pradesh </option>
	                    <option value="Maharashtra">Maharashtra</option>
	                    <option value="Manipur">Manipur </option>
	                    <option value="Meghalaya">Meghalaya</option>
	                    <option value="Mizoram">Mizoram </option>
	                    <option value="Nagaland">Nagaland </option>
	                    <option value="Odisha">Odisha </option>
	                    <option value="Punjab">Punjab </option>
	                    <option value="Rajasthan">Rajasthan</option>
	                    <option value="Sikkim">Sikkim </option>
	                    <option value="Tamil Nadu">Tamil Nadu</option>
	                    <option value="Telangana">Telangana</option>
	                    <option value="Tripura">Tripura </option>
	                    <option value="Uttar Pradesh">Uttar Pradesh</option>
	                    <option value="Uttarakhand">Uttarakhand </option>
	                    <option value="West Bengal">West Bengal</option>
	                </select>
	            </fieldset>
	            <br/>
	            <input placeholder="Phone" type="tel" pattern="[0-9]{10}" id="t6" required title="Phone number must contains 10 digit"/>
	            <br/>
	            <br/>
	          	<button type="submit">Save</button>
	           </form>
	      </div>
	    </div>
	</div>
</div>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript" src="js/back/navbar.js"></script>
</body>
</html>