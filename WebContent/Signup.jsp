<!DOCTYPE html>
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
<link rel="stylesheet" href="css/themify-icons.css" />
<link rel="stylesheet" href="css/main.css" />


<style>
a:hover {
	background-color: black;
}

body {
	margin: 0;
	padding: 0;
	background: url(img\\home-banner-bg.png);
	background-repeat: no-repeat;
	background-size: cover;
	font-family: sans-serif;
}

.loginBox {
	position: absolute;
	top: 10%;
	left: 55%;
	transform: translate(-50%, -50%);
	width: 600px;
	height: 726px;
	padding: 750px 22px;
	/* padding: 80px 40px;  */
	box-sizing: border-box;
	background: rgba(0, 0, 0, .5);
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
	height: 22px;
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

.loginBox a {
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-decoration: none;
}
</style>




</head>
<body>
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
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="olog.jsp">Data Owner</a></li>
						<li><a href="ulog.jsp">Data User</a></li>
						<li><a href="TPAlogin.jsp">TPA</a></li>
						<li><a href="CloudLogin.jsp">Cloud</a></li>
						<li><a href="Signup.jsp">Registration</a></li>


					</ul>
				</div>
			</div>
		</nav>

	</header>
	<div class="container">

		<!-- ================ End banner Area ================= -->
		<div class="loginBox">

			<form action="oreg1.jsp">
				<br> <br> <br> <br>

				<h2>Registration Form</h2>


				<p>Name:</p>
				<input type="text" name="name">

				<p>Email Id:</p>
				<input type="text" name="email">

				<p>Password:</p>
				<input type="password" name="password">

				<p>Mobile No:</p>
				<input type="text" name="mobile">

				<p>Date of Birth:</p>
				<input type="text" name="dob">

				<p>Gender:</p>
				<input type="text" name="gender">


				<p>State</p>
				<input type="text" name="state">

				<p>Country</p>
				<input type="text" name="country">

				<p>Role</p>
				<select name="role">
					<option value="Owner">Data Owner</option>
					<option value="User">Data User</option>
				</select> <input type="submit" value="Sign Up">

				<div>
					<a href="Login.jsp" onclick="login">Login</a>
				</div>



			</form>

		</div>
	</div>
</body>
</html>