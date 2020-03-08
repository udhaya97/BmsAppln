<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
</head>
<body>
<div align="center">
<form:form action="/listbanks" method="get" ModelAttribute="lismovies">
</br>
</br>
</br>
</br>

Total Amount  =  ${prize}
</br>

</br>
<input type="Submit" name="pay" value="proceed to pay">
</form:form></div>
</body>
</html>