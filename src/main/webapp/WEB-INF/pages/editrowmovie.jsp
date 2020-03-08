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
table, th,tr,td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body>
<div align="center">
<h3>Edit movies</h3>
<form:form action ="/editmval/${mv.mId}" method ="get" modelAttribute="editmovie">
<table >
<tr><td>Movie Id</td><td>Movie Name</td><td>Language</td><td>Duration</td><td>Place Id And Place</td><td>Update</td></tr>


<tr><td>${mv.mId}</td><td><form:input path="mName" value="${mv.mName}"/></td><td><form:input path="lang" value="${mv.lang}"/>
</td><td><form:input path="duration" value="${mv.duration}"/></td><td>
<select name="pidname" >
<option>Select PId and Place</option>
 
<c:forEach items="${plval}" var ="pval">
<option>${pval.pId}
,${pval.pName}</option>
</c:forEach>
</select></td><td><input type="submit" value="update"></td></tr></table></form:form>


<br/><a href="/editmov">Go to back to movie edit list</a></div>
</body>
</html>