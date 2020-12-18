<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration / Login form Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Registration / Login form Responsive Widget, Login forms,Flat Pricing tables,Flat Drop downs  Sign up Web forms, Login sign up Responsive web Forms," />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom CSS -->
<link href="css/stylereg.css" rel='stylesheet' type='text/css' />
<!-- font CSS --><!--
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">-->
<link href="//fonts.googleapis.com/css?family=Signika:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">

<!--font CSS-->
<script src="js1/jquery2.0.3.min.js"></script>
</head>
<body class="dashboard-page">
<%@page import="com.pojo.Addcrop" %>


<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@include file="farmermenulist.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		BLManager bl=new BLManager();
	List<Addcrop> l=bl.searchcrop();
	
		session.setAttribute("list", l);
		for(int i=0;i<l.size();i++){
			int cid=l.get(i).getCid();
			
		String cropname=l.get(i).getCropname();              
		String cropdetail=l.get(i).getCropdetail();
		String cropimage=l.get(i).getCropimage();
		String cropseason=l.get(i).getCropseason();
		
		session.setAttribute("cid", cid);
		session.setAttribute("cropname", cropname);
		session.setAttribute("cropdetail", cropdetail);
		session.setAttribute("cropimage", cropimage);
		session.setAttribute("cropseason", cropseason);
	//	 session.getAttribute("fertilizername");
		}
		
	%>

<div class="content">
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					 <div class="content">
						<h4 class="title"><b><i><font color="Purple">Crop list</font></i></b></h4>
					</div>
					<!-- /.box-header -->
					<div class="box-body">

						
						
						<table border="5" id="example1" class="table table-bordered table-striped" >
											<tr>
												<th>Id</th>
												<th>Name</th>
												<th>Detail</th>
												<th>Image</th>
												<th>Season</th>															
												<th>Edit</th>
												<th>Delete</th>
											</tr>
											<c:forEach items="${sessionScope.list}" var="a">
												<tr>
													<td><b>${a.cid}</b></td>
													<td><b>${a.cropname}</b></td>
													
								
													<td><b>${a.cropdetail}</b></td>
													
													
													<td><center>
															<img alt="abc" src="cropimages/${a.cropimage}"
																style="width: 150px; height: 100px;">
														</center></td>
													

													<td><b>${a.cropseason}</b></td>
													<td><a href="updatecrop.jsp?cid=${a.cid }">Edit</a></td>
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
										
				