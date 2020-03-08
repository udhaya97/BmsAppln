<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMSe</title>
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
<form:form action ="/edplid/${plc.pId}" method ="get" modelAttribute="editplace">
<table>
<tr><td>Place Id</td><td>Place Name</td><td>Images</td><td>Update</td></tr>

<tr><td>${plc.pId}</td><td><form:input path="pName" value="${plc.pName}"/></td>
<td><form:input path="imgs" type="file" value="${plc.imgs}"/></td>

<td><input type="submit" value="update"></td></tr>
</table>
</form:form>
<br/><br/><a href="/ediplace">Go to back to Place edit list</a>
</div>
</body>
</html>