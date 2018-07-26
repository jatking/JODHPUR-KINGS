
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="Connect.config"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="
        java.util.*,java.sql.*,java.security.*,Connect.*" %>
<%ResultSet resultset =null;%>

<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="HandheldFriendly" content="true">
        <meta charset="UTF-8"></meta>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>User</title>
    <link href="css/login1.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/add_student.js"></script>
    <link rel="shortcut icon" href="pics/logo.ico" type="image/x-icon"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
</head>

<body style="background-image: url(pics/back3.jpg); background-size: 1300px,720px ">
        <%
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader("Expires",0);
        
        if(session.getAttribute("type")==null)
                response.sendRedirect("index.jsp");
                %>
    <%
        String id= (String)session.getAttribute("id");
        
    
    if(id!=null)
    {
            config c = new config();
            Connection con = c.getcon();
            String sql = "Select * from users where aadhar='"+id+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next())
            {
                String name = rs.getString("name");
            
    %>

<%//--------------------------------------Header Starts---------------------------------%>

<%@include  file="user_header.jsp" %>
   
<%//--------------------------------------Header Ends---------------------------------%>

         
<div class=" col-md-4 vertical-menu">
        <nav class="menu" tabindex="0">
            <div class="smartphone-menu-trigger"></div>
            <ul >
                <a href="user.jsp" style=" text-decoration:none"><li tabindex="0"  class="icon-home"><span>Home</span></li></a>
                <a href="user_profile.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-profile" ><span>Profile</span></li></a>
                <a href="file_complaint.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-student"><span>File Complaint</span></li></a>
                <a href="nearby.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-message" ><span>Near By</span></li></a>
                <a href="user_upassword.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-pass active"><span>Update Password</span></li></a>
            </ul>
        </nav>
</div>


<div class=" col-md-10 relative" style=" text-align:  center; vertical-align:  central; padding-bottom: 40px; padding-left:5%    " >            
        <div class="container">
		<div class="info">
			<h3>Update Password</h3>
                        <p><font color="green">Your Password is SuccessFully Updated!!!</font></p>
		</div>
	</div>

	<div class="form">
		
            <form class="login-form" action="user_upassword_action.jsp" method="post" name="f1" onsubmit="return validatep()">
                <input type="password" name="oldpass" id="oldpass" placeholder="Enter Old Password"/>
                <input type="password" name="newpass" id="newpass" placeholder="Enter new password"/>
		<button  name="Apply" type="submit" id="Apply" value="Submit">update</button>
	</div>
         </div>
</div>

<div class="footer">copyright@reserved by Vigilant India</div>
</body>
</html>
<%
    }
}
    else
    {
         out.print("Please login first");
    }
%>