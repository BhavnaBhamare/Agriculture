<%@page import="com.pojo.Addfertilizer" %>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="adminmenu.jsp" %>

<%

session.getAttribute("fid");
String n=(String) session.getAttribute("fertilizername");

session.getAttribute("fertilizerdetails");
session.getAttribute("fertilizerquantity");
session.getAttribute("fertilizerimage");
session.getAttribute("list");
%>
<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Add Sub Menu</h4>
						<div class="content">
							 <form action="Updatepfertilizerservlet" method="post" enctype="multipart/form-data"> 
								<div class="row">
								<input type="hidden" name="fid" value="${fid}">

									<div class="col-md-8">
										<div class="form-group">
											<label>Update Fertilizer:</label> <input type="text" 
												class="form-control" name="name" 
												placeholder="name" value="${fertilizername}"  >
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Price:</label> <input type="text" 
												class="form-control" name="price" 
												placeholder="price" value="${fertilizerdetails}"  >
										</div>
									</div>
									
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Price:</label> <input type="text" 
												class="form-control" name="price" 
												placeholder="price" value="${fertilizerquantity}"  >
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label>Image:</label><br> <%-- <input type="file" 
												class="form-control" name="image" 
												placeholder="image" value="menuimages/${list.image}"   > --%>
												<img alt="abc" src="fertilizerimages/${fertilizerimage}"
																style="width: 150px; height: 100px;" readonly="readonly" >
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
 								
								<button type="submit" class="btn btn-info btn-fill pull-right" >Update menu</button>
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




 								