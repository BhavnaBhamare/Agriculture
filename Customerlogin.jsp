<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body, html {
    height: 100%;
    font-family: Arial, Helvetica, sans-serif;
    
}


* {
    box-sizing: border-box;
}

h1,b{
color:white;
}

.bg-img {
    
    background-image: url("foodee-master/images/slide_3.jpg");

    min-height: 700px;
    

    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}

.container {
    position: absolute;
    right: 0;
    margin: 20px;
    max-width: 500px;
    padding: 16px;
    background-color: black;
    
}


input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}


.btn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.btn:hover {
    opacity: 1;
}
</style>
</head>
<body>
<div class="bg-img">
  <form action="CustomerLogin"  class="container" method="post">
    <h1>Login For Customer</h1>

    <label for="Username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="Username" required>

    <label for="Password"><b>Password</b></label>
    <input type="Password" placeholder="Enter Password" name="Password" required>

    <button type="submit" class="btn">Login</button>
      <b><font color="white">If you are new User then register first</font></b><font color="red"><a href="register.jsp">Register now</font></a>
  </form>
</div>
</body>
</html>