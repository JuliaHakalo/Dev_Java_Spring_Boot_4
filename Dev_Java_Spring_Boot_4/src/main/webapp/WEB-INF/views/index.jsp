<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<script src="/resources/javascript/stars.js"></script>


<title>Cafe</title>
</head>
 <style>
        body{
            background: url("http://www.nmgncp.com/data/out/75/4170503-color-gradient-wallpaper-hd.png") no-repeat center center fixed;
            background-size: 100%;
    -moz-background-size: 100%; /* Firefox 3.6+ */
    -webkit-background-size: 100%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 100%; /* Opera 9.6+ */
    background-size: 100%; /* Современные браузеры */
        }
        
		#mycardstylel{
	font-weight:bold; 
	font-family: cursive; 
	color:#069f95; 
	margin-top:0; 
	margin-bottom:0; 
	padding-top:0; 
	padding-bottom:0;
		}

		#mycardstyler{
	font-family: cursive; 
	color:#089bbb; 
	margin-top:0; 
	margin-bottom:0; 
	padding-top:0; 
	padding-bottom:0;
		}
		
		#card-p{
	padding:10px;
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
    
    <sec:authorize access="hasRole('ROLE_ADMIN')">
      <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="/admin">Admin <span class="sr-only">(current)</span></a>
         </li>
        	</sec:authorize>
        	
        	 <sec:authorize access="hasRole('ROLE_CAFE')">
      <li class="nav-item active">
        <a class="nav-link; btn btn-outline-info " href="/owner">Profile <span class="sr-only">(current)</span></a>
         </li>
        	</sec:authorize>
        	
        	
     
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-primary" href="/cafe">Show All Cafes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link; btn btn-outline-success" href="/meal">Show All Meals</a>
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
    
    
    
    
      	<div class="ml-auto">
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
        <a class="nav-link; btn btn-outline-info " href="/registration"><span class="glyphicons glyphicons-log-in"></span></span>Sign Up <span class="sr-only">(current)</span></a>
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
						      	<img class="d-block w-100 img-fluid" src="..." alt="First slide">
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
    
 				 <div class="container">
		 				 <div class="row ">
				 				 <div class="col-lg-12 ">
				 				 	<h1 style="font-weight:bold; font-family: cursive; color:#026c61; text-align:center">TOP</h1>
				 				 </div>
		 				 </div>
							<div class="row">
									  <div class="col-lg-2">
									   		 <input type="checkbox" name="option2" value="a2">PUB<Br>
									  </div>
									   <div class="col-lg-2">
									    		<input type="checkbox" name="option2" value="a2">SUSHY<Br>
									  </div>
									   <div class="col-lg-2">
									    <input type="checkbox" name="option2" value="a2">BAR<Br>
									  </div>
									   <div class="col-lg-2">
									    <input type="checkbox" name="option2" value="a2">CAFE<Br>
									  </div>
									   <div class="col-lg-2">
									    <input type="checkbox" name="option2" value="a2">RESTAURANT<Br>
									  </div>
									  <div class="col-lg-2">
									     <button type="button" class="btn btn-info">SEARCH</button>
									  </div>
									 
							  </div>
							</div>



					<div class="container mb-2 mt-2 ">
				<div class="row">
					<div class="col-lg-6 col-sm-12 ">
						<div class="card">
									<div class="card-header  border border-info ">
												<div style="width:500px; height:300px">
													<img src="http://www.sobaka.ru/images/image/00/62/26/27/_normal.jpg" class="img-fluid" alt="Responsive image"  style="height: 100%; width:100%">
												</div>
											<h4 class="text-center mt-3" style="font-weight:bold; font-family: cursive; color:#069f95">CAFE NAME</h4>
									</div>
										<div class="card-body border border-info" id="card-p">
											<div class="row">
												<div class="col-lg-4 col-sm-4"  id="mycardstylel">
													<p>Rate:</p>
												</div>
												<div class="col-lg-8 col-sm-8"  id="mycardstyler">
													<p>.................</p>
												</div>
											</div>
										</div>
										<div class="card-body border border-info" id="card-p">
											<div class="row">
												<div class="col-lg-4 col-sm-4"  id="mycardstylel">
													<p>Address:</p>
												</div>
												<div class="col-lg-8 col-sm-8"  id="mycardstyler">
													<p>.................</p>
												</div>
											</div>
										</div>
										<div class="card-body border border-info" id="card-p">
											<div class="row">
												<div class="col-lg-4 col-sm-4"  id="mycardstylel">
													<p>Type:</p>
												</div>
												<div class="col-lg-8 col-sm-8" id="mycardstyler">
													<p>.....nie wiem czy 'type' ma tutaj  być</p>
												</div>
											</div>
										</div>
										<div class="card-body border border-info" id="card-p">
											<div class="row" style="width:538px; height:130px">
												<div class="col-lg-4 col-sm-4"  id="mycardstylel">
													<p>Short description:</p>
												</div>
												<div class="col-lg-8 col-sm-8"  id="mycardstyler">
													<p>.........bla-bla</p>
												</div>
											</div>
										</div>
						</div>
					</div>
				<div class="col-lg-6 col-sm-12 ">
						<div class="card">
									<div class="card-header  border border-info ">
										<div style="width:500px; height:300px">
											<img src="http://www.sobaka.ru/images/image/00/62/26/27/_normal.jpg" class="img-fluid" alt="Responsive image"  style="height: 100%; width:100%">
										</div>
									<h4 class="text-center mt-3" style="font-weight:bold; font-family: cursive; color:#069f95">CAFE NAME</h4>
									</div>
								<div class="card-body border border-info" id="card-p">
									<div class="row">
										<div class="col-lg-4 col-sm-4"  id="mycardstylel">
											<p>Rate:</p>
										</div>
										<div class="col-lg-8 col-sm-8"  id="mycardstyler">
											<p>.................</p>
										</div>
									</div>
								</div>
								<div class="card-body border border-info" id="card-p">
									<div class="row">
										<div class="col-lg-4 col-sm-4"  id="mycardstylel">
											<p>Address:</p>
										</div>
										<div class="col-lg-8 col-sm-8"  id="mycardstyler">
											<p>.................</p>
										</div>
									</div>
								</div>
								<div class="card-body border border-info" id="card-p">
									<div class="row">
										<div class="col-lg-4 col-sm-4"  id="mycardstylel">
											<p>Type:</p>
										</div>
										<div class="col-lg-8 col-sm-8" id="mycardstyler">
											<p>.....nie wiem czy 'type' ma tutaj  być</p>
										</div>
									</div>
								</div>
								<div class="card-body border border-info" id="card-p">
									<div class="row" style="width:538px; height:130px">
										<div class="col-lg-4 col-sm-4"  id="mycardstylel">
											<p>Short description:</p>
										</div>
										<div class="col-lg-8 col-sm-8"  id="mycardstyler">
											<p>.........bla-bla</p>
										</div>
									</div>
								</div>
						</div>
					</div>
				</div>
		</div>
		
		<div class="container mb-2 mt-2 ">
			<div class="row">
				<div class="col-lg-6 col-sm-12 ">
					<div class="card">
								<div class="card-header  border border-info ">
											<div style="width:500px; height:300px">
												<img src="http://www.sobaka.ru/images/image/00/62/26/27/_normal.jpg" class="img-fluid" alt="Responsive image"  style="height: 100%; width:100%">
											</div>
										<h4 class="text-center mt-3" style="font-weight:bold; font-family: cursive; color:#069f95">CAFE NAME</h4>
								</div>
									<div class="card-body border border-info" id="card-p">
										<div class="row">
											<div class="col-lg-4 col-sm-4"  id="mycardstylel">
												<p>Rate:</p>
											</div>
											<div class="col-lg-8 col-sm-8"  id="mycardstyler">
												<p>.................</p>
											</div>
										</div>
									</div>
									<div class="card-body border border-info" id="card-p">
										<div class="row">
											<div class="col-lg-4 col-sm-4"  id="mycardstylel">
												<p>Address:</p>
											</div>
											<div class="col-lg-8 col-sm-8"  id="mycardstyler">
												<p>.................</p>
											</div>
										</div>
									</div>
									<div class="card-body border border-info" id="card-p">
										<div class="row">
											<div class="col-lg-4 col-sm-4"  id="mycardstylel">
												<p>Type:</p>
											</div>
											<div class="col-lg-8 col-sm-8" id="mycardstyler">
												<p>.....nie wiem czy 'type' ma tutaj  być</p>
											</div>
										</div>
									</div>
									<div class="card-body border border-info" id="card-p">
										<div class="row" style="width:538px; height:130px">
											<div class="col-lg-4 col-sm-4"  id="mycardstylel">
												<p>Short description:</p>
											</div>
											<div class="col-lg-8 col-sm-8"  id="mycardstyler">
												<p>.........bla-bla</p>
											</div>
										</div>
									</div>
					</div>
				</div>
			<div class="col-lg-6 col-sm-12 ">
					<div class="card">
								<div class="card-header  border border-info ">
									<div style="width:500px; height:300px">
										<img src="http://www.sobaka.ru/images/image/00/62/26/27/_normal.jpg" class="img-fluid" alt="Responsive image"  style="height: 100%; width:100%">
									</div>
								<h4 class="text-center mt-3" style="font-weight:bold; font-family: cursive; color:#069f95">CAFE NAME</h4>
								</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Rate:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.................</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Address:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.................</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Type:</p>
									</div>
									<div class="col-lg-8 col-sm-8" id="mycardstyler">
										<p>.....nie wiem czy 'type' ma tutaj  być</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row" style="width:538px; height:130px">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Short description:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.........bla-bla</p>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>

					<div class="container mb-2 mt-2 ">
			<div class="row justify-content-center">
				
			<div class="col-lg-6 col-sm-12">
					<div class="card">
								<div class="card-header  border border-info ">
									<div style="width:500px; height:300px">
										<img src="http://www.sobaka.ru/images/image/00/62/26/27/_normal.jpg" class="img-fluid" alt="Responsive image"  style="height: 100%; width:100%">
									</div>
								<h4 class="text-center mt-3" style="font-weight:bold; font-family: cursive; color:#069f95">CAFE NAME</h4>
								</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Rate:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.................</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Address:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.................</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Type:</p>
									</div>
									<div class="col-lg-8 col-sm-8" id="mycardstyler">
										<p>.....nie wiem czy 'type' ma tutaj  być</p>
									</div>
								</div>
							</div>
							<div class="card-body border border-info" id="card-p">
								<div class="row" style="width:538px; height:130px">
									<div class="col-lg-4 col-sm-4"  id="mycardstylel">
										<p>Short description:</p>
									</div>
									<div class="col-lg-8 col-sm-8"  id="mycardstyler">
										<p>.........bla-bla</p>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>



</body>
</html>