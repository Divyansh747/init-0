<%@page import="Model.PaperModel"%>
<%@page import="dao.ExamDao"%>
<%
        ExamDao d = new ExamDao();
        PaperModel p = new PaperModel();
        p.setPaperId(Integer.parseInt(request.getParameter("PaperID")));
        p.setTeacherId(request.getParameter("TeacherID"));
        p.setSubject(request.getParameter("Subject"));
        p.setDate(request.getParameter("PaperDate"));
        
        if(d.AddPaper(p)){
            
            response.sendRedirect("MakePaper.jsp?TeacherID="+ request.getParameter("TeacherID")+"&PaperID="+request.getParameter("PaperID"));
        
        }
        






%>