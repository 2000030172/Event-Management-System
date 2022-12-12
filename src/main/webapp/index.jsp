<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/loader.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="icon" type="image/x-icon" href="/img/tab.png">
<title>Index Page</title>
</head>
<style>
 @import url('https://fonts.googleapis.com/css2?family=Niconne&display=swap');
  input[type=text],input[type=password],input[type=number],input[type=email]
  {
       border-radius: 8px;
       position: relative;
       border: 1px solid #ccc;
  }
  h3, h4 
  {
     margin: 10px 0 30px 0;
     letter-spacing: 10px;      
     font-size: 20px;
     color: #111;
  }
  .container 
  {
    padding: 80px 120px;
  }
  .person 
  {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover 
  {
    border-color: #f1f1f1;
  }
  .carousel-inner img 
  {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 
  {
    color: #fff !important;
  }
  @media (max-width: 600px) 
  {
    .carousel-caption 
    {
       display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1  
  {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 
  {
     color: #fff;
  }
  .list-group-item:first-child 
  {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child 
  {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail 
  {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p 
  {
    margin-top: 15px;
    color: #555;
  }
  .btn 
  {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus 
  {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close 
  {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body 
  {
    padding: 40px 50px;
  }
  .nav-tabs li a 
  {
    color: #777;
  }
  #googleMap 
  {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar 
  {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand 
  { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover 
  {
    color: #fff !important;
  }
  .navbar-nav li.active a 
  {
    color: #fff !important;
  }
  .navbar-default .navbar-toggle 
  {
    border-color: transparent;
  }
  .open .dropdown-toggle 
  {
    color: #fff;
  }
  .dropdown-menu li a 
  {
    color: #000 !important;
  }
  .dropdown-menu li a:hover 
  {
    background-color: red !important;
  }
  footer 
  {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a 
  {
    color: #f5f5f5;
  }
  footer a:hover 
  {
    color: #777;
    text-decoration: none;
  }  
  .form-control 
  {
    border-radius: 0;
  }
  textarea 
  {
       border-radius: 12px;
       color:black;
       border-color: black;
       padding: 12px;
       position: relative;
       border: 1px solid #ccc;
       width:500px;
       border-radius: 8px;
       resize: none;
  }
  /* .time
  {
    font-family:cursive;
    font-size: 20px;
    text-align:center;
    float: right;
    margin-top: 5px;
    color: white;
  }
  .day
  {
    font-family:cursive;
    font-size: 20px;
    float: right;
    margin-top:5px;
    color: white;
  }
  .dot
  {
        color: white;
        margin: auto;
  } */
  button
  {
      background-color: #0000FF;
      border-color: aqua;
      border: 3cm;
      border-radius: 8px;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      cursor: pointer;
  }
  .p2
  {
      font-size: 35px;
      font-weight: 300;
      font-family: 'Niconne', cursive;
      color: darkcyan;
  }
  footer .glyphicon 
  {
    font-size: 20px;
    margin-bottom: 20px;
    color: white;
  }
  .slideanim 
  {
  	visibility:hidden;
  }
  .slide 
  {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide 
  {
    0% 
    {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide 
  {
    0% 
    {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% 
    {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) 
  {
    .col-sm-4 
    {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg 
    {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  .carousel-control.right, .carousel-control.left 
  {
    background-image: none;
    color: blue;
  }
  .carousel-indicators li 
  {
    border-color: blue;
  }
  .carousel-indicators li.active 
  {
    background-color: blue;
  }
  * 
  {
    box-sizing: border-box;
  }
.mySlides 
{
    padding:80px;
    display: none;
    text-align: center;;
}
img 
{
    vertical-align: middle;
}

/* Slideshow container */
.slideshow-container 
{
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text 
{
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext 
{
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot 
{
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active 
{
  background-color: lightblue;
}

/* Fading animation */
.fade 
{
  animation-name: fade;
  animation-duration: 1.5s;
}
@keyframes fade 
{
  from {opacity: .4} 
  to {opacity: 1}
}
/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) 
{
  .text {font-size: 11px}
}
.logreg
{
    border-radius: 4px;
    color:blue;
}
#myBtn 
{
      display: none;
      position: fixed;
      bottom: 20px;
      right: 30px;
      font-size: 18px;
      height:50px;
      width:50px;
      background-color:blue;
      color:white;
      cursor:pointer;
      padding: 15px;
      border-radius:35px;
}
#myBtn:hover 
{
      background-color: #555;
}
.alert 
{
    padding: 15px;
    color: white;
    transition: opacity 0.6s;
    font-size: 35px;
    font-weight: 300;
    border-radius: 20px;
    font-family: 'Niconne', cursive;
    margin-right: 15px;
    float: right;
    width: 25%;
    display: none;
}
.alert.info 
{
    background-color: #2196F3;
}
img 
{
   	pointer-events: none;
}
</style>
<body onload="loader()" style="margin:0;" id="myPage">
<div id="loader" class="center"></div>
<div style="display:none;" id="myDiv"  class="animate-bottom">
	<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <!-- <a class="navbar-brand" href="#">Event Management System</i></a> -->
            <a class="navbar-brand" href="index.jsp">Event Management System</a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <!-- <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Page 1-1</a></li>
                  <li><a href="#">Page 1-2</a></li>
                  <li><a href="#">Page 1-3</a></li>
                </ul>
              </li> -->
              <li><a href="#about">About</a></li>
              <li><a href="#team">Team</a></li>
              <li><a href="#myFade">Portfolio</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <!-- <li><div class="time" id="time"></div></li>
              <li><span class="dot">&#9679;</span></li>
              <li><div class="day" id="day"></div></li>  -->
              <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
              <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="img/event1.jpg" alt="New York" width="1200" height="700">
          </div>
          <div class="item">
            <img src="img/event2.jpg" alt="Chicago" width="1200" height="700">     
          </div>        
          <div class="item">
            <img src="img/event3.jpg" alt="Los Angeles" width="1200" height="700">  
          </div>
        </div>   
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
<!-- Container (The Band Section) -->
<div id="about" class="container-fluid">
	<div id="band" class="container text-center">
	  <h3>About Us</h3>
	  <p><em>We love events</em></p>
	  <p>We have created a fictional band website. The use of project management in the planning and development of big events. It entails researching the brand, determining the target market, creating the event concept, scheduling the logistics, and arranging the technical parts before the event is really launched.</p>
	  <br>
	</div>
</div>
<div id="team" class="container-fluid">
	<div id="band" class="container text-center">
	<h3>Our Team</h3>
	  <div class="row">
	    <div class="col-sm-4">
	      <p class="text-center"><strong>Ravi Kumar Ranjan</strong></p><br>
	      <a href="#demo" data-toggle="collapse">
	        <img src="img/img1.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
	      </a>
	      <div id="demo" class="collapse">
	        <p>Team Lead</p>
	      </div>
	    </div>
	    <div class="col-sm-4">
	      <p class="text-center"><strong>Muni Prashanth</strong></p><br>
	      <a href="#demo2" data-toggle="collapse">
	        <img src="img/img3.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
	      </a>
	      <div id="demo2" class="collapse">
	        <p>BackEnd</p>
	      </div>
	    </div>
	    <div class="col-sm-4">
	      <p class="text-center"><strong>Venkatesh Kumar</strong></p><br>
	      <a href="#demo3" data-toggle="collapse">
	        <img src="img/img2.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
	      </a>
	      <div id="demo3" class="collapse">
	        <p>FrontEnd</p>
	      </div>
	    </div>
	  </div>
	</div>
</div>
<!--Portfolio-->

<div id="myFade" class="slideshow-container">
	<h2 style="text-align: center;">Users</h2>
    <div class="carousel slide text-center">
	    <div class="carousel-inner">
		    <div class="mySlides fade collapse">
		        <q>I can able to change user roles and I can do crud Operations on Event</q>
		        <p class="author">- Admin</p>
		    </div>
		    
		    <div class="mySlides fade collapse">
		        <q>I can update my details, I can create an event</q>
		        <p class="author">- Organiser</p>
		    </div>
		    
		    <div class="mySlides fade collapse">
		      <q>I can update my details, I can register one event and can download Certificate.</q>
		      <p class="author">- User</p>
		    </div>
		</div>
    </div>
</div>
    <br>
    <div style="text-align:center">
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span> 
    </div>

<!-- Modal -->

<div id="lbl" class="alert info"><span class="closebtn">&times;</span></div>
<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact Us</h3>
  <p class="text-center"><em>We love your Queries!</em></p>
  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>&#160;<a href="https://www.google.fr/maps/place/vijayawada/@16.4309133,80.6215801,15z/data=!3m1!4b1" style="color:#000;">Vijayawada, India</a></p>
      <p><span class="glyphicon glyphicon-phone"></span>&#160;Phone: <a href="tel:Mobile: +91 9931209574" style="color:#000;">+91 9931209574</a></p>
      <p><span class="glyphicon glyphicon-envelope"></span>&#160;Email: <a href="mailto:ravikumarranjan89555@mail.com" style="color:#000;">ravikumarranjan89555@mail.com</a></p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input type="text" id="name" placeholder="Name" required>
        </div>
        <div class="col-sm-6 form-group">
          <input type="email" id="email" placeholder="Email"  required>
        </div>
      </div>
      <textarea id="comments" placeholder="Comment" rows="5" style="border-radius: 8px;"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" onclick="createContact()" style="border-radius: 8px;">Send</button>
        </div>
      </div>
    </div>
  </div>
  <br>
  <h3 class="text-center">From The Blog</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Ravi</a></li>
    <li><a data-toggle="tab" href="#menu1" style="background-color:white">Venkatesh</a></li>
    <li><a data-toggle="tab" href="#menu2" style="background-color:white">Prashanth</a></li>
  </ul>
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active" style="background-color:white">
      <h2>Ravi Kumar Ranjan, Lead</h2>
      <p>Team Leader</p>
    </div>
    <div id="menu1" class="tab-pane fade" style="background-color:white">
      <h2>Venkatesh Kumar, Team Member</h2>
      <p>Front End</p>
    </div>
    <div id="menu2" class="tab-pane fade" style="background-color:white">
      <h2>Muni Prashanth, Team Member</h2>
      <p>Back End</p>
    </div>
  </div>
</div>
<!-- Scroll Up Button -->
<a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
  <button id="myBtn" title="Go to top">&#8593;</button>
</a>
<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
</footer>
</div>
</body>
<script type="text/javascript" src="js/front/loader.js"></script>
<script type="text/javascript" src="js/back/url.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  // Initialize Tooltip
	  $('[data-toggle="tooltip"]').tooltip(); 
	  // Add smooth scrolling to all links in navbar + footer link
	  $(".navbar a, footer a[href='#myPage']").on('click', function(event) 
	  {
	    if(this.hash!=="") 
	    {
	      event.preventDefault();
	      var hash = this.hash;
	      $('html, body').animate(
	      {
	        scrollTop: $(hash).offset().top
	      }, 300, function()
	      {
	     	 window.location.hash = hash;
	      });
	    }
	  });
	  $(window).scroll(function() {
	    $(".slideanim").each(function(){
	      var pos = $(this).offset().top;

	      var winTop = $(window).scrollTop();
	        if (pos < winTop + 600) {
	          $(this).addClass("slide");
	        }
	    });
	  });
	})
	let slideIndex = 0;
	showSlides();
	function showSlides() 
	{
	  let i;
	  let slides=document.getElementsByClassName("mySlides");
	  let dots=document.getElementsByClassName("dot");
	  for(i=0;i<slides.length;i++) 
	  {
	       slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if(slideIndex>slides.length) 
	  {
	       slideIndex=1
	  }    
	  for(i=0;i<dots.length;i++) 
	  {
	     dots[i].className=dots[i].className.replace("active","");
	  }
	  slides[slideIndex-1].style.display="block";  
	  dots[slideIndex-1].className+=" active";
	  setTimeout(showSlides,2000);
	}
	let mybutton = document.getElementById("myBtn");
	window.onscroll=function() 
	{
	    scrollFunction()
	};
	function scrollFunction() 
	{
	  if (document.body.scrollTop>20 || document.documentElement.scrollTop>20) 
	  {
	    mybutton.style.display = "block";
	  }
	  else 
	  {
	    mybutton.style.display = "none";
	  }
	}
	var my="http://localhost:8080/";
	function createContact()
	{
		var xhtml = new XMLHttpRequest();
		var url =my+"api/insert/contact";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		
		var t1 = document.getElementById("name");
		var t2 = document.getElementById("email");
		var t3 = document.getElementById("comments");
		xhtml.send(JSON.stringify({
			name : t1.value,
			email : t2.value,
			comment : t3.value,
		}));
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
				if(lbl.style.display!=="none")
				{
				    lbl.style.display="block";
				    lbl.innerText=this.responseText;
					setTimeout(function()
					{
				    	lbl.style.display="none";
				    },3000);
				}
				else
				{
					  lbl.style.display="none";	
				}
		};
	}
</script>
</html>