<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<title>OpenClose</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="/admin/openclose" method="POST">
					<div class="form-group row">
						<label class="col-2 col-form-label" for="time">Time:</label>
						<div class="col-10">
							<input class="form-control" id="time" name="time">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-10 mr-left">
							<button class="btn btn-sm btn-outline-success">Save</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<tr>
						<th class="text-center">Time:</th>
						<th class="text-center">Options:</th>
					</tr>
				
					<c:forEach var="openclose" items="${opencloses}">
						<tr>
							<td>${openclose.name}</td>
							<td class="text-center">
								<a href="/admin/openclose/update/${openclose.id}" class="btn btn-outline-warning btn-sm">Update</a>
								<a href="/admin/openclose/delete/${openclose.id}" class="btn btn-outline-danger btn-sm">Delete</a>
							</td>
						</tr>
							</c:forEach>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>