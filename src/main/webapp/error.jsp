<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<link rel="stylesheet" type="text/css" href="css/loader.css">
</head>
<body onload="loader()" style="margin:0;">
<div id="loader" class="center"></div>
<div style="display:none;" id="myDiv" class="animate-bottom">
    <div class="circle">
        <img src="img/error.svg" class="img-fluid" alt="Error Page" width="50%" height="50%" onContextMenu="return false;">
        <p style="text-align: center;">Page not Found </p>
        <button onclick="window.history.back();">Back to Home</button>
    </div>
</div>
<script type="text/javascript" src="js/back/loader.js"></script>
</body>
</html>