<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="custom" uri="/WEB-INF/tags/implicit.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CafeView</title>
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
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
   <div class="container">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100 img-fluid" src="http://s.gvult.com/uploads/posts/2016-02/1454579129_12646969_1240982332595940_2366665344260414621_n.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img-fluid" src="http://www.sushiya.ua/modules/pages/files/f56964590e22eed969b3651d41797252.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img-fluid" src="https://cdn.doordash.com/media/restaurant/cover/ChicagoPizzaPizzeria_Allen_TX.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
    
    <div class="d-flex  justify-content-center flex-row">
  <div class="p-2">Flex item 1</div>
  <div class="p-2">Flex item 2</div>
  <div class="p-2">Flex item 3</div>
</div>
    


	<div class="container">
	<div class="row">
			<div class="col-12">
				<form:form action="/cafe" method="POST" modelAttribute="cafe">
					<div class="form-group row">
						<label class="col-2 col-form-label" for="name">Name:</label>
						<div class="col-10">
							<form:input class="form-control" id="name" path="name"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="fullDescription">FullDescription:</label>
						<div class="col-10">
							<form:textarea class="form-control" id="fullDescription" path="fullDescription" rows="5"/>
						</div>
					</div>
					<div class="form-group row">
				<label class="col-2 col-form-label" for="rate">Rate:</label>
						<div class="col-10">
							<form:input class="form-control" id="rate" path="rate"/>
						</div>
					</div>
						<div class="form-group row">
				<label class="col-2 col-form-label" for="photoUrl">PhotoUrl:</label>
						<div class="col-10">
							<form:input class="form-control" id="photoUrl" path="photoUrl"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="version">Version:</label>
						<div class="col-10">
							<form:input class="form-control" id="version" path="version"/>
						</div>
					</div>
						<div class="form-group row">
						<label class="col-2 col-form-label" for="address">Address:</label>
						<div class="col-10">
							<form:input class="form-control" id="address" path="address"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="type">Type:</label>
						<div class="col-10">
							<form:select path="type" items="${types}" class="form-control"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="phone">Phone:</label>
						<div class="col-10">
							<form:input class="form-control" id="phone" path="phone"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="open">Open:</label>
						<div class="col-10">
							<form:input class="form-control" id="open" path="open"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="close">Close:</label>
						<div class="col-10">
							<form:input class="form-control" id="close" path="close"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-2 col-form-label" for="meals">Meals:</label>
						<div class="col-10">
							<form:select path="meals" items="${meals}" class="form-control" multiple="multiple"/>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<tr>
						<th class="text-center">Name</th>
						<th class="text-center">FullDescription</th>
						<th class="text-center">Rate</th>
						<th class="text-center">PhotoUrl</th>
						<th class="text-center">Version</th>
						<th class="text-center">Address</th>
						<th class="text-center">Type</th>
						<th class="text-center">Phone</th>
						<th class="text-center">Open</th>
						<th class="text-center">Close</th>
						<th class="text-center">Meals</th>
						<th class="text-center">Options</th>
					</tr>
				
						<c:forEach var="cafe" items="${cafes}">
								<tr>
							<td>${cafe.name}</td>
							<td>${cafe.fullDescription}</td>
							<td>${cafe.rate}</td>
							<td>${cafe.photoUrl}</td>
							<td>${cafe.version}</td>
							<td>${cafe.address}</td>
							<td>${cafe.type}</td>
							<td>${cafe.phone}</td>
							<td>${cafe.open}</td>
							<td>${cafe.close}</td>
							<td>
							<c:forEach var="meal" items="${cafe.meals}">
							${meal} 
								</c:forEach>
								</td>
							<td class="text-center">
								<a href="/cafe/update/${cafe.id}" class="btn btn-outline-warning btn-sm">Update</a>
								<a href="/cafe/delete/${cafe.id}" class="btn btn-outline-danger btn-sm">Delete</a>
							</td>
						</tr>
						</c:forEach>
				</table>
			</div>

		</div>
			<div class="row">
		<div class="col-12">
				<table class="table table-bordered">
					<tr>
						<th class="text-center">Order table</th>
					</tr>
						<tr>
							<td class="text-center">
								<a href="/cafe/${cafe.id}/tables" class="btn btn-outline-warning btn-sm">Order table</a>
							</td>
						</tr>
				</table>
			</div>
			
				<div class="col-12">
				<table class="table table-bordered">
					<tr>
						<th class="text-center">Write a comment</th>
					</tr>
						<tr>
							<td class="text-center">
								<a href="/cafe/{id}/comments" class="btn btn-outline-warning btn-sm">Comment</a>
							</td>
						</tr>
				</table>
			</div>
	</div>
	
	</div>
</body>
</html>