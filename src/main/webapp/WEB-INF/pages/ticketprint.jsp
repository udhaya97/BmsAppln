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


div.relative {
  position: relative;
  left: 40px;
  top:100px;

}


</style>
</head>
<body>
<div align="center">
<h3>Ticket Generated Successfully</h3>
<div class="relative">
<form:form action="/hello" method="get" modelAttribute="lismovies">

<table border=1>

<tr><th>Ticket Number</th><th>Theater Name</th>><th>Movie Name</th><th>timings</th><th>Duration (hrs)</th><th>Seats</th></tr>
<tr><td>${ticdet.tNumber}</td><td>${tName}</td><td>${ticdet.mName}</td><td>${ticdet.timing}</td><td>${duration}</td><td>




${lisseat}






</td></tr>


</table>
<br/>
<br/>
<c:if test="${roleval eq 'user'}">
<a href="/listplace">Return to home</a>
</c:if>

<c:if test="${roleval ne 'user' }">
<a href="/admin">Return to home</a>
</c:if>




</form:form></div></div>
</body>
</html>