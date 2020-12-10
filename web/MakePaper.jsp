<%@page import="Model.TeacherModel"%>
<%@page import="dao.ExamDao"%>
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
    <link rel="stylesheet" href="css/MakePaper.css" />
    <script src="js/THome.js"></script>

</head>
<body >
    

	
		<div class="progressbar">
		<div class="progressbarper" id="progressbarper" style="width: 0;">		</div>
		</div>
	<nav class="navbar">
	</div>
	<div class="logo">
	<img src="img/Logo.png">
	</div>
        <%
        ExamDao d  = new ExamDao();
        TeacherModel t = d.getTeacherById(request.getParameter("TeacherID"));
        
        %>
    <div class="login" onclick="openlogin()">
        <i class="fas fa-user-circle"></i> 
		<div class="loginName" id="loginName"><%= t.getTeacherId()%></</div>
    </div>
	<div class="modelback " id="loginModel" onclick="closeLoginModel(event)">
	<div class="model right">
	</div>
	</div>

	</nav>
	<div class="main">
	<div class="card1 Page0" id="Page0" >
	<div class="card1text">
            
            
<!-- Button to Open the Modal -->
  <div class="but" onclick="addMCQquestion()">
    Add MCQ Question
  </div>
  
  <div class="but" onclick="addTHEORYquestion()">
    Add Theory Question
  </div>

  
  

  </div>
	<div class="getmyenotesdiv">
		<img src="img/examlogo.png">

	</div>
	</div>
	<div class="card2 " id="Page1" >
	<div class="heading heading2"> Test Paper </div>
	<div class="heading heading3"> Subject : #Subject ||  Date : #date </div>
	<div class="card2con"> 
            <form action="Question.jsp">
	<div class="Questions"  id="Questions">
            
		<div class="que"><label for="noq"> No Of Question</label><input type="text" id="noQuestion" name="noQuestion" readonly placeholder="" class="form-control"></div>
		
	</div>
	<button class="btn btn-primary" type="submit">submit</button>
	</div>
        
        </form>
	</div>
	
	
	
	
		<div class="footer">
	All Right Reserve &#169; Copyright <br>Developed By Team Init 0
	</div>

	</div>
	
	

		
</body>
</html>

<script>
  var i = 0;
  function addMCQquestion(){
  i++;
	var question = `<div class="Question MCQ"><div class="que"><input type="text" name="question`+i+`" placeholder="Question`+i+`" class="form-control"/>`+
	`</div>`+
		`<div class="Option">`
		+`<input type="text" placeholder="Option1" class="form-control" name="option`+i+`1" />`
		+`<input type="text" placeholder="Option2" class="form-control" name="option`+i+`2"/>`
		+`<input type="text" placeholder="Option3" class="form-control" name="option`+i+`3">`
		+`<input type="text" placeholder="Option4" class="form-control" name="option`+i+`4">`
		+`</div>`
		+`<div class="AnswerKey">`
		+`<label for="sel1">Select Option:</label>`
  +`<select class="form-control"  name="AnswerKey`+i+`"id="sel1">`
    +`<option>A</option>`
    +`<option>B</option>`
    +`<option>C</option>`
    +`<option>D</option>`
  +`</select>`
  +`</div>`+`<div class="AnswerKey">`
		+`<input type="number" placeholder="Mark" class="form-control" name="mark`+i+`">`
  +`</div>`
		+`</div>`;
		document.getElementById("Questions").innerHTML = document.getElementById("Questions").innerHTML + question;
		document.getElementById("noQuestion").value = i;
  }
  
  
  function addTHEORYquestion(){
  i++;
	var question = `<div class="Question MCQ"><div class="que"><input type="text" name="question`+i+`" placeholder="Question`+i+`" class="form-control"/>`+
	`</div>`+
		`<div class="Option">`
		+`<textarea class="form-control rounded-0" id="exampleFormControlTextarea1" readonly rows="5"></textarea>`
		+`</div>`+
		`<div class="AnswerKey">`
		+`<input type="number" placeholder="Mark" class="form-control" name="mark`+i+`">`
  +`</div>`
		+`</div>`;
		document.getElementById("Questions").innerHTML = document.getElementById("Questions").innerHTML + question;
		document.getElementById("noQuestion").value = i;
  }
  addMCQquestion();
  </script>