<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Profile</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
</head>
<style>
.profile-menu {
    border-radius: 0;
    width: 100%;
    text-align: left;
    padding: 10px 0;
    font-size: 18px;
    color: #fff;
    background-color: #343a40;
    margin-bottom: 10px;
    transition: background-color 0.3s ease;
}

.profile-menu:hover {
    background-color: #1d2124;
}

</style>
<body>
    <div class="container mt-5">
        <h2>Profile</h2>
        <div class="card mx-auto mt-3" style="width: 300px;">
            <div class="card-body">
                <p class="card-text">Name: ${LoginCredentials.name }</p>
                <p class="card-text">Email: ${LoginCredentials.email }</p>
                <p><a href="resetpassword" class="btn btn-primary">Reset Password</a></p>
            </div>
        </div>

        <h2 class="mt-5">Admin Options</h2>
        <div class="card mx-auto mt-3" style="width: 300px;">
            <div class="card-body">
                <p><a href="category" class="btn btn-dark profile-menu">Shoe Category</a></p>
                <p><a href="shoes" class="btn btn-dark profile-menu">Shoes</a></p>
                <p><a href="purchasereport" class="btn btn-dark profile-menu">Purchase Report</a></p>
                <p><a href="userlist" class="btn btn-dark profile-menu">User Details</a></p>
            </div>
        </div>

        <p class="mt-5"><a href="admin" class="btn btn-danger">Logout</a></p>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js"></script>
</body>
</html>
