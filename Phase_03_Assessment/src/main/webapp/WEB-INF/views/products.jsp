<%@ page language="java" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Manage Products</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
</style>
<body>
	<div class="container">
		<h1 class="my-5 text-center">Manage Products</h1>
		<form method="POST" action="products">
			<div class="form-group">
				<label for="username">Name:</label>
				<input type="text" class="form-control" id="username" name="name">
			</div>
				<div class="form-group">
				<label for="username">Description:</label>
				<input type="text" class="form-control" id="username" name="description">
			</div>
				<div class="form-group">
				<label for="username">Category:</label>
				<input type="text" class="form-control" id="username" name="category">
			</div>
				<div class="form-group">
				<label for="username">Price:</label>
				<input type="number" class="form-control" id="username" name="price">
			</div>
		
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>


</body>
</html>