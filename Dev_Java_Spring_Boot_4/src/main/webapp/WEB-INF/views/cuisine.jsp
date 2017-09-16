<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="custom" uri="/WEB-INF/tags/implicit.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="/lib/bootstrap.min.css">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="/lib/jquery-1.12.2.min.js"></script>
  <script src="/lib/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
 <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
	  
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 1200px;
	      background-color: #cae898;
	
	
	}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #333;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #333;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    
    table, th, td {
   border: 1px solid black;
}
  </style>


<title>Cuisine</title>
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
	
      <a class="navbar-brand"  href="#" style="color:#cae898; font-style: italic; font-weight: bold;  font-size: 1.875em;">LvivRest</a>
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
      <li><a href="#" style="color:#cae898"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
  </div>
</nav>


  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
	
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form:form action="/admin/cuisine" method="POST" modelAttribute="cuisine">
					<div class="row">
						<div class="col-10 ml-auto" style="color:red;">
							<form:errors path="name"/>
						</div>
					</div>
					 
					<div class="form-group row">
						<label class="col-sm-2 col-form-label" for="name">Name:</label>
						<div class="col-sm-10">
							<form:input class="form-control" id="name" path="name" placeholder="Enter Name"/>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10 ml-auto">
							<button class="btn btn-success">Save</button>
							<a href="/admin/cuisine/cancel" class="btn btn-warning">Cancel</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered" style="border: 1 px solid black;">
					<tr style="border: 1 px solid black;">
						<th class="text-center" style="border: 1 px solid black;">Name</th>
						<th class="text-center" style="border: 1 px solid black;">Options</th>
					</tr>
					<c:forEach var="cuisine" items="${cuisines.content}">
						<tr style="border: 1 px solid black;">
							<td style="border: 1 px solid black;">${cuisine.name}</td>
							<td class="text-center" style="border: 1 px solid black;">
								<a href="/admin/cuisine/update/${cuisine.id}" class="btn btn-warning">Update</a>
								<a href="/admin/cuisine/delete/${cuisine.id}" class="btn btn-info">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-12 text-center">
				<custom:pageable page="${cuisines}"/>
			</div>
		</div>
	</div>
	  </div>
	   <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>

  
 </div>
  
  
</div>




<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>
</body>
</html>