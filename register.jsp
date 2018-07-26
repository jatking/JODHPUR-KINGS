<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <meta charset="UTF-8">
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
    <link rel="shortcut icon" href="pics/logo.ico" type="image/x-icon"/> 
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js/index.js"></script>
</head>

<body style="background-image: url(pics/back3.jpg); background-size: 1260px,720px">
    
  	<%@include file="header.jsp" %>
      
<div class="col-md-12" >
    <h2 style="text-align: center; font-family: cursive;"><b>New user</b></h2>    
    <div class="form">
        <form class="login-form" action="registration_action.jsp" method="post" name="f1" onsubmit="return validate()">
            <div class="col-md-6"><input type="text" id="u_name" name="u_name" placeholder="Name"/></div>
            <div class="col-md-6"><input type="text" id="u_fname" name="u_fname" placeholder="Fathers Name"/></div>
            <div class="col-md-6"><input type="email" id="u_email" name="u_email" placeholder="Email Address"/></div>
            <div class="col-md-6"><input type="Password" id="u_pass" name="u_pass" placeholder="Password"/></div>
            <div class="col-md-6"><input type="text" id="u_mobile" name="u_mobile" placeholder="Mobile Number"/></div>
            <div class="col-md-6"><input type="date" id="u_dob" name="u_dob" placeholder="Date Of Birth"/></div>
            <div class="col-md-6">
            	<select name="gender">
                	<option>Select Gender</option>
                        
                	<option >MALE</option>
                	<option>FEMALE</option>
            	</select>
            </div>
            <div class="col-md-6"><input type="text" id="u_aadhar" name="u_aadhar" placeholder="Aadhar number"/></div>
            <div class="col-md-6"><input type="text" id="u_address" name="u_address" placeholder="Address"/></div>
            <div class="col-md-6"><input type="text" id="u_city" name="u_city" placeholder="City"/></div>
            <div class="col-md-6"><input type="text" id="u_state" name="u_state" placeholder="State"/></div>
            <div class="col-md-6"><input type="text" id="u_pincode" name="u_pincode" placeholder="Pincode"/></div>
            <div class="col-md-12">
            	<button name="Apply"  type="submit" id="Apply" value="Submit">Add</button>
            </div>
        </form>
    </div>
</div>
        
 
</body>
</html>
