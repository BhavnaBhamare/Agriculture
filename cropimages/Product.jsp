<%-- 
    Document   : Product
    Created on : Feb 5, 2016, 11:44:59 AM
    Author     : Sam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/default.css">
         <script>
         function validate(stock) {
             
         
    var quant = document.forms["myForm"]["quant"].value;
    
       if (quant == null || quant == "") {
        alert("Please Enter Quantity");
        return false;
    }
     else if (quant>stock) {
        alert(" Enter Quantity not Available");
        return false;
    }
}
    </script>
  </head>
  
  <body style="background:url(66.jpg)">
          <jsp:include page="Design/header.jsp" />
           
            <jsp:include page="Design/menu.jsp" />
            
        <% HttpSession ses=request.getSession();
                String user=(String)ses.getAttribute("user");
                String name=request.getParameter("name");
                String prize=request.getParameter("prize");
                String Stock=request.getParameter("Stock");
                String des= request.getParameter("des");
                String company=request.getParameter("com");
                
                ses.setAttribute("user", user);
                ses.setAttribute("prize", prize);
                ses.setAttribute("prod", name);
                ses.setAttribute("des", des);
                ses.setAttribute("proid",request.getParameter("proid"));
                ses.setAttribute("company", company);
                
        %>
        <form action="NewServlet" method="" name="myForm" onsubmit="return validate(<%=Stock%>)"> 
        <center><h1><b><%=name%></b></h1><br>
            <div class="col-sp-5"> </div>
            <div class="col-sp-5"> <img src="img.jsp?id=<%=request.getParameter("img")%>" width="60%" /><br>
            </div>
            <div class="col-sp-5"><br>
                <br>
                <br><br>
                
                <b>Prize</b> :<%=prize%><br>
                <b> Stock</b>:<%=Stock%><br>
        <%=des%><br>
        <%if(user!=null)
        {%>
        <hr width="100%">
        <b><font color="Green"> <h1>Add to Cart</h1></font></b>
        Quantity:<input type="number" name="quant"  /> 
                 <br>
                 <br>
                 <input type="submit" name="add" value="Add to Cart"  />
        <%}
        else
{%>
<a href="LogIn.jsp"><h1>Buy</h1></a
<%}%>
            </div>
        
         </center>      
        </form>
          <br>
            <br>
              <br>  <br>
                <br>  <br>
                <br>
                
              
        <jsp:include page="Design/footer.jsp" />
        </body>
</html>
