<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Menu</title>
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
<style>
body {
	background-image: url(images/back.jpg);
	opacity: 1;
}

.img-fluid {
	width: 350px;
	height: 150px;
}

nav a {
	font-weight: bold;
}

nav {
	margin-bottom: 30px;
}

.col-4 {
	margin-bottom: 30px;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: black;
	color: white;
	text-align: center;
	opacity: 0.8;
}

.container-fluid {
	margin-bottom: 30px;
}
.user
{
	color:red;
	font-weight:italics;
	align:right;
	background-color:black;
	width:100%;
	opacity:0.8;
	
}
</style>
<body>
	<div class="container-fluid">
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
							<li class="nav-item"><a class="nav-link text-white" href="OrderbyCategory">OrderByCategory
							</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="checkOut">Check
							Out</a></li>
				</ul>
			</div>
			<a class="nav-link text-white" href="logout" align="right" style="color:blue;">Logout
							</a>
			<form  action="category" class="form-inline my-2 my-lg-0 align-right">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" name="category">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</nav>

<h3 class="user">username : ${email}</h3>
		<div class="row">
			<c:forEach var="prod" items="${prodlist}">
				<script>
window.addEventListener('load', () => {
    document.getElementById(${prod.medid}).src = `images/${prod.medid}.jpg`;
});</script>
				<div class="col-4">

					<div class="card" style="width: 18rem;">
						<img class="img-fluid" class="card-img-top" alt=""
							id="${prod.medid}">

						<div class="card-body">
							<h5 class="card-title">${prod.name}</h5>
							<b><h6>${prod.price}</h6></b>
							<h6>${prod.category}</h6>
							<form action="buyProduct">
								<input type="hidden" value="${prod.medid}" name="medid"> <input
									type="hidden" value="${user.userid}" name="userid">
								<button class="btn btn-primary btn-lg">Buy</button>
							</form>
						</div>
					</div>

				</div>
				<br>
				<br>
			</c:forEach>
		</div>
	</div>
</body>
<div class="footer">
	<p>More Info</p>
</div>
</html>