<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}


body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}


.header {
  padding: 80px;
  text-align: center;
  background: #474e5d;
  color: rgb(255, 255, 255);
}


.header h1 {
  font-size: 40px;
}


.navbar {
  overflow: hidden;
  background-color: #333;
}


.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}


.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.row {  
  display: -ms-flexbox; 
  display: flex;
  -ms-flex-wrap: wrap; 
  flex-wrap: wrap;
}


.side {
  -ms-flex: 30%; 
  flex: 30%;
  background-color: #b8bdc7;
  padding: 20px;
}


.main {   
  -ms-flex: 70%; 
  flex: 70%;
  background-color: #b8bdc7;
  padding: 20px;
}

.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}
.footer {
  padding: 20px;
  text-align: center;
  background: #474e5d;
  color: white;
}


@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}


@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body>
  <div> <a href="https://www.cvmu.edu.in"><img align="left" src="Cvm.png"  width="100" height="100"></a> </div>
  <div> <a href="http://www.adit.ac.in"><img align="right" src="Adit.png"  width="120" height="120"> </a></div>
<div class="header">

  <h1>C.V.M. University</h1>
  <h1><p>A.D. Patel Institiude Of Technology (A.D.I.T.)</p></h1>
</div>

<div class="navbar">
  <a href="BEE Lab Website.html">HOME</a>
  <a href="login.html">LOGOUT</a>
  <a href="aboutus.html" class="right">ABOUT US</a>
  <a href="help.html"class="right">Help</a>
</div>

<div class="row">
  <div class="side">
  

<div class="footer">
  <center><h2>Thank you</h2></center>
</div>

</body>
</html>
