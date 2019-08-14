<%@page
	import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"
	errorPage="Error.jsp"%>

<%@ page import="network.DbConnection"%>

<%
	try {

		//           int a1 =(Integer)(session.getAttribute( "id" ));

		String filename = request.getParameter("filename");
		String pkey = request.getParameter("secret_key");
		String aggkey = request.getParameter("aggkey");
		String oname = request.getParameter("pname");
		String filekey = request.getParameter("filekey");
		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String Status = "waiting";
		System.out.println("Request is activated" + filename + pkey
				+ aggkey + oname + filekey + uname + uemail + Status);

		Connection con = DbConnection.getConnection();
		Statement st = con.createStatement();

		String sql = "insert into request(oname, uname,uemail, filename, filekey, private_key,aggkey, status) values ('"
				+ oname
				+ "','"
				+ uname
				+ "','"
				+ uemail
				+ "','"
				+ filename
				+ "','"
				+ filekey
				+ "','"
				+ pkey
				+ "','"
				+ aggkey + "','" + Status + "')";

		int x = st.executeUpdate(sql);
		if (x != 0) {
			response.sendRedirect("userfilesearch.jsp?msg=Request_send_Successfully");

		} else {
			response.sendRedirect("userfilesearch.jsp?msgg=faild");

		}
		con.close();
		st.close();
	} catch (Exception e) {
		out.println(e);

	}
%>
