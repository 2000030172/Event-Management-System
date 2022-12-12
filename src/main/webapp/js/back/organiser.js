function sendemail() 
{
     var userid = "user_YlpUOvR4XMQbNkLOirmRy"
     emailjs.init(userid);
     var thename = document.getElementById('t4').value;
     var themail = document.getElementById('t3').value;
     var validmail = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
     if (thename == "") 
     {
        alert("Please Enter Name");
     }
     else 
     {
    	var otp= generateOTP();
    	document.getElementById("otp").value=otp;
        var contactdetail = 
        {
          to_name: thename,
          to_email: themail,
          value:otp
        };

        emailjs.send('service_7igupyo','template_nv47qr1', contactdetail).then(function (res) 
        {
          alert("Email Sent Successfully");
        },
        reason =>
        {
            alert("Error Occur");
        })
     }
}
function log()
{
	localStorage.removeItem("username");
	localStorage.removeItem("password");
	window.location=my+"login.jsp";
}