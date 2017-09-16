<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/lib/bootstrap.min.css">
  <script src="/lib/jquery-1.12.2.min.js"></script>
  <script src="/lib/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  <style>
      
          .navbar {
      margin-bottom: 0;
      border-radius: 0;
	  
    }
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #343434;
      height: 100%;
    }
      .comment{
           background-color: #cae898;
      height: 100%;
      }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;
        } 
    }
  </style>

<title>Admin</title>
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
	<button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	
      <a class="navbar-brand"  href="#" style="color:#cae898; font-style: italic; font-weight: bold;  font-size: 1.875em;">Lviv_Rest</a>
    </div>
	 <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Show All Cafes</a></li>
      <li><a href="#">1</a></li> 
      <li><a href="#">2</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#" style="color:#cae898"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="#" style="color:#cae898"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
    </ul>
  </div>
  </div>
</nav>
     
    

<div class="container-fluid">
  <div class="row content">
      <div class="col-sm-4">
      </div>
    <div class="col-sm-4">

        <h2 style="color:#cae898; font-style: italic; font-weight: bold;  font-size: 1.875em;">Admin</h2>

	
	<a href="/admin/cuisine" class="btn btn-success btn-lg">Cuisine</a>
	<a href="/admin/meal"class="btn btn-success btn-lg">Meal</a>
	<a href="/cafe"class="btn btn-success btn-lg">Cafe</a>
	<a href="/admin/openclose"class="btn btn-success btn-lg">OpenClose</a>
      
   

      </div>
 <div class="col-sm-4">
      </div>

  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>


</body>
</html>