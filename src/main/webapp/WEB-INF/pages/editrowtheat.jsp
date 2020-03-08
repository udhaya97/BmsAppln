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



S
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

td, th,tr {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}



</style>
</head>
<body>
<div align="center">
<h3><b>Update Theatre</b></h3>
<form:form action ="/editthea/${theatrow.tId}" method ="get" modelAttribute="editTheatre">
<table>
<tr><td>Theatre Id</td><td>Theatre Name</td><td>timings</td><td>Movie Id And Name</td><td>Update</td></tr>


<tr><td>${theatrow.tId}</td><td><form:input path="tName" value="${theatrow.tName}"/></td><td><form:input path="timings" value="${theatrow.timings}"/>
<td>
<select name="midname" >
<option>Select Id and Movie</option>
 
<c:forEach items="${mapval}" var ="mval">
<option>${mval.key}
,${mval.value}</option>
</c:forEach>



<%-- 
<c:forEach var="entry" items="${map}">
   key is ${entry.key}
   <c:forEach var="info" items="${entry.value}">
        info is ${info}
   </c:forEach>
</c:forEach> --%>






</select></td>
<td><input type="submit" value="update"></td></tr>



</table><br/>
<a href="/edittheat">Go back to list theatre</a>
</form:form></div>
</body>
</html>