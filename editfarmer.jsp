UpdateFarmerProfile.java<%@page import="com.pojo.Registration" %>
<%@page import="com.model.BLManager" %>
<%@page import="com.pojo.Registration" %>
<%@page import="java.util.List"%> %> 
<%@include file="farmermenulist.jsp" %>
<%
BLManager blm=new BLManager();
Registration r=new Registration();
String username=(String)session.getAttribute("username");
System.out.print("Before ID:"+username);
r=blm.searchfuname(username);
//System.out.print("After ID:"+r.getId());
request.setAttribute("r", r);

session.getAttribute("email");
session.getAttribute("passsword");
session.getAttribute("confirmpassword");
session.getAttribute("gender");
session.getAttribute("registeras");
session.getAttribute("address");
session.getAttribute("phonenumber");
session.getAttribute("mobilenumber");
%>

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Edit profile</h4>
						<div class="content">
							 <form action="editfarmerprofile.jsp" > 
								<div class="row">
								<input type="hidden" name="id" value="${r.rid }">
								
								<div class="col-md-8">
										<div class="form-group">
											<label>UserName:</label> <input type="text" 
												class="form-control" name="email" 
												placeholder="fname" value="${r.username }" readonly="readonly" >
										</div>
									</div>
									
								<div class="col-md-8">
										<div class="form-group">
											<label>Email:</label> <input type="text" 
												class="form-control" name="email" 
												placeholder="fname" value="${r.email }" readonly="readonly" >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>password:</label> <input type="text" 
												class="form-control" name="password" 
												placeholder="lname" value="${r.passsword}" readonly="readonly" >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
<label>Confirm password:</label> <input type="text" class="form-control" name="cpassword" 
placeholder="lname" value="${r.confirmpassword}" readonly="readonly" >
										</div>
									</div>
											
											<div class="col-md-8">
										<div class="form-group">
											<label>Gender:</label> <input type="text" 
												class="form-control" name="gender" 
												placeholder="emailiid" value="${r.gender}" readonly="readonly" >
										</div>
									</div>
									
									
									
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Register As</label> <input type="text" 
												class="form-control" name="registeras" 
												placeholder="username" value="${r.registeras}" readonly="readonly" >
										</div>
									</div>
									
									
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Address:</label> <input type="text" 
												class="form-control" name="address" 
												placeholder="password" value="${r.address}" readonly="readonly" >
										</div>
									</div>
									
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Phone Number</label> <input type="text" 
												class="form-control" name="phonenumber" 
												placeholder="address" value="${r.phonenumber}" readonly="readonly" >
										</div>
									</div>
									
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Mobile no:</label> <input type="text" 
												class="form-control" name="mobileno" 
												placeholder="mobileno" value="${r.mobilenumber}"  readonly="readonly">
										</div>
									</div>
									
							</div>
							
					<button type="submit" class="btn btn-info btn-fill pull-right/editfarmerprofile.jsp">Update profile</button>
								<div class="clearfix"></div>
								
								
							
						</form>
					  </div>
					 </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
							