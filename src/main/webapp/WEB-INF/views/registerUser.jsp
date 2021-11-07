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
		<h1>Registration form</h1>
		<form action="registerUser">
			<div class="form-group">
				<label for="firstname">First Name</label> <input type="text"
					class="form-control" id="firstname" name="firstname"
					aria-describedby="emailHelp" placeholder="Enter firstname">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name</label> <input type="text"
					class="form-control" id="lastName" name="lastName"
					aria-describedby="emailHelp" placeholder="Enter lastName">
			</div>
			<div class="form-group">
				<label for="idnumber">ID Number</label> <input type="text"
					class="form-control" id="idnumber" name="idnumber"
					aria-describedby="idnumber" placeholder="Enter idnumber">
			</div>
			<div class="form-group">
				<label for="age">Age</label> <input type="text"
					class="form-control" id="idnumber" name="age"
					aria-describedby="age" placeholder="Enter age">
			</div>

			<div class="form-group">
				<label for="cellphoneno">Cellphone Number</label> <input type="text"
					class="form-control" id="cellphoneno" name="cellphoneno"
					aria-describedby="cellphoneno" placeholder="Enter cellphoneno">
			</div>

			<div class="form-group">
				<label for="email">Email address</label> <input type="email"
					class="form-control" id="email" name="email"
					aria-describedby="emailHelp" placeholder="Enter email">
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password" name="password"
					class="form-control" id="password" placeholder="Password">
			</div>

			<label for="gender"> Select you gender</label> <select name="gender">
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="other">other</option>
			</select>
			
				<div class="form-group">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address"
					aria-describedby="address" placeholder="Enter address">
			</div>
			
				<div class="form-group">
				<label for="city">City</label> <input type="text"
					class="form-control" id="city" name="city"
					aria-describedby="city" placeholder="Enter city">
			</div>
				<div class="form-group">
				<label for="suburb">Suburb</label> <input type="text"
					class="form-control" id="city" name="suburb"
					aria-describedby="suburb" placeholder="Enter suburb">
			</div>
				<div class="form-group">
				<label for="code">Code</label> <input type="text"
					class="form-control" id="city" name="code"
					aria-describedby="suburb" placeholder="Enter code">
			</div>

			<button type="submit" class="btn btn-primary btn-lg">Submit</button>
		</form>
	</div>

</body>
</html>