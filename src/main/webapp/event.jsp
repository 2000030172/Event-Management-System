<button onclick="newCreateOpen()"><i class="fa fa-plus" aria-hidden="true"></i>Create</button>
				<!-- Create Event  -->
				<div id="crt" class="modal">
			        <div id="cf" class="alert info"><span class="closebtn">&times;</span></div>
			        <div class="modal-content animate">
			            <div class="container" style="background-color:blue">
			                <h1 style="text-align: center;" class="p1">Event Creation</h1>
			            </div>
			            <div class="container" style="pointer-events: all">
			            	<span onclick="newCreateClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			                <h1 style="text-align: center;">Event Details</h1>
			                <hr size="3" width="90%" color="blue"> 
						    <div class="leftcolumn">
						    	<fieldset>
							        <legend>Event Id</legend>
							            <input type="text" id="r1" placeholder="Event Id"/>
							      </fieldset>
							    <br/>
							      <fieldset>
							        <legend>Event Name</legend>
							            <input type="text" id="r2" placeholder="Event Name"/>
							      </fieldset>
							    <br/>
							    <fieldset style="border-radius: 30px;">
							      <legend>Event Stating Date : </legend>
							            <input type="date" id="r3"/>
							    </fieldset>
							    <fieldset>
							      <legend>Event Start Time</legend>
							          <input type="time" id="r4"/>
							    </fieldset>
							    <br/>
							    <fieldset style="border-radius: 30px;">
							      <legend>Event Ending Date</legend>
							            <input type="date" id="r5"/>
							    </fieldset>
							    <br/>
							    <fieldset>
							      <legend>Event End Time</legend>
							          <input type="time" id="r6"/>
							    </fieldset>
							    <br/>
							    <fieldset>
							      <legend>Event Location</legend>
							          <input type="text" id="r7"/>
							    </fieldset>
							    <br/>
							    <fieldset>
							      <legend>Event Information</legend>
								        <textarea id="r8" rows="4" cols="50" style="border-radius: 12px" required></textarea>
							    </fieldset>
							    <br/>
							</div>
							
							<div class="row">
							    <div class="rightcolumn">
							        <img src="img/event.svg" class="img-fluid" alt="Signup image" width="80%" height="80%" onContextMenu="return false;">
							    </div>
							</div>
							<div style="width: 100%;display: flex; justify-content: center;">
								<button onclick="saveEvent()">Create</button>
							</div>
							<div class="container" style="background-color:#f1f1f1">
					            <br/>
				        	</div>
					</div>
				</div>
				</div>
			
				<!-- Display Event -->
				<div style="width:100%" id="display" ></div>
				
				<!-- Updation of Event -->
				<div id="upd" class="modal">
			        <div id="lbl" class="alert info"><span class="closebtn">&times;</span></div>
			        <div class="modal-content animate">
			            <div class="container" style="background-color:blue">
			                <h1 style="text-align: center;" class="p1">Event Updation</h1>
			            </div>
			            <div class="container" style="pointer-events: all">
			            	<span onclick="newUpdateClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			                <h1 style="text-align: center;">Event Details</h1>
			                <hr size="3" width="90%" color="blue"> 
						    <div class="leftcolumn">
						      <fieldset>
						        <legend>Event Id</legend>
						            <input type="text" id="t1" placeholder="Event Id" disabled/>
						      </fieldset>
						      <br/>
						      <fieldset>
						        <legend>Event Name</legend>
						            <input type="text" id="t2" placeholder="Event Name"/>
						      </fieldset>
						      <br/>
						      <fieldset style="border-radius: 30px;">
		    				    <legend>Event Stating Date : </legend>
						            <input type="date" id="t3"/>
						      </fieldset>
						      <fieldset>
		   				       <legend>Event Start Time</legend>
						          <input type="time" id="t4"/>
						       </fieldset>
						       <br/>
						       <fieldset style="border-radius: 30px;">
						       <legend>Event Ending Date</legend>
						           <input type="date" id="t5"/>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Event End Time</legend>
						           <input type="time" id="t6"/>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Event Location</legend>
						          <input type="text" id="t7"/>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Event Information</legend>
							        <textarea id="t8" rows="4" cols="50" style="border-radius: 12px" required></textarea>
						       </fieldset>
						       <br/>
						 </div>
					</div>
						  
					<div class="row">
					    <div class="rightcolumn">
					        <img src="img/event.svg" class="img-fluid" alt="Signup image" width="80%" height="80%" onContextMenu="return false;">
					    </div>
					</div>
						  
					<div style="width: 100%;display: flex; justify-content: center;">
					  	  <button onclick="updateEvent()">Update</button>
					</div>
						  
					<div class="container" style="background-color:#f1f1f1">
					     <br/>
				    </div>
		        </div>
		    </div>
		    <!-- Delete -->
		    <div id="del" class="modal">
			     <div id="rm" class="alert info"><span class="closebtn">&times;</span></div>
			     <div class="modal-content animate">
			            <div class="container" style="background-color:blue">
			                <h1 style="text-align: center;" class="p1">Event Deletion</h1>
			            </div>
			            <div class="container" style="pointer-events: all">
			            	<span onclick="newDeleteClose()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			                <h1 style="text-align: center;">Are you Sure to delete Event</h1>
			                <hr size="3" width="90%" color="blue"> 
			                <h1 style="text-align: center;">
			                	<label id="d1"></label>
			                </h1>
			                <div style="width: 100%;display: flex; justify-content: center;">
								<button onclick="removeEvent()">Delete</button>
							</div>
							<div class="container" style="background-color:#f1f1f1">
					           <br/>
				        	</div>
		        		</div>
		    	</div>
			</div>