<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profilee</title>


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
<style>
body {
	background-image: url(images/viewprofile.jpg);
	/**background-color:white;*/
	opacity: 1;
}

.container {
	color: white;
	font-weight:bold;
	background-color:black;
	opacity:0.8;
	
}

label {
	font-weight: bold;
}


.info:hover {
	background: #2196F3;
	color: white;
}

.info {
	color: dodgerblue;
}
</style>
<body>
<input type="hidden" value="${email}" name="email">
		<nav class="navbar navbar-expand-lg navbar-light bg-danger ">
			<a class="navbar-brand text-white" href="#">Medicare</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link text-white"
						href="homee">Home </a></li>
					<li class="nav-item"><a class="nav-link text-white" href="showProfile">View
							Profile</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="editUser">Edit
							Profile</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="checkOut">Check
							Out</a></li>
				</ul>
			</div>
			<a class="nav-link text-white" href="logout" align="right" style="color:blue;">Logout
							</a>
			<form class="form-inline my-2 my-lg-0 align-right">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</nav>	

	<div class="container">
	
		<h1 align="center">Client Profile</h1>
		<form>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" value="${user.email}" readonly>
				<small id="emailHelp" class="form-text text-muted">.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					value="${user.password}" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">firstName</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					value="${user.firstname}" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">lastName</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					value="${user.lastName}" readonly>
			</div>
			<div class="form-group">
				<label for="idNumber">Id number:</label> <input type="text"
					class="form-control" id="idNumber" value="${user.idnumber}"
					name="idNumber" readonly>
			</div>
			<div class="form-group">
				<label for="gender">Gender</label> <input type="text"
					class="form-control" id="exampleInputPassword1"
					value="${user.gender}" name="gender" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Cellphone No.</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					value="${user.cellphoneno}" readonly>
			</div>
				<div class="form-group">
				<label for="age">Age.</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					value="${user.age}" name="age" readonly>
			</div>
			<div class="form-group">
				<label for="address">Address</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					value="${user.address}" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">City</label> <input type="text"
					class="form-control" id="exampleInputPassword1" value="${user.city}"
					readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Suburb</label> <input type="text"
					class="form-control" id="exampleInputPassword1"
					value="${user.suburb}" readonly>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Code</label> <input type="text"
					class="form-control" id="exampleInputPassword1" value="${user.code}"
					readonly>
			</div>
		</form>
	</div>
</body>
</html>