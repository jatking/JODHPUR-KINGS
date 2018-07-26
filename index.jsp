<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/login.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
    <link rel="shortcut icon" href="pics/logo.ico" type="image/x-icon"/> 
</head>

<body style="background-image: url(pics/back3.jpg); background-size: 1260px,720px ">
    
    <%@include  file="header.jsp" %>
    <br></br><br></br><br></br><br></br><br></br><br></br>
    <div class="container1 info">
			<h3>Login Panel</h3>
    </div>
    	<div class="form">
		
            <form class="login-form" action="login_action.jsp" method="post" name="f1" onsubmit="return validate()">
                <input type="text" name="username" id="username" placeholder="Aadhar number"/>
                <input type="password" name="pass" id="pass" placeholder="Password"/>
                <select id="type" name="type">
			<option>Select Type</option>
			<option>Police</option>
			<option>User</option>
                        <option>Admin</option>
		</select>
		<button  name="Apply" type="submit" id="Apply" value="Submit">Login</button>
                Not registered? <a href="register.jsp">Click here</a>
        </div>
        
	
<div class=" col-md-12" style="background-color:#eee; text-align:center;">copyright@reserved by Vigilant India</div>
    

</body>
</html>
