<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of student</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 20px;
  }

  h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #4285F4;
  }

  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
  }

  th {
    background-color: #f2f2f2;
    color: #FF5733;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:nth-child(odd) {
    background-color: #e0e0e0;
  }

  td {
    color: #1E8449;
  }
  .home-link {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: #4285F4;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
  }

</style>
</head>
<body>
<h2>Student list</h2>
 
<a href="back" class="home-link">BACK</a>

     <table>
           <tr>
              <th>FirstName</th>
              <th>LastName</th>
              <th>DOB</th> 
              <th>Gender</th> 
              <th>Email</th>
              <th>Mobile</th> 
              <th>Qualification</th> 
               <th>Delete</th>
               <th>Update</th>
             
           </tr>
           <c:forEach var="student" items="${students}">
              <tr>
                  <td>${student.firstName }</td>
                  <td>${student.lastName }</td>
                  <td>${student.dob }</td>
                  <td>${student.gender }</td>
                  <td>${student.email }</td>
                  <td>${student.mobile }</td>
                  <td>${student.qualification }</td>
                   <td><button><a href="delete?id=${student.id}">Delete</a></button></td>
                   <td><button><a href="update?id=${student.id}">Update</a></button></td>
              </tr>
           </c:forEach>
     </table>

</body>
</html>