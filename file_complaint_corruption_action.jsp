<%@page import="java.sql.Connection"%>
<%@page import="Connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="
        java.util.*,java.sql.*,java.security.*,Connect.*" %>
<%
    try
    {
        String id= (String)session.getAttribute("id");
        config c=new config();
        Connection con = c.getcon();
       
        //Random rand=new Random();
        //int id=rand.nextInt(100);
        String name = request.getParameter("officer");
        String dept = request.getParameter("dept");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String remark = request.getParameter("remark");
        
        
        Statement stmt = con.createStatement();     
        String sql;
        sql = " insert into corruption(aadhar,name,designation,city,state,remark)" + " values (?,?,?,?,?,?)";
        PreparedStatement preparedStmt = con.prepareStatement(sql);
        preparedStmt.setString (1,id);
        preparedStmt.setString (2,name);
        preparedStmt.setString (3,dept);
        preparedStmt.setString (4,city);
        preparedStmt.setString (5,state);
        preparedStmt.setString (6,remark);
        preparedStmt.execute();
        preparedStmt.close();
        response.sendRedirect("file_complaint_corruption_s.jsp");
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>