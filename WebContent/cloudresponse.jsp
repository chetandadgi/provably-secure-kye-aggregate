<%@page import="network.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
		String uid = request.getParameter("id");
		int id = Integer.parseInt(uid);
		Connection con = null;
		Statement st = null;
		Statement st1 = null;
		ResultSet rs = null;
		try {
			con = DbConnection.getConnection();
			st = con.createStatement();
			System.out.print("Inside Cloud Response");
			rs = st.executeQuery("select * from request where id=" + id);
			if (rs.next()) {

				st1 = con.createStatement();
				int i = st1
						.executeUpdate("update request set status='No' where id="
								+ id);
				if (i != 0) {

					response.sendRedirect("cloud_share.jsp?msg=success");
				} else {
					response.sendRedirect("cloud_share.jsp?msgg=failed");
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
</body>
</html>