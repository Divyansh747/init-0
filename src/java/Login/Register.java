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

/**
 *
 * @author Dell
 */
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
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
     String enroll=request.getParameter("Enroll");
     String email=request.getParameter("email");
     String pass=request.getParameter("pass");
     int mobile=Integer.parseInt(request.getParameter("phone"));
     
    
     PrintWriter out=response.getWriter();
     ExamDao Ed=new ExamDao();
        try {
        
            if(Ed.Register(enroll,pass,email,mobile))
            {
                out.println("user created");
                response.sendRedirect("index.html");
                System.out.println("user created");
            }
            else
            {
            out.println("invalid user");
            //response.sendRedirect("index.html");
            }
        } catch (SQLException ex) {
           out.println(ex);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
