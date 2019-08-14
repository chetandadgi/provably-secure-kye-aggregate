
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
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
	//    int pass = Integer.parseInt(request.getParameter("pass"));
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");

	String state = request.getParameter("state");
	String country = request.getParameter("country");
	String role = request.getParameter("role");
	String status = "No";
	//Secret Key
	Random RANDOM = new SecureRandom();
	int PASSWORD_LENGTH = 10;
	String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
	String skey = "";

	for (int i = 0; i < PASSWORD_LENGTH; i++) {
		int index = (int) (RANDOM.nextDouble() * letters.length());
		skey += letters.substring(index, index + 1);
	}
	System.out.println("print value :" + name + email + password
			+ mobile + dob + gender + state + country + role);
	Connection conn = DbConnection.getConnection();
	//Statement sto = conn.createStatement();
	PreparedStatement sto = conn
			.prepareStatement("insert into oreg(name, email, password,mobile,dob,gender,state,country,role,skey,status) values('"
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
					+ role
					+ "','"
					+ skey + "','" + status + "')");
	try {
		int i = sto.executeUpdate();
		if (i != 0) {

			response.sendRedirect("index.jsp?msg='registered successfully'");
		} else {
			System.out.println("failed");
		}

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
