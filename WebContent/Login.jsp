<html>

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Favicon -->
<link rel="shortcut icon" href="img/fav.png" />
<!-- Author Meta -->
<meta name="author" content="colorlib" />
<!-- Meta Description -->
<meta name="description" content="" />
<!-- Meta Keyword -->
<meta name="keywords" content="" />
<!-- meta character set -->
<meta charset="UTF-8" />
<!-- Site Title -->
<title>Data Sharing</title>

<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700"
	rel="stylesheet" />
<!--
      CSS
      =============================================
    -->
<link rel="stylesheet" href="css/linearicons.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />
<link rel="stylesheet" href="css/owl.carousel.css" />
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/hexagons.min.css" />
<link rel="stylesheet"
	href="css/themify-icons.css" />
<link rel="stylesheet" href="css/main.css" />

<style>
body {
	margin: 0;
	padding: 0;
	background: url(img\\home-banner-bg.png);
	background-size: cover;
	font-family: sans-serif;
}

.loginBox {
	position: absolute;
	top: 55%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 350px;
	height: 520px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0, 0, 0, .5);
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	overflow: hidden;
	position: absolute;
	top: calc(-100px/ 2);
	left: calc(50% - 50px);
}

h2 {
	margin: 0;
	padding: 0 0 20px;
	color: #efed40;
	text-align: center;
}

.loginBox p {
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
}

.loginBox input {
	width: 100%;
	margin-bottom: 20px;
}

.loginBox input[type="text"], .loginBox select[name="role"], .loginBox input[type="password"]
	{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

::placeholder {
	color: rgba(255, 255, 255, .5);
}

.loginBox input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
}

.loginBox input[type="submit"]:hover {
	background: #efed40;
	color: #262626;
}

.loginBox input[type="submit"] {
	color: #fff;
	text-decoration: none;
	border: none;
	outline: none;
	height: 40px;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 20px;
	width: 100%;
	margin-bottom: 20px;
}

.loginBox a:hover {
	background: #efed40;
	color: #262626;
}
</style>


</head>

<body>

	<!-- ================ Start Header Area ================= -->
	<header class="default-header">
		<nav class="navbar navbar-expand-lg  navbar-light">
			<div class="container">
				<a class="navbar-brand" href="index.html"> <img
					src="img/logo3.png" alt="" width="50" hieght="50" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="lnr lnr-menu"></span>
				</button>

				<div
					class="collapse navbar-collapse justify-content-end align-items-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a href="index.html">Home</a></li>
						<li><a href="index.html">Data Owner</a></li>
						<li><a href="index.html">Data User</a></li>
						<li><a href="about.html">TPA</a></li>
						<li><a href="courses.html">Cloud</a></li>
						<li><a href="Signup.jsp">Registration</a></li>

					</ul>
				</div>
			</div>
		</nav>

	</header>

	<div class="loginBox">

		<img src="img\\avatar3.png" class="avatar" height="10px" width="10px">
		<h2>Log In Here</h2>

		<form action="LoginCheck.jsp" method="get"
			enctype="multipart/form-data">
			<!-- <form name="Form" action="" onsubmit="return validateForm()"> -->

			<p>Name:</p>
			<input type="text" name="name" placeholder="Enter Username">
			<p>Password:</p>
			<input type="password" name="password" id="myInput"
				placeholder="Enter Password">
			<p>Role</p>
			<select name="role">
				<option value="Owner">Data Owner</option>
				<option value="User">Data User</option>
			</select> <input type="checkbox" onclick="myFunction()">
			<p>Show Password:</p>

			<script>
				function validateForm() {
					var x = document.forms["Form"]["password"].value;
					alert("Validate " + x);
					if (x == null || x == "") {
						// fill out the placeholder with a message
						alert("Validate " + x);
						document.getElementById("errorMsg").innerHTML = "*Name must be filled out";
						return false;

					}
				}
			</script>


			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>

			<br> <span id="errorMsg" style="color: red"></span> <br> <input
				type="submit" value="Login">
			<div>
				<a href="Signup.jsp" onclick="Signup">Sign Up</a>
			</div>
		</form>

	</div>

</body>
</html>