<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
<style>
div {
  position: relative;
  left: -20px;
  top:170px;
  
}

h3{

color:green;
}

body{

background-image:url("lo.jpg");
}


 .error {color:red;}  
 
 
</style>
</head>
<body >
<div align="center">
<h3>Login</h3>

<form:form action="/verify"  modelAttribute="login">
<table>
<tr><td>UserName</td><td><form:input path="usName" name="uName" placeholder="username"/></td><td><form:errors path="usName" cssClass="error"/></td><td><font color="red">${username}</font></td></tr>
<tr></tr>
<tr><td>Password</td><td><form:input path="passwrd" name="pass" type="password" placeholder="password"/></td><td><form:errors path="passwrd" cssClass="error"/></td><td><font color="red">${password}</font></td></tr>

<tr></tr>
<tr><td></td><td><input type ="submit"></td></tr>

<tr></tr>
<tr></tr>
<tr><td>New User: </td><td><a href="/createuser">Click here</a></td></tr>

</table>


</form:form>
</div>
</body>
</html>