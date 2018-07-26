<%@page import="Connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="
        java.util.*,java.sql.*,java.security.*,Connect.*" %>
<%
    try
    {
        String aadhar= (String)session.getAttribute("id");
        String pass= (String)session.getAttribute("pass");
        config c=new config();
        Connection con = c.getcon();
        ResultSet rs = null;
        Statement stmt = con.createStatement();
        String oldpass = request.getParameter("oldpass");
        String newpass = request.getParameter("newpass");
        if(oldpass.equals(pass))
        {
    String sql ="update users set pass ='"+newpass+"' where aadhar='"+aadhar+"'";
        // create the mysql insert preparedstatement
      int result = stmt.executeUpdate(sql);
       if(result>=1)
        {
            response.sendRedirect("user_upassword_s.jsp");
        }
        
         //execute the preparedstatement 
    }
        else
            
        {
            response.sendRedirect("user_upassword_err.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>