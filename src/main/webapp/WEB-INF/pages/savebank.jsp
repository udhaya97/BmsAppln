<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
<style>
div.relative {
  position: relative;
  left: 50px;
  top:190px;

}

.all{

width:100%;
height:100%;
}

.th,tr,td
{

color:"yellow";
}
h3{
color:green;}
.errors{
color:red;}
</style>
</head>

<body background="dbbankone.png">
<div class="all">
<div align ="center">

<div class="relative">
<h3>Add Bank</h3>
<form:form action="/banksave" method="post" modelAttribute="bsave">

<table>
<tr><td>
Bank Name:</td><td><form:input path="bName"/></td><td></td><td><form:errors path="bName" cssClass="errors"/></td></tr>
<tr> <td>Branch:</td><td><form:input path="branch"/></td><td></td><td><form:errors path="branch" cssClass="errors"/></td></tr>
<tr>	<td>AccNo:</td><td><form:input path="accId"/></td><td></td><td><form:errors path="accId" cssClass="errors"/></td></tr>
<tr><td>	 accType:</td><td><form:input path="accType"/></td><td></td><td><form:errors path="accType" cssClass="errors"/></td></tr>
<tr><td>	 balance:</td><td><form:input path="balance"/></td><td></td><td><form:errors path="balance" cssClass="errors"/></td></tr>

<tr><td></td><td><input type="submit" value="savebank"></td></tr>

</table>


</form:form></div></div></div>
</body>

</html>