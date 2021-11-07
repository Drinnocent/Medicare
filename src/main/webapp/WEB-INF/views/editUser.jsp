<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User Registration Form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
body {
	background-image: url(images/notebook.jpg);
	opacity: 1
}

.container {
	
	color: blue;
	font-weight: bold;
	opacity: 0.9;
}
</style>
<body>

	<div class="container">
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
		<h1>Update Profile</h1>
		<form action="updateUser">
		<input type="hidden" name="userid" value="${user.userid}">
			<div class="form-group">
				<label for="firstname">First Name</label> <input type="text"
					class="form-control" id="firstname" name="firstname"
					aria-describedby="emailHelp" value="${user.firstname}" readonly>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input type="text"
					class="form-control" id="lastName" name="lastName"
					aria-describedby="emailHelp"  value="${user.lastName}" readonly>
			</div>
			<div class="form-group">
				<label for="idnumber">ID Number</label> <input type="text"
					class="form-control" id="idnumber" name="idnumber"
					aria-describedby="idnumber"  value="${user.idnumber}" readonly>
			</div>
			<div class="form-group">
				<label for="age">Age</label> <input type="text"
					class="form-control" id="idnumber" name="age"
					aria-describedby="age"  value="${user.age}" readonly>
			</div>

			<div class="form-group">
				<label for="cellphoneno">Cellphone Number</label> <input type="text"
					class="form-control" id="cellphoneno" name="cellphoneno"
					aria-describedby="cellphoneno"  value="${user.cellphoneno}" >
			</div>

			<div class="form-group">
				<label for="email">Email address</label> <input type="email"
					class="form-control" id="email" name="email"
					aria-describedby="emailHelp"  value="${user.email}" >
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password" name="password"
					class="form-control" id="password"  value="${user.password}" >
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Gender</label> <input type="text"
					class="form-control" id="exampleInputPassword1"
					value="${user.gender}" name="gender" readonly>
			</div>
			
				<div class="form-group">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address"
					aria-describedby="address" value="${user.address}" >
			</div>
			
				<div class="form-group">
				<label for="city">City</label> <input type="text"
					class="form-control" id="city" name="city"
					aria-describedby="city" value="${user.city}" >
			</div>
				<div class="form-group">
				<label for="suburb">Suburb</label> <input type="text"
					class="form-control" id="city" name="suburb"
					aria-describedby="suburb" value="${user.suburb}" >
			</div>
				<div class="form-group">
				<label for="code">Code</label> <input type="text"
					class="form-control" id="city" name="code"
					aria-describedby="suburb" value="${user.code}" >
			</div>

			<button type="submit" class="btn btn-primary btn-lg">Submit</button>
		</form>
	</div>

</body>
</html>