<%-- 
    Document   : payroll
    Created on : May 7, 2024, 10:40:11 AM
    Author     : 786ri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
                
    }
    else
    {
        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayWise-Payroll management System</title>
        <link href="../css/bootstrap.css" rel="stylesheet" />
        <script src="../js/bootstrap.bundle.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="../adminzone/adminheader.jsp" %>

            
            <div class="row">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    <div class="row-fluid">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    <h2 style="color:blue; text-align: center;">View all Employees</h2>
                    <table class="table" style="margin: auto;">
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Basic Salary</th>
                            <th>Make Payroll</th>
                            <%
                            DbManager db=new DbManager();
                            String query="select * from registration";
                             ResultSet rs=db.select(query);
                            while (rs.next())
                                    {
                            
                        %>
                        <tr>
                            <td><%=rs.getString("empid")%></td>
                            <td><%=rs.getString("empname")%></td>
                            <td><%=rs.getString("dep")%></td>
                            <td><%=rs.getString("des")%></td>
                            <td><%=rs.getString("bs")%></td>
                            <td>
                                <a href="makepayroll.jsp?empid=<%=rs.getString("empid")%>">
                                    <button type="button" class="btn btn-success">Make Payroll</button>
                                </a>
                            </td>
                        </tr>
                         
                        <% } %>
                    </table>
                </div>
                    </div>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>
