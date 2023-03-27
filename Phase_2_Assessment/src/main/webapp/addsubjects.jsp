<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Subjects</title>
</head>
	<link rel="stylesheet" type="text/css" href="style.css">

<style>
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: green;
  }
</style>
<body>
	<h1>Add Subjects</h1>
	<form action="addsubjects" method="POST">
		<label for="id">ID:</label>
		<input type="text"  name="id" required><br><br>
		<label for="name">Name:</label>
		<input type="text"  name="name" required><br><br>
	
		<button type="submit">Submit</button>
	</form>
	<br>
	<a href="subjects">Back to Subjects</a>
</body>
</html>