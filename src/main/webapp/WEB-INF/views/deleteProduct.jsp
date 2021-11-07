<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
		<a class="navbar-brand text-white" href="#">Medicare Admin</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link text-white"
					href="AdminNav">Home </a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="adminProducts">View Products </a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="showAddProducts">Add Product </a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="showEditProduct">Update Product </a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="showDeleteForm">Delete Product </a></li>
			</ul>
		</div>
		<a class="nav-link text-white" href="logout" align="right" style="color:blue;">Logout
							</a>
		<form action="category" class="form-inline my-2 my-lg-0 align-right">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" name="category">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>

	<div class="container">
		<form action="deleteMedicine">
			<div class="form-group">
				<label for="exampleInputEmail1">Medicine Id</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter product name"
					name="medid">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>