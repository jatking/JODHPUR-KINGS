<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <meta charset="UTF-8">
    <title>Admin</title>
   <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
    <link rel="shortcut icon" href="pics/logo.ico" type="image/x-icon"/> 
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js/index.js"></script>
</head>

<body style="background-image: url(pics/back3.jpg); background-size: 1300px,720px">
     <%
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader("Expires",0);
        
        if(session.getAttribute("type")==null)
                response.sendRedirect("index.jsp");
                %>
    
<%@include file="admin_header.jsp" %>

<div class=" col-md-12 vertical-menu" style="margin-bottom: 60px">
        <nav class="menu" tabindex="0">
            <div class="smartphone-menu-trigger"></div>
            <ul >
                <a href="admin.jsp" style=" text-decoration:none"><li tabindex="0"  class="icon-home active"><span>Home</span></li></a>
                <a href="user_profile.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-profile" ><span>Profile</span></li></a>
                <a href="view_complaint.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-student"><span>Complaints</span></li></a>
                <a href="criminal.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-message" ><span>Criminals</span></li></a>
                <a href="admin_upassword.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-pass"><span>Update Password</span></li></a>
            </ul>
        </nav>
</div>

<div class="col-md-8" style=" padding-top: 50px; text-align: center; z-index: -1;">
    <div class="col-md-6" style="padding-top: 40px; text-align: center; z-index: -1;  ">
        <a href="add_criminal.jsp" style="text-decoration:none">
            <img src="pics/add.png" style="height: 200px; width: 200px; border: #09F 1px; border-radius: 10px;margin-left: 20%">
            <button style="height: 50px ; border: 4px #080808; border-radius: 10px; width: 200px; margin-top: 10px;margin-left: 20%">Add Criminal</button>
        </a>
    </div>
    <div class="col-md-6" style="padding-top: 40px; text-align: center; z-index: -1; ">
        <a href="view_criminal.jsp" style="text-decoration:none">
            <img src="pics/criminal.jpg" style="height: 200px; width: 200px; border: #09F 1px;  border-radius: 10px; margin-left: 20%">
            <button style="height: 50px; width: 200px ; border: 4px #080808; border-radius: 10px; margin-top: 10px;margin-left: 20%; margin-bottom: 50px">View List</button>
        </a>
    </div>
</div>

<div class="col-md-12" style="z-index: -1;margin-bottom: 20px;">  
<marquee>
    <img src="pics/1.jpg" style="height: 100px; width: 200px; margin: 10px 10px 10px 10px">
    <img src="pics/2.jpg" style="height: 100px; width: 200px;margin: 10px 10px 10px 10px">
    <img src="pics/5.png" style="height: 100px; width: 200px;margin: 10px 10px 10px 10px">
    <img src="pics/7.jpg" style="height: 100px; width: 200px;margin: 10px 10px 10px 10px">
    <img src="pics/4.jpg" style="height: 100px; width: 200px;margin: 10px 10px 10px 10px">
    <img src="pics/3.jpg" style="height: 100px; width: 200px;margin: 10px 10px 10px 10px">
</marquee>
</div>
<div class=" col-md-12 footer" style="background-color:#eee; text-align:center;">copyright@reserved by Vigilant India</div>
</body>
</html>