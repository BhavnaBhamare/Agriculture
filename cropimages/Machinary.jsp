<%-- 
    Document   : Machinary
    Created on : Feb 9, 2016, 11:02:07 PM
    Author     : Sam
--%>

<%@ page language="java" import="java.util.*"
import="java.sql.DriverManager" import="com.dto.agrofest.custregistration"
import="java.sql.Connection"
import="java.sql.PreparedStatement"
import="java.sql.ResultSet"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.jdbc.Blob"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Machinary.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" type="text/css" href="css/default.css">
  </head>
  
  <body style="background:url(66.jpg)">
          <jsp:include page="Design/header.jsp" />
           <div class="container">
            <jsp:include page="Design/menu.jsp" />
   <%HttpSession ses=request.getSession();
  		ses.setAttribute("user",ses.getAttribute("user")); %>
  	<center><h1><font color="red">Machinary</font></h1>
            <form action="MachinServlet" method="post"   enctype="multipart/form-data" >
  
   <table><tbody>
    
   <tr>
   <td> Name</td><td><input type="text" name="fername" id="fername" /></td>
   </tr>
   <tr>
   <td> Prize</td><td><input type="text" name="ferprize" id="ferprize" /></td>
   </tr>
   <tr>
   <td>Image</td><td><input type="file" name="ferimage" id="ferimage" /></td>
   </tr>
   <tr>
   <td> Description</td><td><textarea rows="3" cols="15" id="ferdes" name="ferdes" ></textarea></td>
   </tr>
   <tr>
   <td>Stock</td><td><input type="text" name="ferstock" id="ferstock" /></td>
   </tr>
    <tr>
   <td></td><td><input type="submit" name="action" value="Add" ></td>
   </tr></tbody>
   </table></form>
   </center>
           </div>
        <jsp:include page="Design/footer.jsp" />
  </body>
</html>

