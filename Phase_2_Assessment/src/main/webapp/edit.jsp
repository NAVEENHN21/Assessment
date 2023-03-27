<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit Student</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>Edit Student</h1>
	<form action="updateStudent" method="POST">
		<input type="hidden" name="id" value="${student.id}">
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" value="${student.name}" required><br><br>
		<label for="classId">Class ID:</label>
		<input type="number" id="classId" name="classId" value="${student.class_id}" required><br><br>
		<button type="submit">Save</button>
	</form>
	<br>
	<a href="students">Back to Students</a>
</body>
</html>