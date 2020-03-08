<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
</head>
<body>
<div align="center">
<h3><b>Edit Movies</b></h3>
<form:form action ="" method ="get" modelAttribute="editmovie">
<table border=1>
<tr><td>Movie Id</td><td>Movie Name</td><td>Language</td><td>Duration</td><td>Actions</td></tr>
<c:forEach items="${lmov}" var= "mval" >

<tr><td>${mval.mId}</td><td>${mval.mName}</td><td>${mval.lang}</td><td>${mval.duration}</td><td><a href="/editmovid/${mval.mId}">Edit</a>/<a href="/delete/${mval.mId}">Delete</a></td></tr>





</c:forEach>
</table>
</form:form>
<br/><a href="/admin">Go to back menu</a>

</div>
</body>
</html>