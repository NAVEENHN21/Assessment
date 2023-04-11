<%@ page language="java" contentType="text/html" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
	<div class="container">
		<h1 class="my-5 text-center">User List</h1>
		<form method="GET" action="/search">
			<div class="form-group">
				<label for="query">Search by Name:</label> <input type="text"
					class="form-control" id="query" name="query">
			</div>
			<button type="submit" class="btn btn-primary">Search</button>
		</form>

		<table class="table my-5">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.email}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>