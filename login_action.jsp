<%@page import="Connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="
        java.util.*,java.sql.*,java.security.*,Connect.*" %>


<% 

    /*admin login*/
    
    try
    {
        String uname = request.getParameter("username");
        String pass = request.getParameter("pass");
	String type = request.getParameter("type");
        
        config c = new config();
        Connection con = c.getcon();		
		
        String sql1 = "select * from login where id= '"+uname+"'and pass='"+pass+"' and type='"+type+"'";
        String sql2 = "select * from users where aadhar= '"+uname+"'and pass='"+pass+"'";
        String sql3 = "select * from police where aadhar= '"+uname+"'and pass='"+pass+"'";
        
        Statement  stmt1 = con.createStatement();
        Statement  stmt2 = con.createStatement();
        Statement  stmt3 = con.createStatement();
        
        ResultSet rs1 = stmt1.executeQuery(sql1);
        ResultSet rs2 = stmt2.executeQuery(sql2);
        ResultSet rs3 = stmt3.executeQuery(sql3);
        
        if(rs1.next())
        {
            session.setAttribute("id",uname);
            session.setAttribute("pass",pass);
            session.setAttribute("type",type);
            response.sendRedirect("admin.jsp");
        }
        else if(rs2.next()&&type.equals("User"))
        {
            session.setAttribute("id",uname);
            session.setAttribute("pass",pass);
            session.setAttribute("type",type);
            response.sendRedirect("user.jsp");
        }
        else if(rs3.next()&&type.equals("Police"))
        {
            session.setAttribute("id",uname);
            session.setAttribute("pass",pass);
            session.setAttribute("type",type);
            response.sendRedirect("police.jsp");
        }
        else
        {
            response.sendRedirect("index_error.jsp");
        }
                   
    }
    catch(Exception e)
            {
                e.printStackTrace();
            }
    
%>