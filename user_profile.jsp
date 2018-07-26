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
    <meta name="HandheldFriendly" content="true"></meta>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>User</title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/teacher/css/style.css" type="text/css" />
    <link rel="shortcut icon" href="pics/logo.ico" type="image/x-icon"/>
</head>

<body style="background-image: url(pics/back31.jpg); background-size: 1300px,720px;   ">
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
        String sql1 = "Select * from users where aadhar='"+id+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql1);
           
        if(rs.next())
        {
              
            String name = rs.getString("name");
            String father = rs.getString("fname");
            String email = rs.getString("email");
            String tel=rs.getString("mob");
            String dob = rs.getString("dob");
            String gender = rs.getString("gender");
            String address = rs.getString("address");
            String city = rs.getString("city");
            String state = rs.getString("state");
            String pincode = rs.getString("pincode");
       
    %>

<%//--------------------------------------Header Starts---------------------------------%>

<%@include  file="user_header.jsp" %>
   
<%//--------------------------------------Header Ends---------------------------------%>  

<div class=" col-md-4 vertical-menu">
        <nav class="menu" tabindex="0">
            <div class="smartphone-menu-trigger"></div>
            <ul >
                <a href="user.jsp" style=" text-decoration:none"><li tabindex="0"  class="icon-home"><span>Home</span></li></a>
                <a href="user_profile.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-profile active" ><span>Profile</span></li></a>
                <a href="file_complaint.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-student"><span>File Complaint</span></li></a>
                <a href="nearby.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-message" ><span>Near By</span></li></a>
                <a href="user_upassword.jsp" style=" text-decoration:none"><li tabindex="0" class="icon-pass"><span>Update Password</span></li></a>
            </ul>
        </nav>
</div>



<div class="col-md-10" style="position:relative; padding-left:10%; z-index: -1" >
    <div align="center">
            <h1><b>Profile</b></h1>
    </div>
    
     <div style=" position: relative;" >
        <form class="login-form">
            <div class="col-md-6"><label>Name :</label><input placeholder="<% out.print(name); %>" disabled/></div>
            <div class="col-md-6"><label>Father's Name :</label><input type="text" name="t_fname" placeholder="<% out.print(father); %>" disabled/></div>
            <div class="col-md-6"><label>Email-id :</label><input type="text" name="t_email" placeholder="<% out.print(email); %>" disabled/></div>
            <div class="col-md-6"><label>Mobile :</label><input type="text" name="t_mobile" placeholder="<% out.print(tel); %>" disabled/></div>
            <div class="col-md-6"><label>Date of birth :</label><input type="text" name="t_dob" placeholder="<% out.print(dob); %>" disabled/></div>
            <div class="col-md-6"><label>Gender :</label><input type="text" name="t_gender" placeholder="<% out.print(gender); %>" disabled/></div>
            <div class="col-md-6"><label>Aadhar:</label><input type="text" name="t_gender" placeholder="<% out.print(id); %>" disabled/></div>
            <div class="col-md-6"><label>Address :</label><input type="text" name="t_gender" placeholder="<% out.print(address); %>" disabled/></div>
            <div class="col-md-6"><label>City:</label><input type="text" name="t_gender" placeholder="<% out.print(city); %>" disabled/></div>
            <div class="col-md-6"><label>State:</label><input type="text" name="t_gender" placeholder="<% out.print(state); %>" disabled/></div>
            <div class="col-md-6"><label>Pincode:</label><input type="text" name="t_gender" placeholder="<% out.print(pincode); %>" disabled/></div>
            
        </form>
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