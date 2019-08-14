<%@page import="network.UserMail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page import="sun.security.pkcs11.Secmod.DbMode"%>
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
		{
			DbConnection db = new DbConnection();
			Connection conn = db.getConnection();
			String uid = request.getParameter("id");
			int id = Integer.parseInt(uid);
			System.out.println("id get successfully" + id);

			String sql = "Select *  from request where id =" + id;
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			if (result.next()) {

				String uname = result.getString("uname");
				String uemail = result.getString("uemail");
				String pkey = result.getString("private_key");
				String aggkey = result.getString("aggkey");

				UserMail m = new UserMail();
				m.secretMail(pkey, aggkey, uname, uemail);

				DbConnection db1 = new DbConnection();
				Connection conn1 = db1.getConnection();
				String sql1 = "update request set status='Yes'where id ="
						+ id;
				PreparedStatement statement1 = conn1.prepareStatement(sql1);
				statement1.executeUpdate();

				response.sendRedirect("UserResponse.jsp?msg=success");
			} else {
				response.sendRedirect("UserResponse.jsp?msg=failed");
			}
		}
	%>
</body>
</html>