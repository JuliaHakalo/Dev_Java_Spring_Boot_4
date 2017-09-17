<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="custom" uri="/WEB-INF/tags/implicit.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<title>CafeView</title>
</head>
<body>
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