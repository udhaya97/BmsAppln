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
table {
width:700px;
table-layout:fixed;
}




</style>
</head>
<body>


<form:form action="/getcode" method="get" modelAttribute="lismovies">
<div align="center"><br/><h3>Select Seat</h3><br/>

<table border=1>

<c:if test="${values == 'process'}">
<tr>
<c:forEach items="${tabval}" var="sseat">

<td><input type="checkbox" name="seats" value="${sseat}">${sseat}</td>

<c:if test="${sseat%5==0}">
<tr></tr>
</c:if>

</c:forEach>






</c:if>

<c:if test="${values ne 'process'}">
<tr>

<c:forEach items="${tabval}" var="sseat">
<c:forEach items="${seatsval}" var="stseat">
<c:if test="${stseat eq sseat}">
<td><input type="checkbox"  checked="checked" name="seats"  disabled >${stseat}</td>
</c:if>
</c:forEach>
<c:forEach items="${lisrem}" var ="sec">
<c:if test="${sec eq sseat}">
<td><input type="checkbox" name="seats" value="${sseat}">${sseat}</td></c:if></c:forEach>

<c:if test="${sseat%5==0}">
<tr></tr>
</c:if>
</c:forEach>
<%-- <tr>
<c:if test="${values eq 'process'}">

<c:forEach items="${tabval}" var="sseat">

<td><input type="checkbox" name="seats" value="${sseat}">${sseat}</td>


</c:forEach>

</c:if>
 --%>





















<%-- <c:if test="${tabval ne sval}">
<td><input type="checkbox"  name="seats" value="${sseat}">${sseat}</td>

<c:if test="${sseat%5==0}">
<tr></tr>
</c:if>
</c:if> --%>


<%-- <c:if test="${tabval ne sval} ? 'flag=""' : '' ">
<td><input type="checkbox" checkbox="flag" name="seats" value="${sseat}">${sseat}</td>

<c:if test="${sseat%5==0}">
<tr></tr>
</c:if>
</c:if> --%>




<%-- </c:forEach> --%>
</tr>
</c:if>
</table><br>

<input type="submit">
</div>


</form:form>
<%
int i = (Integer) session.getAttribute("sid");
int mid=(Integer) session.getAttribute("mid");
%>
<div align="center">
<a href="/listthetare/<%= i %>">Theater</a>
<a href="/listmovies/<%= mid %>">Movies</a>
<a href="/listplace">Place</a>
</div>
</body>
</html>