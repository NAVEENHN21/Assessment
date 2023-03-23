<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Subject List</title>
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
	</style>
</head>
<body>
	<h1>Subjects List</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
		</tr>
		<c:forEach items="${subjects}" var="subject">
			<tr>
				<td>${subject.id}</td>
				<td>${subject.name}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
</body>
</html>