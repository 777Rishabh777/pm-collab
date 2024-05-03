<%-- 
    Document   : viewprofile
    Created on : May 2, 2024, 12:28:26 PM
    Author     : 786ri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("empid")==null)
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
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="..js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fluid">
             <%@include file="menu.jsp" %>
            <div class="row mt-2">
                <div class="col-sm-12" style="background-color: #ff9999; min-height:600px">
                    <h2 style="color:green;text-align: center;">View Your Profile</h2>
                    <% 
                        DbManager db=new DbManager();
                        String empid=session.getAttribute("empid").toString();
                        String query="select * from registration where empid='"+empid+"'";
                        ResultSet rs=db.select(query);
                        if(rs.next())
                        {
                    %>
                    <table class="table-fluid" style="width:60%;margin:auto">
                        <tr>
                            <td>Name</td>
                            <td><%=rs.getString("empname")%></td>
                        </tr>
                         <tr>
                            <td>Gender</td>
                            <td><%=rs.getString("gender")%></td>
                        </tr>
                         <tr>
                            <td>Address</td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
                         <tr>
                            <td>Contact No</td>
                            <td><%=rs.getString("contactno")%></td>
                        </tr>
                         <tr>
                            <td>Email Address</td>
                            <td><%=rs.getString("emailid")%></td>
                        </tr>
                         <tr>
                            <td>Department</td>
                            <td><%=rs.getString("dep")%></td>
                        </tr>
                         <tr>
                            <td>Designation</td>
                            <td><%=rs.getString("des")%></td>
                        </tr>
                         <tr>
                            <td>Date of Joining</td>
                            <td><%=rs.getString("doj")%></td>
                        </tr>
                    </table>
                    <% } %>
                </div>
            </div>
            <%@include file="../footer.jsp"%>
        </div>  
    </body>
</html>
<% } %>
