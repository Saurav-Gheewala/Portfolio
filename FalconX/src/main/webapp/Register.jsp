<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="Resourses/CSS/Register.css"> 

  
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
  <form action="register" method="post">

<div class="about-section">
  <br><h1>Register</h1>
  
</div>

<div class="navbar">
  <a href="aboutus.html" class="right">ABOUT US</a>
  <a href="help.html"class="right">Help</a>
</div><br>
    <label for="first_name"><b>First Name :</b></label>
    <input type="text" placeholder="Enter Your First Name" name="first_name" id="first_name" required>

    <label for="mid_name"><b>  Middle Name :</b></label>
    <input type="text" placeholder="Enter Your Name" name="mid_name" id="mid_name" required>

    <label for="last_name"><b>Last Name :</b></label>
    <input type="text" placeholder="Enter Your Last Name" name="last_name" id="last_name" required>
    <br>
    
    <label for="email"><b>Email Address :</b></label>
    <input type="email" placeholder="Enter Your Email Address" name="email" id="email" required>

    <label for="phone"><b>Phone Number :</b></label>
    <input type="text" id="phone" placeholder="Enter Your Phone Number" name="phone"  required>
    
    <label for="blood_group"><b>Your Blood Group :</b></label>
    <select id="blood_group" class="container_drop" name="blood_group">
      <option value="none">Select Your Blood Group</option>
      <option value="A+">A+</option>
      <option value="B+">B+</option>
      <option value="AB+">AB+</option>
      <option value="O+">O+</option>
      <option value="A-">A-</option>
      <option value="B-">B-</option>
      <option value="AB-">AB-</option>
      <option value="O-">O-</option>
    </select> 
    <br>

    <label for="id"><b>Enter Your Id</b></label>
    <input type="text" placeholder="Enter Your Id" name="id" id="Id" required>

    <label for="psw"><b>Password :</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="pswcon"><b>Confirm Password :</b></label>
    <input type="password" placeholder="Enter Your Password Again" name="pswcon" id="pswcon" required>
    <p><input type="checkbox" name="remember" checked="checked" required>I agree to these <a href="Terms And Condition.html">Terms & Conditions</a>.</p>
	<%
			boolean error_pass = Boolean.parseBoolean(request.getParameter("error_pass"));
			if (error_pass == true) 
			{
				out.println("<center><h5>Your Confirm Password Is Not Matching With Your Password</h5></center>");
			}
	%>
    <br><br>
 	 <div class="cent">
    <input type="submit" class="login button1" value="Register">
    <br>
    <br>
  <div class="login_at_register">
    <p>Already have an account ?<br><br> <a href="Login.jsp">Login here</a> .</p>
  </div>
 	</div>
 			<%
				boolean error_con = Boolean.parseBoolean(request.getParameter("error_con"));
				if (error_con == true) {
					
					out.println("<br><h5>Invalid Id/Password</h5>");
				}
			%>	 
  </form>
</body>
</html>
