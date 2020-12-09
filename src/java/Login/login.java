
package Login;

import dao.ExamDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
     String email=request.getParameter("txtemail");
     String pass=request.getParameter("txtpass");

     HttpSession session=request.getSession();
     session.setAttribute(email,"txtemail");
     session.setAttribute(pass,"txtpass");
     PrintWriter out=response.getWriter();
     ExamDao sd=new ExamDao();
        try {
        
            if(sd.Login(email,pass))
            {
              
                out.println("valid user");
                response.sendRedirect("SelectBranch.html");
            }
            else
            {
            out.println("invalid user");
               if(email.equals("Admin")&&pass.equals("12345"))
               {
                   response.sendRedirect("DownloadInfo");
               }
            
            }
        } 
        catch (SQLException ex) {
           out.println(ex);
        }
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
