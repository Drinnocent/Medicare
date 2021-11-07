<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Medicare</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
body
{
background-image:url(images/typewriter.jpg);
opacity:1;
}
.container
{

color:red;
font-weight: bold;
background-color:black;
opacity:0.8;
border: 2px solid red;
border-radius: 50px 20px;

}
.container
{
    margin-top: 150px;
  
  
}

</style>
<body>
<div class="container">
  <h1>Please log in</h1>
  <form action="userLogin">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
<br>
    <button type="submit" class="btn btn-primary">Submit</button>
    <a href="showRegisterform">Please Register</a>
  </form>
</div>

</body>
</html>