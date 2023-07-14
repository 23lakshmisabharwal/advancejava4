
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Forget Password</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />
<style>
.marg {
	margin-left: 5%;
}

.background {
	background-color: #bcd4e6;
}

.color {
	color: #00308f;
}

.space {
	margin-left: 22%;
}

.formBackground {
	background-color: #c6e6fb;
}

.height {
	height: 80%;
}

.wid {
	width: 10%;
	margin-left: 85%;
}

.required-field::before {
	content: "*";
	color: red;
	margin-left: 200px;
}

@media only screen and (max-width: 500px) {
	.wid {
		width: 45%;
		margin-left: 50%;
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

.background button {
	background-color: #87cefa;
	color: #fff;
	font-weight: bold;
	border: none;
	border-radius: 20px;
	padding: 2px 2px;
	transition: all 0.3s ease-in-out;
}

.background button:hover {
	background-color: #add8e6;
}
</style>
</head>
<body>
	<%-- Disable caching --%>
	
	<form action="Forget" method="post" onsubmit="return validateForm();">
		<div class="fw-bolder fs-2 background color">
			<p class="mx-3">Generate New Password</p>
			<hr />
		</div>
		<div>
			<div class="d-flex mb-4">
				<p class="ms-4 fw-bolder fs-md-5">Username</p>
				<p class="required-field marg">
					<input type="text" name="uname" class="margins height" />
				</p>
			</div>
			<div class="d-flex mb-4">
				<p class="ms-4 fw-bolder fs-md-5 height">Enter new Password</p>
				<p class="required-field">
					<input type="password" name="pass" class="margins height" />
				</p>
			</div>
			<div class="d-flex mb-4">
				<p class="ms-4 fw-bolder fs-md-5 height">Re-write Password</p>
				<p class="required-field">
					<input type="password" name="pass-re" class="margins height" />
				</p>
			</div>
		</div>
		<div class="background">
			<hr />
			<button type="submit" class="wid border border-dark rounded">
				Update New Password &gt;&gt;</button>
			<hr />
		</div>
	</form>

	<div id="error-message" style="display: none;">
		<p style="color: red;"></p>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<script>
		function validateForm() {
			const passInput = document.getElementsByName("pass")[0];
			const passReInput = document.getElementsByName("pass-re")[0];
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
</body>



</html>