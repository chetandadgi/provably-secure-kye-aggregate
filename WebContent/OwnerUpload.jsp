<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
.loginBox {
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 350px;
	height: 380px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0, 0, 0, .5);
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

<title>Cloud Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style>
h2 {
	margin: 0;
	padding: 0 0 20px;
	color: white;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

body {
	margin: 0;
	padding: 0;
	background: url(img\\banner-bg.png);
	background-size: cover;
	font-family: sans-serif;
}
</style>
</head>
<body>
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo"></div>

				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li><a href="ohome.jsp"><span>Data Owner Home</span></a></li>
						<li class="active"><a href="#"><span>Upload</span></a></li>
						<li><a href="OFileDetails.jsp"><span>File Details</span></a></li>

						<li><a href="index.jsp"><span>Logout</span></a></li>

					</ul>
				</div>
				<div class="clr"></div>


			</div>
		</div>


		<div class="loginBox">

			<form method="post" action="fileupload" enctype="multipart/form-data">



				<table>
					<b><h2>File Upload Here</h2> <b> <br>
							<p>File Attribute:</p> <input type="text" name="file_name"
							placeholder="Enter File Nname">

							<div class="form-group">
								<label for="upload">Select Profile:</label> <input type="file"
									class="form-control" name="upload" id="Profile" value="upload"
									required>

								<button type="submit" class="btn btn-primary">Upload</button>
							</div>
				</table>



			</form>
		</div>


		<div class="mainbar">
			<div class="article">



				<div class="clr"></div>



			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br>

		</div>

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br>
		<footer class="container-fluid text-center">
			<p>Footer Text</p>
		</footer>
</body>
</html>