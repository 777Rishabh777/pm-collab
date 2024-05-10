<%-- 
    Document   : customers
    Created on : May 3, 2024, 12:11:24 PM
    Author     : 786ri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
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

            </div>
            <div class="row-fluid">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    <h2 style="color:blue; text-align: center;">View all Employees</h2>
                    <table class="table"style="margin: auto; ali">
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Date of Joining</th>
                            <th>BS</th>
                            <th>Update BS</th>
                        </tr>
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
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailid")%></td>
                            <td><%=rs.getString("dep")%></td>
                            <td><%=rs.getString("des")%></td>
                            <td><%=rs.getString("doj")%></td>
                            <td><%=rs.getInt("bs")%></td>
                            <td>
                                <a href="updatebs.jsp?empid=<%=rs.getString("empid")%>">
                                    <button type="button" class="btn btn-success">Update BS</button>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
    </body>
</html>
