<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
    <meta charset="UTF-8">
    <title>User</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
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

<div class=" col-md-4 vertical-menu">
        <nav class="menu" tabindex="0">
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
    
    <div class="col-md-10 relative" style="padding-bottom:40px; padding-left:10%" >             
        <div style="text-align: center;  ">
            <b><h3 style="font-family: Cooper; ">Other Complaints</h3></b>
        </div>
          
        <div>
            <form class="login-form" name="name" method="post" action="file_complaint_other_action.jsp">
                <input name="officer" placeholder="Complaint Against(Official Name or Designation)" style=" padding-left: 10px; height:40px ;width:100%; margin-bottom: 10px; border: #09f 1px; border-radius:5px;      ">
                <input name="dept" placeholder="Department" style="padding-left: 10px;height:40px ;width:100%; margin-bottom: 10px; border: #09f 1px; border-radius:5px;      ">
                <input name="city" placeholder="City" style="padding-left: 10px;height:40px ;width:100%; margin-bottom: 10px; border: #09f 1px; border-radius:5px;      ">
                <input name="state" placeholder="State" style="padding-left: 10px; height:40px ;width:100%; margin-bottom: 10px; border: #09f 1px; border-radius:5px;      ">
                <textarea name="remark" rows="9" cols="40" style="padding-left: 10px; width:100%;border: #09f 1px; border-radius:5px;" placeholder="Describe your Complaint"></textarea>
                <button id="button" name="Apply"  type="submit" value="Submit" style="width: 100%; background-color: tomato ">File Complaint</button>
            </form>
        </div>
    </div>
    
</body>
</html>