<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		DbConnection db = new DbConnection();
		Connection con = db.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs;
		String sql = "select * from cloud where username='" + username
				+ "' and password= '" + password + "'";
		rs = stmt.executeQuery(sql);
		if (rs.next()) {
			response.sendRedirect("CloudHome.jsp");
		} else {
			response.sendRedirect("CloudLogin.jsp");
		}
	%>
</body>
</html>