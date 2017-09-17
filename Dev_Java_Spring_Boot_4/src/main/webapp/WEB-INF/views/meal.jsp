<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Meal</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
 <style>
        body{
            background-image: url("http://www.nmgncp.com/data/out/75/4170503-color-gradient-wallpaper-hd.png");
            background-size: 100%;
        }
    </style>
<body>



    <nav class="navbar navbar-expand-lg sticky-top navbar-light bg-dark">
  <a class="navbar-brand; btn btn-dark" style = "font-style: italic; font-weight: bold;  font-size: 1.875em;" href="#">LvivRest</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-success" href="#">Pricing</a>
      </li>
    
        <li class="nav-item dropdown">
        <!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Action
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Separated link</a>
  </div>
</div>
        </li>
    </ul>
      <div >
            <ul class="navbar-nav">
            <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="#">Sign in <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="#">Sign up</a>
            
            
            </ul>
        </div>
      
      
  </div>
        
</nav>
    
   
    
    <nav class="navbar navbar-expand-lg fixed-bottom navbar-light bg-dark">
  <a class="navbar-brand; btn btn-dark" style = "font-style: italic; font-weight: bold;  font-size: 1.875em;" href="#">LvivRest</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown1" aria-controls="navbarNavDropdown1" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown1">
            <ul class="navbar-nav">
            <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="#">Sign in <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="#">Sign up</a>
            </ul>
        </div>
</nav>

	<div class="container" style="margin-top:15px">
		<div class="row">
			<div class="col-12">
				<form:form action="/admin/meal" method="POST" modelAttribute="meal">
					<div class="form-group row">
						<label class="col-2 col-form-label" for="title">Title:</label>
						<div class="col-10">
							<form:input class="form-control" id="title" path="title"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="description">Description:</label>
						<div class="col-10">
							<form:textarea class="form-control" id="description" path="description" rows="5"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="price">Price:</label>
						<div class="col-10">
							<form:input class="form-control" id="price" path="price"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="weight">Weight:</label>
						<div class="col-10">
							<form:input class="form-control" id="weight" path="weight"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="cuisine">Cuisine:</label>
						<div class="col-10">
							<form:select path="cuisine" items="${cuisines}" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="ingredients">Ingredients:</label>
						<div class="col-10">
							<form:select path="ingredients" items="${ingredients}" class="form-control" multiple="multiple"/>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-10 mr-left">
							<button class="btn btn-sm btn-outline-success">Save</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<tr>
						<th class="text-center">Title</th>
						<th class="text-center">Description</th>
						<th class="text-center">Price</th>
						<th class="text-center">Cuisine</th>
						<th class="text-center">Weight</th>
						<th class="text-center">Ingredients</th>
						<th class="text-center">Options</th>
					</tr>
					<c:forEach var="meal" items="${meals}">
						<tr>
							<td>${meal.title}</td>
							<td>${meal.description}</td>
							<td>${meal.price}</td>
							<td>${meal.cuisine}</td>
							<td>${meal.weight}</td>
							<td>
								<c:forEach var="ingredient" items="${meal.ingredients}">
									${ingredient} 
								</c:forEach>
							</td>
							<td class="text-center">
								<a href="/admin/meal/update/${meal.id}" class="btn btn-outline-warning btn-sm">Update</a>
								<a href="/admin/meal/delete/${meal.id}" class="btn btn-outline-danger btn-sm">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
			
	</div>
</body>
</html>