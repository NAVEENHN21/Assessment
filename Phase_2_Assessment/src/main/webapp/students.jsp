<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Students</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
		table {
			border-collapse: collapse;
			width: 100%;
		}
		
		th, td {
			text-align: left;
			padding: 8px;
		}
		
		th {
			background-color: #4CAF50;
			color: white;
		}
		
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		
		tr:hover {
			background-color: #ddd;
		}
		a:link, a:visited {
  background-color: green;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
background-color: #f44336;
align:right;

}
 
	</style>
<body>
	<h1>Students</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Class ID</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="student" items="${students}">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.class_id}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="addStudent.jsp">Add Student</a>
</body>
</html>