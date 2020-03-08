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



background-image:url("tone.jpg");

}
th,tr,td,h3{


color:yellow;


}
.errors{

color:red;
}

</style>
</head>
<body>

<div align="center">
<h3>Add Theatre</h3>
<form:form action="/savtheatr" method="get" modelAttribute="theatre">
<table>

<tr><td>Theatre Name: </td>
<td><form:input path="tName"/><form:errors path="tName" cssClass="errors"/></td></tr>
<tr><td>Timings:</td>
<td><form:input path="timings"/><form:errors path="timings" cssClass="errors"/></td></tr>
<tr>
<td>Movie Name:</td>

<td><select name="mname" >
<option>select movies and place</option>

<c:forEach items="${movi}" var="movies">

<option>${movies.mName},${movies.place.pName} </option>

</c:forEach>
</select></td>
</tr>
<tr><td></td><td><input type="submit" value="Add Theatre"></td></tr>


<tr></tr>
<tr></tr>
<tr></tr>
<tr><td></td><td><a href="/admin">Home</a></td></tr>

</table>


</form:form>
</div>
</body>
</html>