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

div.relative {
  position: relative;
  left: 40px;
  top:100px;

}



</style>
</head>
<body background="pay.jpg">

<div align="center">
 <h2>Payment Page</h2>

<div class="relative">
<br/>Ticket value is ${prizze}
<br/>

<h3>New User Add Bank here <a href="/bsaved">AddBank</a></h3><br/>

<table>
<form:form action="/fetchamount" method="get" modelAttribute="bal">
<tr><td>
<select name="bname">
<option>select Bank</option>
<c:forEach items="${lisbank}" var="lbk">


<option >${lbk.bName}</option>


</c:forEach>

</select>
</td>
<td></td><td><input type="submit" value="fetch balance"></td></tr></form:form>

<form:form action="/ticketgen/${balance.balance}/${balance.bId}" method="get" modelAttribute="lismovies"><tr></tr>
<tr></tr><tr></tr><tr><td>Bank Balance is  ${balance.balance} </td>
<td></td><td><a href="/listbanks">Change Account</a></td></tr><tr>

<td>
<c:set var="balance" value="${bnc}"/>
<c:set var="price" value="${prizze}"/>
 
  <c:if test="${price >= balance}">
  <br>
    Change the account.Balance is low
    
    <br>
  

  </c:if>
 <c:if test="${price <= balance}">
 
    <input type="submit" value ="get ticket" >
 
</c:if>
</td></tr>


</form:form>
</table></div></div>
</body>
</html>