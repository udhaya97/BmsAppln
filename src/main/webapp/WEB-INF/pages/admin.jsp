<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMS</title>
<style>
h3{

color:red;
}


</style>

</head>
<body background="jocker.jpg">
<div align="center">

<h1>BookMyShow</h1>
<h3>Welcome ${name}</h3>

<table>

<tr><td><a href="/addplace">Add Place</a></td><td><a href="/addmovies">Add Movies</a></td><td> </td> <td><a href="/addtheatre">Add Theatre</a></td><td> </td>
<td><a href ="/edittheat">Edit Theatre</a></td><td> </td><td><a href="/editmov">Edit Movie</a></td><td> </td><td><a href="/ediplace">Edit Place</a></td></tr>

<tr><td><a href="/listplace">Book a ticket</a>

<br/>
<br/>
<a href="/createuser">Logout</a>


</table></div>
</body>
</html>