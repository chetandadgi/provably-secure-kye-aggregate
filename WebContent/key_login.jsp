<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	String pkey = request.getParameter("pkey");
	String aggkey = request.getParameter("aggkey");
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();
	try {
		ResultSet rs = st
				.executeQuery("select * from upload where pkey='"
						+ pkey + "'and  aggkey='" + aggkey + "'");
		if (rs.next()) {
			session.setAttribute("private_key", pkey);
			session.setAttribute("aggkey", aggkey);
			response.sendRedirect("down1.jsp?msg=success");
		} else {
			response.sendRedirect("down.jsp?msgg=failed");
		}
	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
</head>
<body>

</body>
</html>

