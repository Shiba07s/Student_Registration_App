<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Update Lead</h2>
     <form action="updateStudent" method="post">
            <input type="hidden" name="id" value="${student.id }"/> 
            firstName<input type="text" name="firstName" value="${student.firstName}"/> 
            lastName<input type="text" name="lastName" value="${student.lastName}"/> 
            emailId<input type="text" name="email" value="${student.email}"/> 
            mobile<input type="number" name="mobile" value="${student.mobile}"/> 
            Dob<input type="date" name="dob" value="${student.dob}"/> 
            GENDER<input type="text" name="gender" value="${student.gender}"/> 
            Qualification<input type="text" name="qualification" value="${student.qualification}"/> 

            <input type="submit" value="Update"/>
     </form>
     ${msg} 
</body>
</html>