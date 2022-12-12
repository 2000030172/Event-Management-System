<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
</head>
<div>
<nav class="navbar-fixed-top">
	<ul>
	  <li><div class="p2" id="tit"></div></li>
      <li style="float: right;"><div class="login" onclick="login()">Login</div></li> 
	  <li style="float: right;"><div class="register" onclick="register()">Register</div></li> 
	  <li style="float: right;"><i onclick="myFunction(this)" class="fa fa-sun-o"></i></li>
	  <li style="float: right;"><div class="time" id="time"></div></li>
      <li style="float: right;"><span class="dot"> • </span></li>
      <li style="float: right;"><div class="day" id="day"></div></li> 
	</ul>
</nav>
</div>
<script type="text/javascript" src="js/back/navbar.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
</html>