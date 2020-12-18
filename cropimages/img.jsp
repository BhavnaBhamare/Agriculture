<%-- 
    Document   : img
    Created on : Jan 22, 2016, 1:15:04 PM
    Author     : Sam
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.util.*,java.sql.*,java.io.InputStream,java.awt.image.BufferedImage,java.io.ByteArrayInputStream,javax.imageio.ImageIO,java.io.File" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
       <%
	byte []b=null;
	Blob bl=null;
        //int i=2;
        int id=Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.jdbc.Driver");
  	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agro_fest1","root","");
  	PreparedStatement pst=con.prepareStatement("select * from fertilizer where ferid=?");
        pst.setInt(1,id);
   	ResultSet rst=pst.executeQuery();
        
        while(rst.next())
        {
   	bl=rst.getBlob(4);
   	int l=(int)bl.length();
   	b=bl.getBytes(1,l);
   	 response.setContentType("image/gif");
       OutputStream o = response.getOutputStream();
       o.write(b);
       o.flush();
        
       o.close();
        }
       
   	%>
    </body>
</html>
