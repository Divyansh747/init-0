<html>
<head>
	<title>Exam Portal</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- custom css  -->
   <script src="https://kit.fontawesome.com/a076d05399.js"></script> 
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/THome.css" />
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
	<div class="modelback " id="loginModel" onclick="closeLoginModel(event)">
	<div class="model right">
	</div>
	</div>

	</nav>
	<div class="main">
	<div class="card1 Page0" id="Page0" >
	<div class="card1text">
	<form method="post" action="updatePassword">
        <div>Update Your Password <br> 
            <input type="text" name="name" value="<%= request.getParameter("TeacherID") %>">
	  <input type="Password" name="pass" Placeholder="Password" required>
          
  <button type="submit" class="btn btn-primary but " data-toggle="modal" data-target="#MakeNewPaper">
    Login
  </button>   </form>

	
 

  
  

  </div></div>
            
	<div class="getmyenotesdiv">
		<img src="img/examlogo.png">

	</div>
	</div>
	
	
	</div>
	
	
	
	
		<div class="footer">
	All Right Reserve &#169; Copyright <br>Developed By Team Init 0
	</div>

	</div>
	
	
	
		
</body>
</html>