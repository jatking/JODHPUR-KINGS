<%@page import="Connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="
        java.util.*,java.sql.*,java.security.*,Connect.*" %>
<%ResultSet resultset =null;%>
<%
    try
    {
        config c=new config();
        Connection con = c.getcon();

        String name = request.getParameter("u_name");
        String fname = request.getParameter("u_fname");
        String email = request.getParameter("u_email");
        String tel = request.getParameter("u_mobile");
        String dob = request.getParameter("u_dob");
        String pass = request.getParameter("u_pass");
        String gender = request.getParameter("gender");
        String aadhar = request.getParameter("u_aadhar");
        String address = request.getParameter("u_address");
        String city = request.getParameter("u_city");
        String state = request.getParameter("u_state");
        String pin = request.getParameter("u_pincode");
        String sql;
        sql = " insert into users(name,fname,email,pass,aadhar,gender,dob,mob,address,city,state,pincode)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        // create the mysql insert preparedstatement
        PreparedStatement preparedStmt = con.prepareStatement(sql);
        preparedStmt.setString (1, name);
        preparedStmt.setString (2, fname);
        preparedStmt.setString (3, email);
        preparedStmt.setString (4, pass);
        preparedStmt.setString (5, aadhar);
        preparedStmt.setString (6, gender);
        preparedStmt.setString (7, dob);
        preparedStmt.setString (8, tel);
        preparedStmt.setString (9, address);
        preparedStmt.setString (10, city);
        preparedStmt.setString (11, state);
        preparedStmt.setString (12, pin);
        
        preparedStmt.execute();
        preparedStmt.close();        //execute the preparedstatement
        
        response.sendRedirect("index.jsp");
    }
    catch(Exception e)
    {
        out.println(e.getMessage());
    }
%>