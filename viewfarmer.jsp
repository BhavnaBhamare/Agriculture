
<%@page import="com.pojo.Registration"%>


<%@page import="java.util.List"%>
<%@page import="com.model.BLManager" %>
<%@include file="farmermenulist.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		BLManager bl=new BLManager();
	List<Registration> l=bl.searchfarmer();
		session.setAttribute("list", l);
	%>

<div class="content">
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					 <div class="content">
						<h4 class="title"><b><i><font color="Purple">List Of Farmer</font></i></b></h4>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						
						
						<table border="3" id="example1" class="table table-bordered table-striped" >
											<tr>
												<th>Id</th>
												<th>Name</th>
												<th>email</th>
												<th>Password</th>
												<th>Confirm Password</th>	
												<th>Gender</th>
												<th>RegisterAs</th>
												<th>Address</th>
												<th>Phone Number</th>
												<th>Mobile Number</th>													
												<th>Edit</th>
												<th>Delete</th>
											</tr>
											<c:forEach items="${sessionScope.list }" var="a">
												<tr>
													<td><b>${a.rid}</b></td>
													<td><b>${a.username}</b></td>
													
								
													<td><b>${a.email}</b></td>
													
													<td><b>${a.passsword}</b></td>
															<td><b>${a.confirmpassword}</b></td>
															<td><b>${a.gender}</b></td>
															<td><b>${a.registeras}</b></td>
															<td><b>${a.address}</b></td>
															<td><b>${a.phonenumber}</b></td>
															<td><b>${a.mobilenumber}</b></td>
															<td><b>Edit</b></td>
															<td><b>Delete</b></td>
													
													

													
<%-- 													<td><a href="Updateproduct?id=${a.id }">Edit</a></td> --%>
													</tr>
											</c:forEach>
										</table>
										</div>
										</div>
										</div>
										</div>
										</section>
										</div>
										
				