<%-- 
    Document   : logcode
    Created on : Apr 27, 2024, 10:54:03 AM
    Author     : 786ri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<% 
    String empid=request.getParameter("empid");
    String password=request.getParameter("password");
    String query="select usertype from login where empid='"+empid+"'and password='"+password+"'";
    DbManager db = new DbManager();
    ResultSet rs=db.select(query);
    if(rs.next())
    {
       String usertype=rs.getString("usertype");
       if(usertype.equals("user"))
       {    
            //out.print("<script>alert('Welcome to User zone');window.location.href='login.jsp';</script>"); 
           session.setAttribute("empid", empid);
           response.sendRedirect("customerzone/customerhome.jsp");
       }
       else if(usertype.equals("admin"))
       {
           out.print("<script>alert('Welcome to admin zone');window.location.href='login.jsp';</script>");         
       }
    }
    else
    {
        out.print("<script>alert('Login Denied');window.location.href='login.jsp';</script>");
    }
%>
