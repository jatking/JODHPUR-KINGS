<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <meta charset="UTF-8">
    <title>User</title>
    
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
    
<%@include file="user_header.jsp" %>

<div class=" col-md-4 vertical-menu" style="padding-bottom: 50px;">
        <nav class="menu">
            <div class="smartphone-menu-trigger"></div>
            <ul >
                <a href="user.jsp" style=" text-decoration:none"><li tabindex="0"  class="icon-home"><span>Home</span></li></a>
                <a href="user_profile.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-profile" ><span>Profile</span></li></a>
                <a href="file_complaint.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-student active"><span>File Complaint</span></li></a>
                <a href="nearby.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-message" ><span>Near By</span></li></a>
                <a href="user_upassword.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-pass"><span>Update Password</span></li></a>
            </ul>
        </nav>
</div>

<div class="col-md-8 relative" style=" padding-top: 50px; text-align: center; z-index: -1;">
    <div class="col-md-6" style="padding-top: 40px; text-align: center; z-index: -1;  ">
        <a href="file_complaint_corruption.jsp" style="text-decoration:none">
            <img src="pics/caught.jpg" style="height: 200px; width: 200px; border: #09F 1px; border-radius: 10px;margin-left: 20%">
            <button style="height: 50px ; border: 4px #080808; border-radius: 10px; width: 200px; margin-top: 10px;margin-left: 20%">Against corruption</button>
        </a>
    </div>
    <div class="col-md-6" style="padding-top: 40px; text-align: center; z-index: -1; ">
        <a href="file_complaint_other.jsp" style="text-decoration:none">
            <img src="pics/complaint.jpg" style="height: 200px; width: 200px; border: #09F 1px;  border-radius: 10px; margin-left: 20%">
            <button style="height: 50px; width: 200px ; border: 4px #080808; border-radius: 10px; margin-top: 10px;margin-left: 20%; margin-bottom: 50px">Others</button>
        </a>
    </div>
    <div class="col-md-12" style="text-align: center">
        <a href="filed_complaint.jsp">
            <button style="background-color: tomato; color: white; text-align:center; height: 50px; width: 200px ; border: 4px #080808; border-radius: 10px; margin-top: 10px;margin-left: 20%; margin-bottom: 50px">View Previous Complaints</button>
        </a>
    </div>
</div>
<div class=" col-md-12 footer" style="background-color:#eee; text-align:center; ">copyright@reserved by Vigilant India</div>
</body>
</html>