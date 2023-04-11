<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Products by Category</title>
  <!-- Add the Bootstrap CSS file -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
    .jumbotron {
      background-color: #007bff;
      color: #fff;
      padding: 2rem 1rem;
    }

    table {
      width: 100%;
    }

    th {
      font-weight: bold;
    }

    td {
      vertical-align: middle;
    }

    .table-responsive {
      overflow-x: auto;
    }

    /* Optional: add hover effect to table rows */
    tbody tr:hover {
      background-color: #f5f5f5;
    }
  </style>
</head>
<body>
  <!-- Replace the <h1> tag with a Bootstrap jumbotron -->
  <div class="jumbotron">
    <h1 class="display-4">Products by Category: ${categoryName}</h1>
  </div>

  <!-- Wrap the <table> element in a Bootstrap div with the class table-responsive -->
  <div class="table-responsive">
    <table class="table table-bordered table-striped">
      <thead class="thead-dark">
        <tr>
          <!-- Replace the table headers with Bootstrap <th> elements -->
          <th>Product Name</th>
          <th>Description</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${products}" var="product">
          <tr>
            <!-- Add Bootstrap classes to the table rows and data to style them appropriately -->
            <td class="align-middle">${product.name}</td>
            <td class="align-middle">${product.description}</td>
            <td class="align-middle">${product.price}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <!-- Add the Bootstrap JavaScript file -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
