<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.awt.print.Book"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<style>
header {
background-color: #333;
color: #fff;
text-align: center;
padding: 20px;
margin-bottom: 20px;
}

/* Add styles to the table */
table {
border-collapse: collapse;
margin-bottom: 20px;
}

table th, table td {
padding: 10px;
border: 1px solid #ccc;
}

table th {
background-color: #f2f2f2;
}

/* Add styles to the buttons */
.buttons {
display: flex;
justify-content: space-between;
}

.buttons a {
padding: 10px 20px;
color: #fff;
text-decoration: none;
border-radius: 4px;
}

.buttons a.btn-primary {
background-color: #007bff;
border: none;
}

.buttons a.btn-primary:hover {
background-color: #0069d9;
}

.buttons a.btn-secondary {
background-color: #6c757d;
border: none;
}

.buttons a.btn-secondary:hover {
background-color: #5a6268;
}

.buttons a.btn-danger {
background-color: #dc3545;
border: none;
}

.buttons a.btn-danger:hover {
background-color: #c82333;
}
</style>
<body>
	<h1>Category</h1>

	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<c:forEach var="category" items="${category}">
			<tr>
				<td>${category.id }</td>
				<td>${category.name }</td>
				<td><a href="categoryUpdate?categoryid=${category.id }">Update</a></td>
				<td><a href="categoryDelete?categoryid=${category.id }">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<p>
		Insert New Category : <a style="padding:5px 20px 5px 20px" href="insertCategory">Insert</a>
	</p>
	<p>
		<a  href="adminHome">Home</a>
	</p>
	<p> <a style="color:red;background-color:white;border:1px solid red" href="admin">Logout</a>
</body>
</html>