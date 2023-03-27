<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f5f5f5;
}

h1 {
  color: #333;
  text-align: center;
  margin-top: 50px;
}

h3 {
  color: #ff0000;
  text-align: center;
}

a {
  color: #007bff;
  text-decoration: none;
  display: block;
  text-align: center;
  margin-top: 20px;
}

a:hover {
  text-decoration: underline;
}
</style>
<body>
<h1>Error</h1>
<h3><%= request.getAttribute("errorMessage") %></h3>
<a href="login">Back to Login Page</a>
</body>
</html>