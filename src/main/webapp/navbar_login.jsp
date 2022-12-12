<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/all-css.css">
</head>
<div>
<nav class="" style="z-index: 999;">
	<ul>
	  <li><div class="p2" id="tit"></div></li>
      <li style="float: right;"><i class="fa fa-user" onclick="profile()"></i><p id="demo"></p></li> 
	  <li style="float: right;"><i onclick="myDark(this)" class="fa fa-sun-o"></i></li>
	  <li style="float: right;"><div class="time" id="time"></div></li>
      <li style="float: right;"><span class="dot"> • </span></li>
      <li style="float: right;"><div class="day" id="day"></div></li> 
	</ul>
</nav>
</div>
<script type="text/javascript" src="js/back/navbar.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
</html>