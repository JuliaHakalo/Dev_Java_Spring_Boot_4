<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="custom" uri="/WEB-INF/tags/implicit.tld"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Table</title>
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
            	<sec:authorize access="isAnonymous()">
            <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="/registration"><span class="glyphicon glyphicon-user" ></span>Sign Up <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="/login"><span class="glyphicon glyphicon-log-in" ></span> Sign In</a>
        </li>
            	</sec:authorize>
            	
	<sec:authorize access="isAuthenticated()">
		<form:form action="/logout">
			<button class="btn btn-outline-primary">Log Out</button>
		</form:form>
	</sec:authorize>
            	

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
            	<sec:authorize access="isAnonymous()">
            <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="/registration"><span class="glyphicon glyphicon-user" ></span>Sign Up <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="/login"><span class="glyphicon glyphicon-log-in" ></span> Sign In</a>
        </li>
            	</sec:authorize>
            	
	<sec:authorize access="isAuthenticated()">
		<form:form action="/logout">
			<button class="btn btn-outline-primary">Log Out</button>
		</form:form>
	</sec:authorize>
            	

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
    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
	<button type="button" class="navbar-toggle"  data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	
      <a class="navbar-brand"  href="#">LvivRest</a>
    </div>
	 <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Show All Cafes</a></li>
      <li><a href="#">1</a></li> 
      <li><a href="#">2</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
				<form:form action="/cafe/{id}/tables" method="POST" modelAttribute="table">
					<div class="form-group row">
						<label class="col-2 col-form-label" for="countOfPeople">Count Of People:</label>
						<div class="col-10">
							<form:input class="form-control" id="countOfPeople" path="countOfPeople"/>
						</div>
					</div>
			
				<div class="form-group row">
				<label class="col-2 col-form-label" for="isFree">IsFree:</label>
  					<div class="col-10">
  						  <div class="input-group">
    							  <span class="input-group-addon">
      							  <input type="checkbox" aria-label="Checkbox for following text input">
    							  </span>
     						 <input type="text" class="form-control" aria-label="isFree">
   						 </div>
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
						<th class="text-center">CountOfPeople</th>
						<th class="text-center">IsFree</th>
						<th class="text-center">Options</th>
					</tr>
					<c:forEach var="table" items="${tables}">
						<tr>
							<td>${table.countOfPeople}</td>
							<td>${table.isFree}</td>
							<td class="text-center">
<%-- 								<a href="/table/${table.id}" class="btn btn-outline-warning btn-sm">Show</a> --%>
							<a href="/table/update/${table.id}" class="btn btn-outline-warning btn-sm">Update</a>
								<a href="/table/delete/${table.id}" class="btn btn-outline-danger btn-sm">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="row">
				<div class="col-12 text-center">
					<custom:pageable page="${tables}"/>
				</div>
			</div>
	</div>
</body>
</html>

