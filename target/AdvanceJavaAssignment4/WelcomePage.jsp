<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/login.css"> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Fixed header styles */
.fixed-header {
	background-color: white;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
	position: sticky;
	top: 0;
	z-index: 10;
}

/* Title styles */
#title {
	color: white;
	font-size: 1.5rem;
	font-weight: bold;
	margin-right: 2rem;
	text-align: right;
}

h1 {
	color: white;
	font-size: 2.5rem;
	font-weight: bold;
}

/* Main content styles */
.main-content {
	background-color: white;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
	margin-top: 4rem;
	padding: 2rem;
	margin-left: 18rem;
	margin-right: 18rem;
}

.form-control {
	display: block;
	width: 40%;
	height: calc(1.5em + 0.75rem + 2px);
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="fixed-header">
			<div id="logout"
				style="background-color: #05BFDB; color: #333; display: flex; align-items: center; justify-content: center; padding: 20px;">
				<div style="display: flex; align-items: center;">
					<img
						src="https://www.allgeier.com/en/wp-content/uploads/sites/2/2020/10/Nagarro-Logo_Vertical-276x120.png"
						alt="Logo" style="width: 60px; height: 40px; margin-right: 10px;">
					<h1 style="font-size: 24px; font-weight: bold; margin: 0;">Welcome,
						${username}!</h1>
				</div>
			</div>

			<div id="top-bar"
				style="background-color: #088395; color: #fff; display: flex; justify-content: space-between; align-items: center; padding: 10px;">
				<div>
					<h1 style="font-size: 28px; font-weight: bold; margin: 0;">Search
						Tshirt</h1>
				</div>
				<div style="display: flex; align-items: center; margin-left: auto;">
					<form action="Logout" method="post">
						<button type="submit" class="btn btn-outline-danger"
							style="border-radius: 20px; font-size: 16px; padding: 8px 20px;">Logout</button>
					</form>
					<a href="#"
						style="color: #fff; font-size: 16px; margin-left: 20px; text-decoration: none;">My
						Account</a> <a href="#"
						style="color: #fff; font-size: 16px; margin-left: 20px; text-decoration: none;">Cart</a>
				</div>
			</div>
		</div>
		<div class="row mx-auto">
			<div class="col-sm-12 col-md-8 offset-md-2 mt-4">
				<form action="Search" method="post">
					<div class="form-group row">
						<label for="Colour" class="col-sm-2 col-form-label">Colour</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Colour" name="colour">
						</div>
					</div>
					<div class="form-group row">
						<legend class="col-form-label col-sm-2 pt-0">Size</legend>
						<div class="col-sm-10">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="size" id="S"
									value="S" checked> <label class="form-check-label"
									for="S">S</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="size" id="M"
									value="M"> <label class="form-check-label" for="M">M</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="size" id="L"
									value="L"> <label class="form-check-label" for="L">L</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="size" id="XL"
									value="XL"> <label class="form-check-label" for="XL">XL</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="size"
									id="XXL" value="XXL"> <label class="form-check-label"
									for="XXL">XXL</label>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<legend class="col-form-label col-sm-2 pt-0">Gender</legend>
						<div class="col-sm-10">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="MaleGender" value="M" checked> <label
									class="form-check-label" for="MaleGender">MALE</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="FemaleGender" value="F"> <label
									class="form-check-label" for="FemaleGender">FEMALE</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="UnisexGender" value="U"> <label
									class="form-check-label" for="UnisexGender">UNISEX</label>
							</div>
						</div>
					</div>
					<fieldset class="row mb-3">
						<legend class="col-form-label col-sm-2 pt-0">Output
							Preference</legend>
						<div class="col-sm-10">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="outputPreference" id="1" value="1" checked> <label
									class="form-check-label" for="gridRadios1">Price</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="outputPreference" id="2" value="2"> <label
									class="form-check-label" for="gridRadios2">Rating</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="outputPreference" id="3" value="3"> <label
									class="form-check-label" for="gridRadios2">Price &
									Rating </label>
							</div>
						</div>
					</fieldset>
					<div class="col-12">
						<button type="submit"
							class="btn btn-success rounded-pill px-4 py-2"
							style="background-color: #F0A500; border-color: #F0A500; font-weight: bold; font-size: 18px;">
							SEARCH</button>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>