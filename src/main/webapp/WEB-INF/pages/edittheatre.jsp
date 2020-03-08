<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
<style type="text/css">



body{

background-image:url("ttwo.jpg");

}



table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


tr:nth-child(odd) {
  background-color: white;
}


</style>
</head>
<body>
<div align="center">
<h3><b>Edit Theatre</b></h3>
<form:form action ="" method ="get" modelAttribute="editTheatre">
<table>
<tr><td>Theatre Id</td><td>Theatre Name</td><td>timings</td><td>Actions</td></tr>
<c:forEach items="${evalues}" var= "eth" >

<tr><td>${eth.tId}</td><td>${eth.tName}</td><td>${eth.timings}</td><td><a href="/editth/${eth.tId}">Edit</a>/<a href="/deleteth/${eth.tId}">Delete</a></td></tr>





</c:forEach></table><br/>
<a href="/admin">Main Menu</a>
</form:form></div>
</body>
</html>