        <div class="class-border-one" align="center">
        <div id="certificatepdf" class="unselectable ">
        <div class="class-border-two">
                <style type='text/css'>
                        .class-border-one
                        {
                            height:650px; padding:20px; border-radius: 20px; text-align:center; border: 10px double #000000; position: inherit; 
                        }
                        .class-border-two
                        {
                            width:1060px; height:590px; padding:20px; border-radius: 20px; text-align:center; border: 10px double #000000;
                        }    
                        .unselectable 
                        {
					        -webkit-user-select: none;
					        -webkit-touch-callout: none;
					        -moz-user-select: none;
					        -ms-user-select: none;
					        user-select: none;
					    }      
                        .container-one 
                        {
                            border: 15px solid rgb(16, 8, 230);
                            border-radius: 0.8rem;
                            border-radius: 20px;
                            background-clip: padding-box;
                            width: 1030px;
                            height: 563px;
                            display: table-cell;
                            vertical-align: middle;
                        }
                        .logo 
                        {
                            color: rgb(9, 9, 9);    
                        }
                        .marquee 
                        {
                            color: blueviolet;
                            font-size: 48px;
                            margin: 20px;
                        }
                        .assignment 
                        {
                            margin: 20px;
                        }
                        .person 
                        {
                            border-bottom: 2px solid black;
                            font-size: 32px;
                            font-style: italic;
                            margin: 20px auto;
                            width: 400px;
                        }
                        .reason 
                        {
                            margin: 20px;
                            font-size: 20px;;
                        }
                        button.hover
                        {
                            background-color: #00bfa6;
                            cursor: pointer;
                        }
                        @page 
                        {
                            size: auto;
                            margin: 0;
                        }
                        .star-font
                        {
                        	font-size: 50px;
                        }
                        @media print 
                        {
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
							 size: auto;
							 margin: 0;
						}
                </style>
                <div class="container-one">
                        <div class="logo">
                            <div style="font-family: Georgia, serif;font-size: 24px;">
                            <p id="evname"></p>
                            </div>
                        </div>

                        <div class="marquee">
                            Certificate of Participation
                        </div>
                        
                        <div class="star-font">
                        	&#x269D;
                        </div>
                        <div class="assignment">
                            This certificate is presented to
                        </div>

                        <div class="person">
                            <p id="cname"></p>
                        </div>
                        <div class="reason">
                            For his/her active and Invaluable participation during the conduction of Event <br/>
                        </div>
                </div>
        </div>
        </div>
        <br/>
     </div>
     
     <!-- Certification verification With respective time -->
     <div id="cerval" class="modal">
		     <div id="rm" class="alert info"><span class="closebtn">&times;</span></div>
		     <div class="modal-content animate">
		            <div class="container" style="background-color:blue">
		                <h1 style="text-align: center;" class="p1">Event Deletion</h1>
		            </div>
		            <div class="container" style="pointer-events: all">
		            	<!-- <span onclick="newTabCheckClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span> -->
		                <h1 style="text-align: center;">Registration's Closed</h1>
		                <hr size="3" width="90%" color="blue"> 
		                <h1 style="text-align: center;">
		                	<label id="d1"></label>
		                </h1>
		                <div style="width: 100%;display: flex; justify-content: center;">
							<h1>Sorry you cannot Download Certificate as of now.</h1>
						</div>
						<div class="container" style="background-color:#f1f1f1">
				           <br/>
			        	</div>
	        		</div>
	    	</div>
		</div>     