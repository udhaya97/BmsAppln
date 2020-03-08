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

background-image:url("mv.jpg")

}
td,tr,th,h3
{
color:black;
}

.errors{
color:red;
}
</style>
</head>
<body>

<div align="center">
<h3>Add Movies</h3>
<form:form action="/savmovi" method="get" modelAttribute="movies">
<table>

<tr><td>Movie Name: </td>
<td><form:input path="mName"/><form:errors path="mName" cssClass="errors"/></td></tr>
<tr><td>Language:</td>
<td><form:input path="lang"/><form:errors path="lang" cssClass="errors"/></td></tr>
<tr><td>Duration</td>
<td><form:input path="duration"/><form:errors path="duration" cssClass="errors"/></td></tr>
<tr>
<td>Place</td>

<td><select name="pname">
<option>select place</option>
<c:forEach items="${pall}" var="pnam">
<option>${pnam.pName}</option>
</c:forEach>
</select> </td><%-- <td><form:errors path="place" cssClass="errors"/></td> --%>
</tr>
<tr></tr>
<tr><td></td><td><input type="submit" value="Add Movies"></td></tr>


<tr></tr>
<tr></tr>
<tr></tr>
<tr><td></td><td><a href="/admin">Home</a></td></tr>


</table>


</form:form>
</div>

</body>
</html>