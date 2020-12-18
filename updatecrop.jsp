<%@page import="com.pojo.Addcrop" %>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminmenu.jsp" %>

<%

session.getAttribute("cid");
String n=(String) session.getAttribute("cropname");
session.getAttribute("cropdetail");

session.getAttribute("cropimage");
session.getAttribute("cropseason");
session.getAttribute("list");
%>
<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Update Crop</h4>
						<div class="content">
							 <form action="updatecropservlet" method="post" enctype="multipart/form-data"> 
								<div class="row">
								<input type="hidden" name="cid" value="${cid}">

									<div class="col-md-8">
										<div class="form-group">
											<label>Crop Name:</label> <input type="text" 
												class="form-control" name="cropname" 
												placeholder="name" value="${cropname}"  >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Crop Detail:</label> <input type="text" 
												class="form-control" name="cropdetail" 
												placeholder="cropdetail" value="${cropdetail}"  >
										</div>
									</div>
									
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Image:</label><br> <%-- <input type="file" 
												class="form-control" name="image" 
												placeholder="image" value="menuimages/${list.image}"   > --%>
												<img alt="abc" src="cropimages/${cropimage}"
																style="width: 150px; height: 100px;" readonly="readonly" >
										</div>
									</div>
									
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Crop Season:</label> <input type="text" 
												class="form-control" name="cropseason" 
												placeholder="cropseason" value="${cropseason}"  >
										</div>
									</div>
									
									
<!-- 									<div class="col-md-8"> -->
<!-- 										<div class="form-group"> -->
<!-- 											<label>Main menu:</label> <input type="text"  -->
<!-- 												class="form-control" name="mname"  -->
<%-- 												placeholder="mname" value="${list.mainproduct.mname}" readonly="readonly" > --%>
												
<!-- 										</div> -->
<!-- 									</div> -->
									
									
									
<!-- 									<div class="col-md-8"> -->
<!-- 										<div class="form-group"> -->
<!-- 											<label>Quantity:</label> <input type="text"  -->
<!-- 												class="form-control" name="Quantity"  -->
<%-- 												placeholder="Quantity" value="${list.quantity}"  > --%>
<!-- 										</div> -->
<!-- 									</div> -->
									
								
																
								<br>
								<br>
								<br>
								<br>
								
 								</div>
 								
								<button type="submit" class="btn btn-info btn-fill pull-right" >Update Crop</button>
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




 								