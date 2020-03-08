<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
}
th {
  text-align: left;
}
</style>
</head>
<body>
<div align="center">

<h3><b>Edit Place</b></h3>
<form:form action ="" method ="get" modelAttribute="editplace">
<table>
<tr><td>Place Id</td><td>Place Name</td><td>images</td><td>Actions</td></tr>
<c:forEach items="${pl}" var="plz">
<tr><td>${plz.pId}</td><td>${plz.pName}</td><td>${plz.imgs}</td>
<td>
<a href="/editplcid/${plz.pId}">Edit</a>
/<a href="/deleteplace/${plz.pId}">Delete</a></td></tr>


</c:forEach>
</table></form:form><br/><a href="/admin">Go to back to Main Menu</a></div>
</body>
</html>