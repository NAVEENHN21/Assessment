<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="/resources/static/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="jumbotron">
		<h1 class="display-4">Admin Login</h1>
	</div>

	<form action="adminCheck" method="post" class="form-group mx-auto">
		<div class="form-group">
			<label for="email">Enter Email:</label>
			<input type="text" class="form-control" id="email" name="email" required>
		</div>
		<div class="form-group">
			<label for="password">Enter Password:</label>
			<input type="password" class="form-control" id="password" name="password" required>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		<p><a href="index">Back</a></p>
	</form>

	<div class="card mx-auto" style="width: 18rem;">
		<div class="card-body">
			<h5 class="card-title">Login Credentials</h5>
			<p class="card-text">Email: admin@gmail.com</p>
			<p class="card-text">Password: admin</p>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
