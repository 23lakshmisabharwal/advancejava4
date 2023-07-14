<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.nagarro.springassignment.models.Tshirts"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T-Shirt Search Results</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
body {
	background-color: #C7E8CA;
	font-family: Arial, sans-serif;
}

.fixed-header {
	background-color: #FFFFFF;
	box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	padding: 10px 0;
}

.container {
	margin-top: 20px;
}

.table th, .table td {
	text-align: center;
}

.table th {
	background-color: #F5F5F5;
	color: #000;
	font-weight: bold;
}

.table tbody tr:nth-child(even) {
	background-color: #F5F5F5;
}

.table-hover tbody tr:hover {
	background-color: #EFEFEF;
	cursor: pointer;
}

.row {
	-bs-gutter-x: 1.5rem;
	-bs-gutter-y: 0;
	display: flex;
	flex-wrap: wrap;
	margin-top: calc(-1 * var(- -bs-gutter-y));
	margin-right: calc(-.5 * var(- -bs-gutter-x));
	margin-left: calc(-.5 * var(- -bs-gutter-x));
	-bs-gutter-x: 1.5rem;
}

.header-logo {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
}

.logo-img {
	max-height: 50px;
	margin-right: 10px;
}
</style>
</head>
<body>

	<div class="fixed-header container-fluid">
		<div class="row align-items-center">
			<div class="col-md-6">
				<h2 class="header-title">Welcome, ${username}!</h2>
			</div>
			<div class="col-md-6 text-end">
				<form action="Logout" method="post">
					<input type="submit" class="btn btn-outline-secondary"
						value="Logout">
				</form>
			</div>

		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="header-logo">
					<a href="WelcomePage.jsp" style="text-decoration: none;"> <img
						src="https://icagilestore.blob.core.windows.net/production-useruploadedfiles/logo_company_156.png"
						alt="logo" class="logo-img">
					</a>
				</h1>
			</div>
		</div>
	</div>
	<div class="container">
		<c:if test="${result.size() != 0}">
			<header>
				<div class="row">
					<div class="col-md-12 text-center">
						<h2>${result.size()}MatchingT-ShirtsFound!</h2>
					</div>
				</div>
			</header>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Colour</th>
								<th>Gender</th>
								<th>Size</th>
								<th>Price</th>
								<th>Rating</th>
								<th>Availability</th>
							</tr>
						</thead>
						<tbody>

							<!--display data from database -->
							<c:forEach items="${result}" var="Tshirt">
								<tr>


									<td>${Tshirt.getID()}</td>
									<td>${Tshirt.getName()}</td>
									<td>${Tshirt.getColour()}</td>
									<td>${Tshirt.getGender()}</td>
									<td>${Tshirt.getSize()}</td>
									<td>${Tshirt.getPrice()}</td>
									<td>${Tshirt.getRating()}</td>
									<td>${Tshirt.getAvailability()}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
		</c:if>
		<c:if test="${result.size() == 0}">
			<header>
				<div>
					<table width="100%">
						<tr>
							<td>
								<h2>Sorry! No matching T-shirts found!</h2>
							</td>

						</tr>
					</table>
				</div>
			</header>
		</c:if>
		<br>
		<div id="title" style="text-align: center;">
			<h1 style="background-color: lightyellow;">
				<a href="WelcomePage.jsp"> SEARCH MORE TSHIRTS!! </a>
			</h1>
		</div>
</body>
</html>