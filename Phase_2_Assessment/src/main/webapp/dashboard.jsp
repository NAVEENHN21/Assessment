<!DOCTYPE html>
<html>
  <head>
    <title>Dashboard - Learner's Academy</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}


body {
  background-color: #f2f2f2;
  font-family: Arial, sans-serif;
  font-size: 16px;
}



  </style>
  <body>
    <header>
      <div  class="logo"><h1>Welcome to Learner's Academy</h1></div>
      <nav>
        <ul>
          <li><a href="subjects">Subjects</a></li>
          <li><a href="teachers">Teachers</a></li>
          <li><a href="classes">Classes</a></li>
          <li><a href="students">Students</a></li>
          <li><a href="classreport">Class-Report</a></li>
          
        </ul>
      </nav>
    </header>
    <div class="container">
    
      <h2>Please select a section from the menu above.</h2>
    </div>  
    <div>
     <a href="login.jsp" class="btn btn-info btn-lg" >
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a>
    </div>
  </body>
</html>