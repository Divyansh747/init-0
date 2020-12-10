<%@page import="dao.ExamDao"%>
<%
        ExamDao d = new ExamDao();
        if(d.TRegister(request.getParameter("TeacherID"), "", request.getParameter("Email"), Long.parseLong(request.getParameter("Mobile")))){
            
            response.sendRedirect("SentMail?TeacherID="+ request.getParameter("TeacherID")+"&Email="+ request.getParameter("Email"));
        
        }
        






%>