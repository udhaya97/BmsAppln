<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <style>
div{

position:absolute;

top=50px;
left=3px;
}

</style> -->
<title>BMS</title>
<style type="text/css">

body{

background-image:url("pli.jpg")

}
.errors{
color:red;
}

</style>

</head>
<body >


<div align="center">
<h3>Add Place</h3>
<form:form action="/savplace" method="post" modelAttribute="place">

<table>
<%-- <tr><td>Place Id</td>

<td><form:input path="pId" name="pId"/></td> --%>
<tr>
<td>Place Name</td><td><form:input path="pName" name="pName"/><form:errors path="pName" cssClass="errors"/></td></tr>
<tr><td>image:</td><td><form:input path="imgs" type="file"/><form:errors path="imgs" cssClass="errors"/></td></tr>



<tr></tr>
<tr><td></td><td><input type="submit" value="Add Place"></td>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td></td><td><a href="/admin">Home</a></td></tr>

</table>











</form:form></div>
</body>
</html>