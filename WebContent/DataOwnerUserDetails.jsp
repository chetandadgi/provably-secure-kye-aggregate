
<!DOCTYPE html>
<%@page import="network.CiperText"%>
<%-- <%@page import="network.Mail"%> --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>


<%
	String role = request.getParameter("role");

	session.setAttribute("role", role);
%>

<html>
<head>
\
<title>Insert title here</title>

<style>
body {
	margin: 0;
	padding: 0;
	/* 	background-color: purple; */
	background: url(img\\banner-bg.png);
	background-size: cover;
	font-family: sans-serif;
}

.loginBox {
	position: absolute;
	top: 30%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 1000px;
	height: 470px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: white;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
	height: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #ac36e6;
	color: white;
}

footer {
	background-color: #555;
	color: white;
	padding: 15px;
}
</style>

</head>
<body>


	<div class="wrapper row3">
		<main class="hoc container clear">
		<center>
			<h3>Data Owner/User Details</h3>
		</center>
		<br>
		<br>
		<br>
		<div style="width: 700px; float: right" class="scrollable">
			<div class="loginBox">
				<table id="customers">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>EMail</th>
						<th>Mobile no</th>
						<th>DOB</th>
						<th>Gender</th>
						<th>Country</th>
						<th>State</th>
						<th>Role</th>
					</tr>



					<%
						String id = request.getParameter("id");
						System.out.println("aaid===" + id);
						Connection con = null;
						Statement st = null;
						ResultSet rs = null;
						try {
							con = DbConnection.getConnection();
							st = con.createStatement();
							rs = st.executeQuery("select * from oreg ");
							/*   where role='"+role+"' */
							while (rs.next())

							{
					%>
					<tr>
						<td><%=rs.getString("id")%></td>
						<td><%=rs.getString("name")%></td>
						<td><%=rs.getString("email")%></td>
						<td><%=rs.getString("mobile")%></td>
						<td><%=rs.getString("dob")%></td>
						<td><%=rs.getString("gender")%></td>
						<td><%=rs.getString("state")%></td>
						<td><%=rs.getString("country")%></td>
						<td><%=rs.getString("role")%></td>
					</tr>


					<%
						}
						} catch (Exception ex) {
							ex.printStackTrace();
						}
					%>
				</table>
			</div>
		</div>

		</main>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<br>
	<br>
	<br>
	<br>
	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>