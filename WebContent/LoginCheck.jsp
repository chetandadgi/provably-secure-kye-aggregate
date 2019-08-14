
<%@page import="network.CiperText"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%
	String name = request.getParameter("name");

	String password = request.getParameter("password");
	//int pass = Integer.parseInt(request.getParameter("pass"));
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");

	String state = request.getParameter("state");
	String country = request.getParameter("country");
	String role = request.getParameter("role");
	System.out.println("print value :" + name + email + password
			+ mobile + dob + gender + state + country + role);
	Connection conn = DbConnection.getConnection();
	Statement sto = conn.createStatement();
	try {

		int i = sto
				.executeUpdate("insert into oreg(name, email, password,mobile,dob,gender,state,country,role)values('"
						+ name
						+ "','"
						+ email
						+ "','"
						+ password
						+ "','"
						+ mobile
						+ "','"
						+ dob
						+ "','"
						+ gender
						+ "','"
						+ state
						+ "','"
						+ country
						+ "','"
						+ role + "')");
		if (i != 0) {

			response.sendRedirect("DataOwnerUserDetails.jsp");
		} else {
			System.out.println("failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
