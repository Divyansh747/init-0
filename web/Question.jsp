
<%@page import="Model.QuestionModel"%>
<%@page import="dao.ExamDao"%>
<%@page import="java.security.cert.PKIXRevocationChecker.Option"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Portal</title>
    </head>
    <body>
       
        
        <%
            
            ExamDao ed =new ExamDao();
            int question = Integer.parseInt(request.getParameter("noQuestion"));
            for(int i =1;i<=question;i++){
            QuestionModel qm=new QuestionModel();
            
            qm.setQuestion(request.getParameter("question"+i));
            qm.setMarks(Integer.parseInt(request.getParameter("mark"+i)));
            qm.setQuestionID(ed.getNextQuestionID());
            
            }
            
            
            %>
        
        
    </body>
</html>
