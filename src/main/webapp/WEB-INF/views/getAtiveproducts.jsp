<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col-lg">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="row">ID</th>
							<th>Name</th>
							<th>Price</th>
							<th>Category</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="prod" items="${prodlist}">
							<tr>
								<td>${prod.medid}</td>
								<td>${prod.name}</td>
								<td>${prod.price}</td>
								<td>${prod.category}</td>
								<td>${prod.description}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>