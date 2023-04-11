<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="form.css" rel="stylesheet" type="text/css">
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
	<h1>Insert New Category of Shoes</h1>
	<form method="post" action="categoryInsert">
		<label>Name : </label><input type="text" name="name" required/>
		<input type="submit" value="submit" required/>
	</form>
</body>
</html>