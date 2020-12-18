
<%@include file="adminmenu.jsp" %>
<%
session.getAttribute("id");
session.getAttribute("username");
session.getAttribute("password");

%>

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Admin Profile</h4>
						<div class="content">
							 <form action="editadminprofile.jsp" > 
								<div class="row">
									<input type="hidden" name="id" value="${id }">
									

									<div class="col-md-8">
										<div class="form-group">
											<label>Username</label> <input type="text" 
												class="form-control" name="username" 
												placeholder="username" value="${username}" readonly="readonly" >
										</div>
									</div>
									
								
								<div class="col-md-8">
									<div class="form-group">
										<label>Password</label> <input type="password"
											class="form-control" name="password" 
											placeholder="password" value="${password}" readonly="readonly">
									</div>
								</div>
																
								<br>
								<br>
								<br>
								<br>
								
 								
 								</div>
								<button type="submit" class="btn btn-info btn-fill pull-right/editadminprofile.jsp" >Edit Profile</button>
								<div class="clearfix"></div>
								
								<!-- <h1 align="right"><a href="adminDashboard.jsp" style="font-size:50%; text-decoration: underline;">Back</a></h1>
								

 -->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



