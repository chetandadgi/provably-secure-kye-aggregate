
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Owner Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<%
	if (request.getParameter("msg") != null) {
%>
<script>
	alert('Login Successfully');
</script>
<%
	}
%>
<style>
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
				<div class="logo">
					<!--   <h1>Provably Secure Key-Aggregate Cryptosystems with Broadcast Aggregate Keys for Online Data Sharing</h1> -->
				</div>

				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li class="active"><a href="ohome.jsp"><span>Data
									Owner Home</span></a></li>
						<li><a href="OwnerUpload.jsp"><span>Upload</span></a></li>
						<li><a href="OFileDetails.jsp"><span>File Details</span></a></li>

						<li><a href="olog.jsp"><span>Logout</span></a></li>

					</ul>
				</div>
				<div class="clr"></div>
			
				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="clr"></div>
				<img src="img/cloudH.png" width="1000" height="500">

				<div class="clr"></div>
			</div>


		</div>

		<div class="clr"></div>
	</div>
	</div>

	<div class="footer">
		<div class="footer_resize">
			<p class="lf">
				Copyright &copy; <a href="#"></a>
			</p>
			<p class="rf">
				Design by <a target="_blank" href=""></a>
			</p>
			<div style="clear: both;"></div>
		</div>
	</div>
	</div>
</body>
</html>