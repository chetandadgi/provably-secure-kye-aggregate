/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author java4
 */

@WebServlet("/Download")
public class Download extends HttpServlet {

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String uid = request.getParameter("id");
		
			int id = Integer.valueOf(uid);
			System.out.print(id);
			String filename = null;
			InputStream is = null;

			Connection con = DbConnection.getConnection();
			Statement st = con.createStatement();
			Statement st1 = con.createStatement();

			HttpSession user = request.getSession();

			HttpSession session = request.getSession(true);
			String uname = (String) session.getAttribute("uname");

			ResultSet rt = st.executeQuery("select * from upload where id='"
					+ id + "'");

			if (rt.next()) {
				filename = rt.getString("filename");
				System.out.print(filename);
				is = (InputStream) rt.getAsciiStream("content");
			} else {
				out.println("error while retreiving data");

			}

			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			String temp = null;
			StringBuffer sb = new StringBuffer();
			while ((temp = br.readLine()) != null) {
				sb.append(temp);
			}
			String content = new CpABE().decrypt(sb.toString());
			String dpath = "E://";
			System.out.println("Filename :" + filename);
			/*
			 * Blowfish bff= new Blowfish(); bff.decrypt("D://"+fname,
			 * dpath+"IMg.jpg");
			 */

			response.setHeader("Content-Disposition", "attachment;filename=\""
					+ filename + "\"");
			out.write(content);

			Calendar cal = Calendar.getInstance();
			DateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			String time = dateformat.format(cal.getTime());
			System.out.println("download time:" + time);

			st1.executeUpdate("insert into downloads (filename,uname,time)values('"
					+ filename + "','" + uname + "','" + time + "')");

		} catch (Exception e) {
			// out.println(e);
		} finally {
			out.close();
		}
	}

	// <editor-fold defaultstate="collapsed"
	// desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request
	 *            servlet request
	 * @param response
	 *            servlet response
	 * @throws ServletException
	 *             if a servlet-specific error occurs
	 * @throws IOException
	 *             if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}






















/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 
package network;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import network.downloads;
import network.DbConnection;

*//**
 *
 * @author IBN33
 *//*
public class Download extends HttpServlet {

    private static Connection getConnection() {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    *//**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *//*
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            String dkey = request.getParameter("decrypt");
            System.out.println();
            HttpSession user = request.getSession();
            String uid = user.getAttribute("uid").toString();
            String uname = user.getAttribute("uname").toString();


            Connection con = DbConnection.getConnection();
            Statement st1 = con.createStatement();
            Statement st = con.createStatement();

            ResultSet rt = st.executeQuery("select * from fileupload where secret_key='" + dkey + "' ");
            if (rt.next()) {
                String fname = rt.getString("filename");
                String fid = rt.getString("id");
                System.out.println("download uid uname fid===== " + uid + uname + fid);
                InputStream is = rt.getAsciiStream("content");
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                StringBuffer sb = new StringBuffer();
                String temp = null;

                while ((temp = br.readLine()) != null) {
                    sb.append(temp);

                }
                Decryption de = new Decryption();
                String str = de.decrypt(sb.toString(), dkey);
                response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"");
                out.write(str.toString());
                out.close();
                int i = st1.executeUpdate("insert into download (uid, uname, fid, fname, time_)values('" + uid + "','" + uname + "','" + fid + "','" + fname + "',now())");

                if (i != 0) {
                    // response.sendRedirect("download.jsp");
                } else {
                    System.out.println("error  while updating information...");
                }
            } else {
                System.out.println("file not found...");
            }
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    *//**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *//*
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    *//**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *//*
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    *//**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     *//*
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}*/