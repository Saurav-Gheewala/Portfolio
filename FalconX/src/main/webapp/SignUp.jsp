<!DOCTYPE html>
<html>
<head>
<title>Register Page</title>
</head>
<link rel="stylesheet" href="Style.css">
<body bgcolor=#9fd3c7>
<div class="navbar">
<right>  <a href="aboutus.html" class="right">ABOUT US</a></right>
  <a href="help.html"class="right">Help</a>
</div>
  <br><br>
	<form method="post" action="Register">
		<div class="outer-box">
			<div class="inner-box">
				<h2>Register</h2>
				<h4>Please Enter Your Primary Details</h4>
				<input type="text" name="F_name" class="id-field"
					placeholder="Enter your First Name">
					
				<input type="text" name="M_name" class="id-field"
					placeholder="Enter your Middle Name">

				<input type="text" name="L_name" class="id-field"
					placeholder="Enter your Last Name">
					
					<br>
					
				<input type="number" name="P_Number" class="id-field"
					placeholder="Enter your Phone Number">

				<input type="date" name="DOB" class="id-field"
					placeholder="Enter your Date Of Birth">
			
				<select name="B_Group" id="B_Group" >
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
				<input type="email" name="email" class="id-field"
					placeholder="Enter Your E-Mail ID">	
					
				<input type="text" name="id" class="id-field"
					placeholder="Create ID">

					<br>
						
				<input type="password" name="pass" class="password-field"
					placeholder="Create password">
					
				<input type="password" name="pass" class="password-field"
					placeholder="Confirm password">
				<!-- Registration type field -->
				
				<br>
				<!-- Submit button -->
				<input type="submit" value="Register">
				<%
				boolean error = Boolean.parseBoolean(request.getParameter("error"));
				if (error == true) {
					out.println("error");
				}
				%>
			</div>
		</div>
	</form>

</body>
</html>
