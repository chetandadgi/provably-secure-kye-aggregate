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
<link rel="stylesheet"
	href="css/themify-icons.css" />
<link rel="stylesheet" href="css/main.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet"
	href="css/font-awesome.min.css">
<style>
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
	top: 55%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 350px;
	height: 520px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0, 0, 0, .5);
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.icon {
	padding: 10px;
	background: dodgerblue;
	color: white;
	min-width: 50px;
	text-align: center;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
	background-color: dodgerblue;
	color: white;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.btn:hover {
	opacity: 1;
}

h2 {
	margin: 0;
	padding: 0 0 20px;
	color: white;
	text-align: center;
}

a:hover {
	background-color: black;
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
	<form action="Cloudlogincheck.jsp"
		style="max-width: 500px; margin: auto">

		<br> <br> <br> <br>
		<h2>Cloud Login Here</h2>
		<div class="input-container">
			<i class="fa fa-user icon"></i> <input class="input-field"
				type="text" placeholder="Username" name="username">
		</div>

		<div class="input-container">
			<i class="fa fa-key icon"></i> <input class="input-field"
				type="password" placeholder="Password" name="password">
		</div>

		<button type="submit" class="btn">Login</button>
	</form>

</body>
</html>
