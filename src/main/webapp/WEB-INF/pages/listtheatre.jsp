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
   table {
    border-collapse: collapse;
    
  } 
  th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: left;
  }
  tr:nth-child(even) {
    background-color: #eee;
  }
  tr:nth-child(odd) {
    background-color: #fff;
  }             
  th, td {
  padding: 15px;
  text-align: left;
}
</style>

</head>
<body background="aladin.jpg">
<div align="center">
<h3>Select Theatre</h3></br>
<form:form action="/listmovies" method="get" modelAttribute="lismovies">

<table>
<tr><th>tid</th><th>tNAme</th><th>timings (click the timings to selet seat)</th></tr>
<c:forEach items="${lsth}"  var="theatre" >

<tr><td>${theatre.tId}</td><td>${theatre.tName}</td><td><c:forEach items="${timinglist}" var="tlist">

 <a href="/showseats/${tlist}/${theatre.tName}"> ${tlist} </a>
</c:forEach></td></tr>


</c:forEach>
<tr></tr>
<%-- <tr><th>timings</th><tr>
<c:forEach items="${timinglist}" var="tlist">

 <a href=""> ${tlist} </a>
</c:forEach></tr> --%>
<tr>
</table>

</form:form></div>
<%

int mid=(Integer) session.getAttribute("mid");
%>

<div align="center">
<a href="/listmovies/<%= mid %>">Movies</a>
</div>
</body>
</html>