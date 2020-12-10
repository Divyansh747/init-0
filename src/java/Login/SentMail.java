/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;


import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class SentMail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 try {
//            SentMail.sendmail(request.getParameter("Email"), request.getParameter("TeacherID"));
            response.sendRedirect("adminpage.jsp");
            
        } catch (Exception ex) {
            }    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
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

    static void sendmail(String recepient, String msg) throws MessagingException{
        System.out.println("Mail Preparation Start..... ");
    Properties p = new Properties();
     p.put("mail.smtp.auth","true");
     p.put("mail.smtp.starttls.enable","true");
     p.put("mail.smtp.host","smtp.gmail.com");
     p.put("mail.smtp.port","587");
     String myAccountEmail = "useuse425@gmail.com";
     String password = "Use425use";
     
     Session session = Session.getInstance(p, new Authenticator(){
         protected  PasswordAuthentication getPasswordAuthentication(){
         return new PasswordAuthentication(myAccountEmail, password);
         }
     });
     
     Message message = new MimeMessage(session);
     message.setFrom(new InternetAddress(myAccountEmail));
     message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
     message.setSubject("My First Email from Java");
    String q = "<table width = 100% bgcolor= red><tr><td><h2> Update Your Password at localhost:8084/ExamPortal/updatepassword.jsp?TeacherID="+msg+" <h2><td><tr></div>";
     message.setContent(q, "text/html");
        Transport.send(message);
        System.out.println("Mail Send Successfully ! ");
        
    
    }
}

