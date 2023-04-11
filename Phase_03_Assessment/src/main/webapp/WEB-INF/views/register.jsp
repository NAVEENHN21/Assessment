<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User Registration</title>
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
		<h1 class="my-5 text-center">User Registration</h1>
		<form method="POST" action="/register">
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" class="form-control" id="username" name="name">
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" class="form-control" id="email" name="email">
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" class="form-control" id="password" name="password">
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
		</form>
	</div>
</body>
</html>
