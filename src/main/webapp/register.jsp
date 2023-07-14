<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<style>
.background {
	background-color: #BCD4E6;
	padding-bottom: 20px;
}

.color {
	color: #00308F;
}

.space {
	margin-left: 22%;
}

.formBackground {
	background-color: #F1F1F1;
	width: 100%;
	padding: 2px;
}

.formBackground input {
	height: 40px;
}

.height {
	height: 80%;
}

.wid {
	width: 10%;
	margin-left: 85%;
}

#error-message {
	color: red;
}

.required-field::before {
	content: "*";
	color: red;
	margin-left: 200px;
}

@media only screen and (max-width: 500px) {
	.wid {
		width: 35%;
		margin-left: 60%;
	}
	.required-field::before {
		content: "*";
		color: red;
		margin-left: 20px;
	}
}

@media only screen and (max-width: 338px) {
	.margins {
		width: 60%;
	}
}
</style>
</head>
<body>
	
	<form action="Register" method="post" onsubmit="return validateForm()">
		<div class="fw-bolder fs-2 background color ">
			<p class="mx-3">Register User</p>
			<hr />
		</div>
		<div class="formBackground">
			<div class="d-flex mb-4 justify-content-center">
				<div class="col-md-4">
					<label class="form-label fw-bolder fs-lg-5" for="username">Username</label>
					<input type="text" name="uname" class="form-control height"
						id="username" required>
				</div>
			</div>
			<div class="d-flex mb-4 justify-content-center">
				<div class="col-md-4">
					<label class="form-label fw-bolder fs-lg-5" for="password">New
						Password</label> <input type="password" name="pass"
						class="form-control height" id="password" required>
				</div>
			</div>
			<div class="d-flex mb-4 justify-content-center">
				<div class="col-md-4">
					<label class="form-label fw-bolder fs-lg-5" for="confirm-password">Re-write
						Password</label> <input type="password" name="pass-2"
						class="form-control height" id="confirm-password" required>
				</div>
			</div>
			<div id="error-message" style="display: none; color: red;">
				<p></p>
			</div>
		</div>
		<div>
			<a href="LoginPage.jsp" class="space"> Already a user? </a>
		</div>
		<div class="background ">
			<hr />
			<button type="submit"
				class="wid border border-dark fw-bold border-2 rounded">Register
				&#x27BE;</button>
		</div>
	</form>
	<script>
		function validateForm() {
			const passInput = document.getElementsByName("pass")[0];
			const passReInput = document.getElementsByName("pass-2")[0];
			const errorMessage = document.getElementById("error-message");
			const pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$/;
			if (!pattern.test(passInput.value)) {
				errorMessage.style.display = "block";
				errorMessage.querySelector("p").innerHTML = "New password should contain at least one numeric value and one special character.";
				return false;
			} else if (passInput.value !== passReInput.value) {
				errorMessage.style.display = "block";
				errorMessage.querySelector("p").innerHTML = "New password and re-written password don't match.";
				return false;
			} else {
				errorMessage.style.display = "none";
				return true;
			}
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>

</html>