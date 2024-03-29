<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


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

<style>
body {
	background-image: url(images/profile.jpg);
	font-family: Arial;
	font-size: 17px;
	padding: 8px;
}

* {
	box-sizing: border-box;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	margin: 0 -16px;
}

.col-25 {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
}

.col-50 {
	-ms-flex: 50%; /* IE10 */
	flex: 50%;
}

.col-75 {
	-ms-flex: 75%; /* IE10 */
	flex: 75%;
}

.col-25, .col-50, .col-75 {
	padding: 0 16px;
}

.container {
	color: white;
	font-weight: bold;
	background-color: black;
	opacity: 0.8; padding : 5px 20px 15px 20px;
	border: 1px solid lightgrey;
	border-radius: 3px;
	padding: 5px 20px 15px 20px;
}

input[type=text] {
	width: 100%;
	margin-bottom: 20px;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

label {
	margin-bottom: 10px;
	display: block;
}

.icon-container {
	margin-bottom: 20px;
	padding: 7px 0;
	font-size: 24px;
}

.btn {
	background-color: #04AA6D;
	color: white;
	padding: 12px;
	margin: 10px 0;
	border: none;
	width: 100%;
	border-radius: 3px;
	cursor: pointer;
	font-size: 17px;
}

.btn:hover {
	background-color: #45a049;
}

a {
	color: #2196F3;
}

hr {
	border: 1px solid lightgrey;
}

span.price {
	float: right;
	color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
	.row {
		flex-direction: column-reverse;
	}
	.col-25 {
		margin-bottom: 20px;
	}
}

.hd {
	color: white;
	align: center;
}

th {
	font-weight: bold;
	align: center;
}

.divheadings {
	background-color: black;
}
</style>
</head>
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
				<li class="nav-item"><a class="nav-link text-white"
					href="showProfile">View Profile</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="editUser">Edit Profile</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="checkOut">Check Out</a></li>
			</ul>
		</div>
		<a class="nav-link text-white" href="logout" align="right"
			style="color: blue;">Logout </a>
	</nav>
	<div class="divheadings">
		<h2 class="hd" align="center">Checkout Form</h2>
		<h3 class="hd" align="center">Thank you for shopping with us
			hoping to see you soon</h3>
	</div>
	<div class="row">

		<div class="col-25">
			<div class="container">

				<h4>
					Complete Order <span class="price" style="color: black"><i
						class="fa fa-shopping-cart"></i></span>
				</h4>

				<table class="table table-borderless   table-dark">
					<thead>
						<tr>
							<th scope="col">Medicine Name</th>
							<th scope="col">Medicce Category</th>
							<th scope="col">Medicine Description</th>
							<th scope="col">Medicine Price</th>

						</tr>
					</thead>
					<hr>
					<tbody>

						<c:forEach var="prod" items="${prodlist}">
							<tr>
								<td>${prod.name}</td>
								<td>${prod.category}</td>
								<td>${prod.description}</td>
								<td>${prod.price }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<c:forEach var="tot" items="${total}">
					<p>
						Total <span class="price" style="color: white"><b>${tot}</b></span>
					</p>
				</c:forEach>
			</div>
		</div>

		<div class="col-75">
			<div class="container">
				<form action="OrderSuccess">
					<input type="hidden" value="${user.userid}" name="userid">
					<div class="row">
						<div class="col-50">
							<h3>Billing Address</h3>
							<label for="fname"><i class="fa fa-user"></i> Full Name</label> <input
								type="text" id="fname" name="firstname"
								placeholder="John M. Doe"> <label for="email"><i
								class="fa fa-envelope"></i> Email</label> <input type="text" id="email"
								name="email" placeholder="john@example.com"> <label
								for="adr"><i class="fa fa-address-card-o"></i> Address</label> <input
								type="text" id="adr" name="address"
								placeholder="542 W. 15th Street"> <label for="city"><i
								class="fa fa-institution"></i> City</label> <input type="text" id="city"
								name="city" placeholder="New York">

							<div class="row">
								<div class="col-50">
									<label for="state">State</label> <input type="text" id="state"
										name="state" placeholder="NY">
								</div>
								<div class="col-50">
									<label for="zip">Zip</label> <input type="text" id="zip"
										name="zip" placeholder="10001">
								</div>
							</div>
						</div>

						<div class="col-50">
							<h3>Payment</h3>
							<label for="fname">Accepted Cards</label>
							<div class="icon-container">
								<i class="fa fa-cc-visa" style="color: navy;"></i> <i
									class="fa fa-cc-amex" style="color: blue;"></i> <i
									class="fa fa-cc-mastercard" style="color: red;"></i> <i
									class="fa fa-cc-discover" style="color: orange;"></i>
							</div>
							<label for="cname">Name on Card</label> <input type="text"
								id="cname" name="cardname" placeholder="John More Doe">
							<label for="ccnum">Credit card number</label> <input type="text"
								id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
							<label for="expmonth">Exp Month</label> <input type="text"
								id="expmonth" name="expmonth" placeholder="September">
							<div class="row">
								<div class="col-50">
									<label for="expyear">Exp Year</label> <input type="text"
										id="expyear" name="expyear" placeholder="2018">
								</div>
								<div class="col-50">
									<label for="cvv">CVV</label> <input type="text" id="cvv"
										name="cvv" placeholder="352">
								</div>
							</div>
						</div>

					</div>
					<label> <input type="checkbox" checked="checked"
						name="sameadr"> Shipping address same as billing
					</label> <input type="submit" value="ACCEPT ORDER" class="btn">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
