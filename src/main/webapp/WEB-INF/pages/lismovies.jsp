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
/* table {
  border-collapse: collapse;
}
td,td, th {
  border: 1px solid black;
}
th, td {
  padding: 15px;
  text-align: left;
} */
div.relative {
  position: relative;
  left: 80px;
  top:100px;

}
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
  
  body{
  background-image:url("aladin.jpg");
  }       
  
  th, td {
  padding: 15px;
  text-align: left;
}
</style>
</head>
<body background="aladin.jpg">
<div align="center">
<h3> Select Movie</h3>
<form:form action="/hello" method="get" modelAttribute="lismovies">

<div class="relative">
<table>

<tr><th>mId</th><th>mName</th><th>lang</th><th>duration</th><th>Select Theatre</tr>
<c:forEach items="${mvalues}" var="movi">
<tr><td>${movi.mId}</td><td>${movi.mName}</td><td>${movi.lang}</td><td>${movi.duration}</a></td><td><a href="/listthetare/${movi.mId}">Click here</a></td></tr>

</c:forEach>


</table></div></form:form>
<div align="center">
<a href="/listplace">Place</a>
</div>
</div>
</body>
</html>