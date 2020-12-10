<%@page import="java.util.List"%>
<%@page import="dao.ExamDao"%>
<%@page import="Model.TeacherModel"%>
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
        
        %>
	
		<div class="progressbar">
		<div class="progressbarper" id="progressbarper" style="width: 0;">		</div>
		</div>
	<nav class="navbar">
	</div>
	<div class="logo">
	<img src="img/Logo.png">
	</div>
	<div class="modelback " id="loginModel" onclick="closeLoginModel(event)">
	<div class="model right">
	</div>
	</div>

	</nav>
	<div class="main">
	<div class="card1 Page0" id="Page0" >
	<div class="card1text">
	<div>Want Add New Teacher <br> 

<!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary but " data-toggle="modal" data-target="#MakeNewPaper">
    Add New Teacher 
  </button>

  
  

  </div></div>
	<div class="getmyenotesdiv">
		<img src="img/examlogo.png">

	</div>
	</div>
	<div class="card2 " id="Page1" >
	<div class="heading"> Teacher... </div>
	<div class="card2con"> 

		<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Teacher ID</th>
      <th scope="col">Email</th>
      <th scope="col">Phone No.</th>
      <th scope="col">Remove</th>
    </tr>
  </thead>
  <tbody>
      <%
      List<TeacherModel> l = d.getAllTeacher();
      int i = 0;
for(TeacherModel t : l){
    i++;
      %>
    <tr>
      <th scope="row"><%= i %></th>
      <td><%= t.getTeacherId() %></td>
      <td><%= t.getEmail()%></td>
      <td><%= t.getPhoneNumber()%></td>
      <td>#Remove Button</td>
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
      
       <form action="addteacher.jsp" method="post">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Make New Paper</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
		<div class="form-group">
      <label for="usr">Teacher ID</label>
      <input type="text" class="form-control" required id="usr" name="TeacherID" readonly value="<%= d.getNextTeacherID() %>">
    </div>
		<div class="form-group">
      <label for="usr">Email</label>
      <input type="Email" class="form-control" required id="usr" name="Email" value="">
    </div>
		<div class="form-group">
      <label for="usr">Mobile</label>
      <input type="tel" class="form-control" required id="usr" name="Mobile" value="">
    </div>
        
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
		<button type="submit" class="btn btn-primary">Add New Teacher</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </form>  
      </div>
    </div>
  </div>
  </div>
		
</body>
</html>