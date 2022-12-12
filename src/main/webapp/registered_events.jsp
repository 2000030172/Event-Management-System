<h3>Registered Events</h3>

<div style="width:100%" id="reg" ></div>

<div id="status" class="modal">
	  <div id="stat" class="alert info"><span class="closebtn">&times;</span></div>
	      <div class="modal-content animate">
	          <div class="container" style="background-color:blue">
	              <h1 style="text-align: center;" class="p1">Event Status</h1>
	          </div>
	          
	          <div class="container" style="pointer-events: all">
	         	  <span onclick="newStatusTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			      <hr size="3" width="90%" color="blue">
			      
			       <div id="statuspdf">
			       		<style type="text/css">
			       			table 
							{
							  width: 100%;
							  border-radius: 4px;
							}
							th, td 
							{
							  text-align: center;
							  border-radius: 2px;
							}
							th
							{
								background-color: black;
								color: white;
							}
							tr:nth-child(even) 
							{
								background-color: #f2f2f2;
							}
							@media print
							{
							    .aClass 
							    {
							    	 display: none; 
							    }
							    @page 
							    {
							          margin-top: 0;
							          margin-bottom: 0;
							    }
							    body 
							    {
							          padding-top: 72px;
							          padding-bottom: 72px ;
							    }
							}
							@page 
							{
								 size:  279mm x 432mm;
								 margin: 0;
							}
			       		</style>
			       		<div align="center">
			      			<div style="width:100%" id="ds" ></div>
			      		</div>
			       </div>	         	  
	          </div>
	          
		      <div style="width: 100%;display: flex; justify-content: center;">
		           <button onclick="printStatus()"><i class="fa fa-print"></i>&#160;Print</button>
		      </div>
	       <div class="container" style="background-color:#f1f1f1"></div>
	    </div>
</div>

<div id="certificate" class="modal">
	  <div id="cer" class="alert info"><span class="closebtn">&times;</span></div>
	      <div class="modal-content animate">
	      
	          <div class="container" style="background-color:blue">
	              <h1 style="text-align: center;" class="p1">Certification</h1>
	          </div>
	          
	          <div class="container" style="pointer-events: all">
	         	  <span onclick="newCertificateTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
	         	  <hr size="3" width="90%" color="blue">
		          		<%@ include file="certificate.jsp"%>
	      </div>
	      <div style="width: 100%;display: flex; justify-content: center;">
		        <button onclick="printCertificate()"><i class="fa fa-print"></i>&#160;Print</button>
		  </div>
	       <div class="container" style="background-color:#f1f1f1"></div>
	     </div>
</div>