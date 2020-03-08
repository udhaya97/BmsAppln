<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>


<style type="text/css">
body
{
background-image:url("lo.jpg");
width:100%;
height:100%;

}


.container{

width:1024px;

}
td,th,tr,div{


color:yellow;
}

        .error {color:white;}  
   </style>  
</head>

<body >

<div align="center">
<h4>........Welcome to BMS.................</h4><br/>
<br/>
<br/>
<h3>Create User</h3>
<form:form action="/lo"  modelAttribute="login">
<div align="center">
<table>
<tr><td>User Name</td><td><form:input path="uName"/></td><td><form:errors path="uName" cssClass="error"/></td></tr>
<tr><td>Password:</td><td><form:input path="pass" type="password"/></td><td><form:errors path="pass" cssClass="error"/></td></tr>
<tr><td>Dob:</td><td><form:input path="dob" type="date"/></td><td><form:errors path="dob" cssClass="error"/></td></tr>
<tr><td>Email:</td><td><form:input path="mailId" type="email"/></td><td><form:errors path="mailId" cssClass="error"/></td></tr>
<tr><td>Mobile Number:</td><td><form:input path="mobileNo"/></td><td><form:errors path="mobileNo" cssClass="error"/></td></tr>
<tr><td>Role:</td><td><form:input path="role" value="User" readonly="true"/></td><td><form:errors path="role" cssClass="error"></form:errors></td></tr>
<tr><td></td><td><input type="submit"></td></tr>

<tr></tr><tr></tr>
<tr><td>Already User ? </td><td><font color="orange"><a href ="/logi">Login Here</a></font></td></tr>



</table>

</div>


</form:form></div>

</body>
</html>