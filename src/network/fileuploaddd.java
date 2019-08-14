/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;


/**
 *
 * @author java4
 */
@WebServlet("/fileupload")
public class fileuploaddd extends HttpServlet {
File file;
final String filepath="D:/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
         HttpSession session = request.getSession();
           String ownername= (String) session.getAttribute("oname");
           System.out.print("Oname : "+ownername);
           MultipartRequest m=new MultipartRequest(request,filepath);       
           File file=m.getFile("upload");           
           String filenames=file.getName().toLowerCase();
             System.out.println("File name"+filenames);
             String filekey=m.getParameter("file_name");
           //String filename=m.getParameter("filename");
           // String caption=m.getParameter("caption");
             //String status= "No";
            Connection con= DbConnection.getConnection();
            Statement st3=con.createStatement();
            ResultSet rt3=st3.executeQuery("select * from upload where filename='"+filenames+"'");
            if(rt3.next()){
                response.sendRedirect("OwnerUpload.jsp?failed='yes'");
            }
            else{
           //out.println("file location:"+filepath+"\n file name:"+filename+"\n");  
            
            BufferedReader br=new BufferedReader(new FileReader(filepath+filenames));
            StringBuffer sb=new StringBuffer();
            String temp=null;
            
            while(( temp=br.readLine())!=null){
               sb.append(temp);              
           }           
                 System.out.println("string Buffer"+sb); 
//            RS_IBE e=new RS_IBE();
//           String IBEe=e.encrypt(sb.toString());
           
            String ftest=(sb.toString());
            CpABE cp = new CpABE();
            String encdata= cp.encrypt(ftest);
            
           
           //storing encrypted file
            FileWriter fw=new FileWriter(file);
            fw.write(encdata);
            fw.close();
            System.out.println("string Buffer"+encdata); 
             
              // aggregate key
            
            int n = 10000 + new Random().nextInt(90000);
            String akey = String.valueOf(n);
            
            
          //Private Key
            Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 15;
            String letters = "1234567890qwertyuioplkjhgfdsazxcvbnm1234567890";
            String pkey = "";
                   
            for (int i=0; i<PASSWORD_LENGTH; i++)
            {
               int index = (int)(RANDOM.nextDouble()*letters.length());
               pkey += letters.substring(index, index+1);
            }
                    
                    
              // date and Time
             DateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd G 'at' HH:mm:ss ");
	     Date date = new Date();
             String time= dateFormat.format(date); 
             System.out.println("current Date "+time);
     
            String len=file.length()+"bytes";
            
            //uploading file
            boolean status=new Ftpcon().upload(file);
            
            if(status){
                //Connection con= Dbconnection.getConn();
                Statement st=con.createStatement();
                
       
                int i=st.executeUpdate("insert into upload(oname,filekey,filename,content,time,pkey,aggkey,status)values('"+ownername+"','"+filekey+"','"+filenames+"','"+encdata+"','"+time+"','"+pkey+"','"+akey+"','No')");
                System.out.println(i);
                if(i!=0){
                   // out.println("success");
                    response.sendRedirect("OwnerUpload.jsp?fmsg='uploded'");
                    
                }
                else{
                    out.println("error while uploading additional informations");
                }
//                 out.println("file stored");
//                 out.println(file.length());
            }
            else{
                out.println("error");
            }
            }
        }
        catch(Exception e){
            out.println(e);
        }
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
