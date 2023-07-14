<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #F4F4F4;
	font-family: Arial, Helvetica, sans-serif;
}

.card {
	border-radius: 20px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.3);
	max-width: 500px;
	margin: 50px auto;
	padding: 30px;
}

h3 {
	margin-top: 50px;
	text-align: center;
	color: #333333;
	font-weight: bold;
}

.form-group label {
	color: #333333;
	font-size: 16px;
	font-weight: bold;
}

.form-control {
	border-radius: 5px;
	border: none;
	padding: 10px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
	font-size: 16px;
	color: #333333;
}

.btn {
	background-color: #28A745;
	color: #FFFFFF;
	border: none;
	border-radius: 5px;
	padding: 10px;
	font-size: 16px;
	font-weight: bold;
	width: 100%;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center align-items-center">
			<div class="col-md-6">
				<div class="card">
					<div
						style="display: flex; align-items: center; margin-bottom: 20px;">
						<img
							src="https://www.allgeier.com/en/wp-content/uploads/sites/2/2020/10/Nagarro-Logo_Vertical-276x120.png"
							alt="Logo" style="width: 80px; height: 40px; margin-right: 10px;">
						<h3
							style="font-size: 28px; font-weight: bold; color: #333; margin: 0;">Login</h3>
					</div>

					<form action="login" method="post">
						<div class="form-group">
							<label for="username">Username:</label> <input type="text"
								name="uname" id="uname" class="form-control">
						</div>
						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								name="pass" id="pass" class="form-control">
						</div>
						<div class="form-group">
							<input type="submit" class="btn" value="Login">
						</div>
					</form>
					<p>
						Don't have an account? <a href="register.jsp">Register</a>
					</p>
					<p>
						<a href="ForgotPassword.jsp">Forgot Password?</a>
					</p>

				</div>
			</div>
		</div>
	</div>
</body>
</html>