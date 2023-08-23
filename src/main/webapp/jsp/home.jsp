<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<style>
.header
{
  color: #0b9ca1;
  padding: 20px;
  font-size: 20px;
  text-align: center;
  background: white;
}
.feedback{
  color: #0b9ca1;
  margin: 15px;
  padding: 10px;
  border:  rgb(140, 140, 219);
  border-radius: 10px;
  text-align: center;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #0b9ca1;
}
li {
  float: center;
}
 li a {
  display: block;
  color: rgb(232, 240, 237);
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
 li a:hover {
  background-color: #0d47a1;
}
</style>
</head>
<ul>
  <li><a class="active"  href="studentRegistration"> Student Registration</a></li>
  <li><a class="active" href="listall">Student List</a></li>
</ul>
<body>
<div class="header">
  <h2>Registration Successful</h2>
</div>
<div class="feedback">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIcpWceueKREniOOUqIlHjug9p-ItT3UdBHCWOs6-fxLGcS2cvFXCVat4XUuR94vU2lfA&usqp=CAU" />
    <h3>Thank you for Registering with LDTECH!!!</h3>
  </div>
  </body>
</html>