<!-- Delete -->
            <div id="drf" class="modal">
			     <div id="rip" class="alert info"><span class="closebtn">&times;</span></div>
			     <div class="modal-content animate">
			            <div class="container" style="background-color:blue">
			                <h1 style="text-align: center;" class="p1">User Profile Delete</h1>
			            </div>
			            <div class="container" style="pointer-events: all">
			            	<span onclick="newCloseDeleteProfile()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			                <h1 style="text-align: center;">Are you Sure to delete User</h1>
			                <hr size="3" width="90%" color="blue"> 
			                <h1 style="text-align: center;">
			                	<label id="dam1"></label>
			                </h1>
			                <div style="width: 100%;display: flex; justify-content: center;">
								<button onclick="removeProfile()">Delete</button>
							</div>
							<div class="container" style="background-color:#f1f1f1">
					           <br/>
				        	</div>
		        		</div>
		    	</div>
			</div>
            <!-- Update -->
            <div id="prf" class="modal">
	        	<div id="cf" class="alert info"><span class="closebtn">&times;</span></div>
		        <div class="modal-content animate">
			            <div class="container" style="background-color:blue">
			                <h1 style="text-align: center;" class="p1">User Profile Updation</h1>
			            </div>
			            <div class="container" style="pointer-events: all">
			            	<span onclick="newCloseEditProfile()" class="close" title="Close Modal" style="pointer-events: all;">&times;</span>
			                <h1 style="text-align: center;">User Details</h1>
			                <hr size="3" width="90%" color="blue">
			                <div class="leftcolumn">
						      <fieldset>
						        <legend>Username</legend>
						            <input type="text" id="u1" placeholder="Username" disabled/>
						      </fieldset>
						      <br/>
						      <fieldset>
						        <legend>Email</legend>
						            <input type="text" id="u2" placeholder="Email" disabled/>
						      </fieldset>
						      <br/>
						      <fieldset>
		    				    <legend>Name</legend>
						            <input type="text" id="u3" placeholder="Name"/>
						      </fieldset>
						      <fieldset>
		   				       <legend>Year</legend>
						          <!-- <input type="text" id="t4" placeholder="Year"/>-->
						          <select name="year" id="u4" required> 
				                      <option>Select One</option> 
				                      <option value="1st year">First year</option>
				                      <option value="2nd year">Second Year</option>
				                      <option value="3rd year">Third Year</option>
				                      <option value="4th year">Fourth Year</option>
				                      <option value="Admin">Admin</option>
				                  </select>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Gender</legend>
						           <!-- <input type="text" id="u5" placeholder="Gender"/> -->
						           
						           
						           <select name="gender" id="u5" required> 
					                    <option>Select one</option> 
					                    <option value="Male">Male</option>
					                    <option value="Female">Female</option>
					                </select>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>State</legend>
						           <!-- <input type="text" id="t6" placeholder="State"/>-->
						           <select name="state" id="u6" required> 
					                    <option>Select one</option> 
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
						       <fieldset>
						       <legend>Phone</legend>
						          <input type="text" id="u7" placeholder="Phone Number"/>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Branch</legend>
							       	<!-- <input type="text" id="t8" placeholder="Branch"/>-->
							       	<select name="branch" id="u8" required> 
					                      <option>Select One</option> 
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
					                      <option value="Faculty">Faculty</option>
					                </select>
						       </fieldset>
						       <br/>
						       <fieldset>
						       <legend>Role</legend>
						       		 <select id="u9" required> 
					                    <option>Select one</option> 
					                    <option value="USER">USER</option>
					                    <option value="ADMIN">ADMIN</option>
					                    <option value="ORGANISER">ORGANISER</option>
					                </select>
						       </fieldset>
						 </div>
					</div>
					  
					<div class="row">
					    <div class="rightcolumn">
					        <img src="img/profile.svg" class="img-fluid" alt="Signup image" width="100%" height="100%" onContextMenu="return false;">
					    </div>
					</div>
					<br/>
					<br/>
					<div style="width: 100%;display: flex; justify-content: center;">
					  	  <button onclick="updateProfile()">Update</button>
					</div>
					
			        <div class="container" style="background-color:#f1f1f1">
					 <br/>
				 </div>
		      </div>
		 	</div>
            <!-- Count of participants -->
            <div class="container"> 
	        <div class="row">
		        <div class="column">
	                <div class="card">
	                    <div class="card-inner" style="background-color:orange">
	                        <div class="card-front">
									<p>Admins : </p>
	                            	<i class="fa fa-user-secret"></i>
	                            	<p id="admins"></p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="column">
	                <div class="card">
	                    <div class="card-inner" style="background-color: tomato;">
	                        <div class="card-front">
	                            <p>Organisers : </p>
	                            <i class="fa-solid fa-user-group"></i>
	                            <p id="organisers"></p>
	                        </div>
	                    </div>
		            </div>
		        </div>
		        <div class="column">
	                <div class="card">
	                    <div class="card-inner" style="background-color: Violet">
	                        <div class="card-front">
	                            <p>Users : </p>
	                            <i class="fa fa-users"></i>
	                            <p id="users"></p>
	                        </div>
	                    </div>
		            </div>
		        </div>
	        </div>
			<!-- Display -->
			<div style="width:100%" id="participant" ></div>
        </div>