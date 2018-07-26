<!DOCTYPE html>
<%@page import="Connect.config"%>
<%@page import="java.sql.*" %>
<%String id= (String)session.getAttribute("id");%>
<html>
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
    <%
    if(id!=null)
    {
            config c = new config();
            Connection con = c.getcon();
            String sql1 = "Select * from corruption where aadhar='"+id+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql1);
            
%>
  
<div class="col-md-8" style="position:relative; padding-left:10%; z-index: -1"> 
    
    <TABLE cellpadding="5" border="1" style="background-image: url(pics/6.jpg); margin-left: 60px; margin-top: 40px; border: #09a solid thick;  background-image: url(pics/6.jpg); width: 100%; text-align: center; padding-top: 15px " align="center">
        
        <tr>
            <td style="width: 25%"><b>Sno</b></td>
            <td style="width: 25%"><b>Name/Designation</b></td>
            <td style="width: 25%"><b>Department</b></td>
            <td style="width: 25%"><b>City</b></td>
            <td style="width: 25%"><b>State</b></td>
            <td style="width: 25%"><b>Remark</b></td>
        </tr>
<%
        int a=0;        
        while (rs.next()){
        a++;
%>
        <TR>
            <td><% out.print(a);%></td>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
            <TD><%=rs.getString(4)%></TD>
            <TD><%=rs.getString(5)%></TD>
            <TD><%=rs.getString(6)%></TD>
        </TR>

        <%}%>
    </TABLE>

</div>
<%
    // close all the connections.
    rs.close();
    stmt.close();
    con.close();
    } 
%>
</body>
</html>