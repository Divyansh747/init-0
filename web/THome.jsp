<%@page import="Model.TeacherModel"%>
<%@page import="Model.PaperModel"%>
<%@page import="dao.ExamDao"%>
<%@page import="java.util.List"%>
<html>
<head>
	<title>Exam Portal</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- custom css  -->
   <script src="https://kit.fontawesome.com/a076d05399.js"></script> 
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/THome.css" />
    <script src="js/THome.js"></script>

</head>
<body >

	<%
        ExamDao d  = new ExamDao();
        TeacherModel t = d.getTeacherById(request.getParameter("TeacherID"));
        
        %>
		<div class="progressbar">
		<div class="progressbarper" id="progressbarper" style="width: 0;">		</div>
		</div>
	<nav class="navbar">
	</div>
	<div class="logo">
	<img src="img/Logo.png">
	</div>
    <div class="login" onclick="openlogin()">
        <i class="fas fa-user-circle"></i> 
		<div class="loginName" id="loginName"><%= t.getTeacherId()%></div>
    </div>
	<div class="modelback " id="loginModel" onclick="closeLoginModel(event)">
	<div class="model right">
	</div>
	</div>

	</nav>
	<div class="main">
	<div class="card1 Page0" id="Page0" >
	<div class="card1text">
	<div>Want to test your Student ! <br> 

<!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary but " data-toggle="modal" data-target="#MakeNewPaper">
    Make New Paper
  </button>

  
  

  </div></div>
	<div class="getmyenotesdiv">
		<img src="img/examlogo.png">

	</div>
	</div>
	<div class="card2 " id="Page1" >
	<div class="heading"> Test History </div>
	<div class="card2con"> 

		<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Subject</th>
      <th scope="col">PaperID</th>
      <th scope="col">Test Date</th>
      <th scope="col">No of Question</th>
      <th scope="col">Detail</th>
    </tr>
  </thead>
  <tbody>
      <%
           List<PaperModel> l = d.getPaperByTeacherID(t.getTeacherId());
           int i = 0;
           for(PaperModel p : l){
               
               i++;
          %>
    <tr>
      <th scope="row"><%= i %></th>
      <td><%=p.getSubject()%></td>
      <td><%=p.getPaperId()%></td>
      <td><%=p.getDate()%></td>
      <td>#No</td>
      <td>#Detail Button</td>
    </tr>
    <%
        }
    %>
    
  </tbody>
</table>
	
</div>
	
	</div>
	
	
	
	
		<div class="footer">
	All Right Reserve &#169; Copyright <br>Developed By Team Init 0
	</div>

	</div>
	
	
	<!-- The Modal -->
  <div class="modal fade" id="MakeNewPaper">
  
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Make New Paper</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <form action="addpaper.jsp">
        
        <!-- Modal body -->
        <div class="modal-body">
		<div class="form-group">
      <label for="usr">Paper ID</label>
      <input type="text" class="form-control" required name="PaperID" readonly value="<%= d.getNextPaperID() %>">
    </div>
       
		<div class="form-group">
      <label for="usr">Teacher ID</label>
      <input type="text" class="form-control" required name="TeacherID" readonly value="<%= t.getTeacherId() %>">
    </div>
        
		<div class="form-group">
      <label for="usr">Subject Name</label>
      <input type="text" class="form-control" required name="Subject"  value="">
    </div>
		<div class="form-group">
      <label for="usr">Paper Date</label>
      <input type="Date" class="form-control" required name="PaperDate"  value="">
    </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
		<button type="submit" class="btn btn-primary">Make New Paper</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        </form>
        
      </div>
    </div>
  </div>
  </div>
		
</body>
</html>