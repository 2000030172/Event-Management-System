<!-- Display -->
<div style="width:100%" id="dsp" ></div>
<!-- Ebent Registration -->
		<div id="id01" class="modal">
	        <div id="lbl123" class="alert info"><span class="closebtn">&times;</span></div>
	        <div class="modal-content animate">
	            <div class="container" style="background-color:blue">
	                <h1 style="text-align: center;" class="p1">Event Registeration</h1>
	            </div>
	            <div class="container" style="pointer-events: all">
	            <span onclick="newTabClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
	                <h1 style="text-align: center;">Event Details</h1>
	                <hr size="3" width="90%" color="blue"> 
	                <input type="hidden" id="event"/>
	                <div style="margin-left: 50px;">
	                	<div class="row">
	                		<div class="col">
	                			<p> EventId : </p> 
	                		</div>
	                		<div class="col">
	                			<p id="e1"></p>
	                		</div>
	                	</div>
	                	<div class="row">
	                    	<div class="col">
	                    		<p>Name : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e2"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Location : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e3"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Starting Date : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e4"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Starting Time : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e5"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Ending Date : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e6"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Ending Time : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e7"></p>
	                    	</div>
	                    </div>
	                    <div class="row">
	                    	<div class="col">
	                    		<p>Event Information : </p>
	                    	</div>
	                    	<div class="col">
	                    		<p id="e8"></p>
	                    	</div>
	                    </div>
	                </div>
	                <h1 style="text-align: center;">User Details</h1>
	                <hr size="3" width="90%" color="blue"> 
	                <div style="width :100%">
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Username</legend>
	                        <input type="text" id="w1" placeholder="Username" disabled/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>Name</legend>
	                        <input type="text" id="w2" placeholder="Name"/>
	                    </fieldset>
	                    </div>
	                    <br/>
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Email</legend>
	                        <input type="email" id="w3" placeholder="Email" disabled/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>*Gender</legend>
	                        <input type="text" id="w4" placeholder="Gender"/>
	                    </fieldset>
	                    </div>
	                    <br/>
	                    <div class="inline">
	                    <fieldset>
	                        <legend>*Year</legend>
	                        <input type="text" id="w5" placeholder="Year"/>
	                    </fieldset>
	                    <fieldset>
	                        <legend>*Branch</legend>
	                        <input type="text" id="w6" placeholder="Branch"/>
	                    </fieldset>
	                    </div>
	                </div>
	            </div>
	            <div style="width: 100%;display: flex; justify-content: center;">
	            	<button onclick="saveEventRegister()">Submit</button>
	            </div>
	            <div class="container" style="background-color:#f1f1f1">
	            <br/>
            </div>
        </div>
        <div id="id02" class="modal">
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
							<h1>Sorry you cannot proceed. Registrations are closed. Contact admin</h1>
						</div>
						<div class="container" style="background-color:#f1f1f1">
				           <br/>
			        	</div>
	        		</div>
	    	</div>
		</div>
    </div>