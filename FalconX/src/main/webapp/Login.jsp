<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
    <link rel="stylesheet" href="Resourses/CSS/Login.css">
</head>
<body>
<form action="Authentify" method="get">
    
    <div class = "logo-of-company">
    <div class="about-section">
  <br><h1>LOGIN</h1>
</div>
</div>
<div class="navbar">
  <a href="aboutus.html" class="right">ABOUT US</a>
  <a href="help.html"class="right">Help</a>
  </div><br>
  <div class="container1">
      <label for="id"><b>Email ID :</b></label>
      <input type="text" placeholder="Enter Your Email Id" name="id" required>
      <br>
      <label for="psw"><b>Password :</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <input type="checkbox" checked="checked" name="remember"> Remember me

    </div>
            <%
				boolean error = Boolean.parseBoolean(request.getParameter("error"));
				if (error == true) 
				{
					out.println("<center>Invalid Id / Password</center>");
				}
			%>
    <div class="container">
      <button type="reset" class="reset">Reset</button>
            <div class="cent">
            <input type="submit" class="login button1" value="Login">
            <br>
        </div>
        </div>
        <br>
            <a href="#">Forgot Password?</a>
            <div class="rig">
                Don't have an account yet ? <a href="Register.jsp">Register here</a>
            </div>
   
</form>
</body>
</html>
