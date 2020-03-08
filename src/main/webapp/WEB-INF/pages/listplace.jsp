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
a{
 color: green;
}

/*  body {
  
  background-image: url("place_img.jpg");
  opacity:0.3;
  
} */
div.relative {
  position: relative;
  left: 100px;
  top:100px;

}

  
}
</style>
</head>
<body background="plo.jpg" >

<div align="center"> 
<h3>Click on the location to view movies</h3>

<form:form action="/listmovies" method="get" modelAttribute="lismovies">
<div class="relative">
<table>

<c:forEach items="${lspl}" var="place" >
<th><img src="${place.imgs}" height=100px width=100px></th></c:forEach></tr><tr>
<c:forEach items="${lspl}" var="place" >
<td><a href="/listmovies/${place.pId}">  &nbsp ${place.pName}  </a></td></c:forEach></tr>



</table>
</div>
</form:form></div>
<br>

<c:if test="${role eq 'Admin'}">
<a href="/admin">Home</a>
</c:if>

<c:if test="${role eq 'user'}">
<a href="/user">Home</a>
</c:if>

</body>
</html>