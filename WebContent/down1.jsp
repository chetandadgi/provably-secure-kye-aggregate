<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
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
<link rel="stylesheet" type="text/css"
	href="css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="js/jquery-3.3.1.js">
	
</script>
<script type="text/javascript"
	src="js/jquery.dataTables.min.js">
	
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>

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
				<div class="logo"></div>

				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li><a href="UserHome.jsp"><span>User Home</span></a></li>
						<li><a href="userfilesearch.jsp"><span>Search
									Files</span></a></li>
						<li><a href="filedetails.jsp"><span>Files Details</span></a></li>
						<li class="active"><a href="down.jsp"><span>Download
									Files</span></a></li>

						<li><a href="ulog.jsp"><span>Logout</span></a></li>

					</ul>
				</div>
				<div class="clr"></div>


			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<table id="example" class="display" style="width: 100%">
					<thead>
						<tr>
							<th>ID</th>
							<th>Oname</th>
							<th>File Key</th>
							<th>Filename</th>
							<th>Time</th>
							<th>Request</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%
								String pkey = (String) session.getAttribute("private_key");
								String aggkey = (String) session.getAttribute("aggkey");

								System.out.print("pkey :" + pkey);
								System.out.print("aggkey :" + aggkey);
								/* String aggkey = request.getParameter("aggkey");
								System.out.print("aggkey :"+aggkey); */
								DbConnection db = new DbConnection();
								Connection con = db.getConnection();
								Statement stmt = con.createStatement();
								ResultSet rs;
								try {
									String sql = "select * from upload where pkey ='" + pkey
											+ "' and aggkey='" + aggkey + "'";
									rs = stmt.executeQuery(sql);
									while (rs.next()) {
							%>
							<td data-order="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></td>
							<td data-search="<%=rs.getString(2)%>"><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getString(4)%></td>
							<td><%=rs.getString(6)%></td>
							<td><a href="Download?id=<%=rs.getInt(1)%>">Download</a></td>
						</tr>
						<%
							}
							} catch (Exception e) {
								System.out.print(e);
							}
						%>
					</tbody>
				</table>

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
	</div>
</body>
</html>