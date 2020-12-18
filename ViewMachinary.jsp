
<%@page import="com.pojo.Addmachinery"%>


<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="farmermenulist.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		BLManager bl=new BLManager();
	List<Addmachinery> l=bl.searchMachinary();
		session.setAttribute("list", l);
	%>

<div class="content">
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					 <div class="content">
						<h4 class="title"><b><i><font color="Purple">Product list</font></i></b></h4>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						
						
						<table border="5" id="example1" class="table table-bordered table-striped" >
											<tr>
												<th>Id</th>
												<th>Name</th>
												<th>Descriptin</th>
												<th>Image</th>															
												<th>Edit</th>
												<th>Delete</th>
											</tr>
											<c:forEach items="${sessionScope.list }" var="a">
												<tr>
													<td><b>${a.mid}</b></td>
													<td><b>${a.machinename}</b></td>
													
								
													<td><b>${a.description}</b></td>
													
													
													<td><center>
															<img alt="abc" src="machineimages/${a.machineimage}"
																style="width: 150px; height: 100px;">
														</center></td>
													

													
													<td>Edit</td>
													<td>Delete</td>
													
													</tr>
											</c:forEach>
										</table>
										</div>
										</div>
										</div>
										</div>
										</section>
										</div>
										
				