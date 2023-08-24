<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
body {
  font-family: serif;
  margin: 0;
  padding: 0;
}

.container {
  background: whitesmoke;
  max-width: 400px;
  margin: 50px auto;
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 1.1);
}


  h2 {
    text-align: center;
    color: #ee6868;
}


.form-group {
  margin-bottom: 15px;
}

/* Your existing CSS styles here */

/* Display gender options in a single line */
.form-group input[type="radio"][name="gender"],
.form-group label {
  display: inline-block;
  margin-right: 10px;
}

.gen{
  margin-top: 10px;
}

label {
  display: block;
  font-weight: bold;
  color:#97a728;
}

input[type="text"],
input[type="date"],
input[type="email"],
input[type="tel"],
select {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  padding: 8px 15px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  margin-right: 10px;
}

button[type="submit"] {
  background-color: #28a745;
}

button[type="button"] {
  background-color: #dc3545;
}
</style>
</head>
<body>
  <div class="container">
    <h2>Student Registration Form</h2>
    <form action="save" method="post">
      <div class="form-group">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" placeholder=" Enter First Name here..." required>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" placeholder="Enter Last Name here..." required>
      </div>
      <div class="form-group">
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>
        
        <label class="gen">Gender:</label> 
          <input type="radio" id="male" name="gender" value="male" required>
          <label for="male">Male</label> 
          <input type="radio" id="female" name="gender" value="female" required>
          <label for="female">Female</label> 
          <input type="radio" id="other" name="gender" value="other" required>
          <label for="other">Other</label>
       
      </div>

      <div class="form-group">
        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email" placeholder="Enter Vaild Email ID here..." required>
      </div>
      <div class="form-group">
        <label for="mobile">Mobile Number:</label>
        <input type="tel" id="mobile" name="mobile" placeholder="Enter Vaild Mobile No here..." required>
      </div>
      <div class="form-group">
        <label for="qualification">Qualification:</label>
       <select id="qualification" name="qualification" required>
          <option value="">Select Qualification</option>
          <option value="classx">Class X</option>
          <option value="classxii">Class XII</option>
          <option value="graduation">Graduation</option>
        </select>
      </div>
      <div class="form-group">
        <button type="submit" value="save">Register</button>
        <button type="button" onclick="resetForm()"><a href="refresh">Refresh</a></button>
      </div>
    </form>
  </div>

   ${msg}
</body>
</html>