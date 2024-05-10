<%-- 
    Document   : enquiries
    Created on : May 3, 2024, 12:36:10 PM
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
            <div class="row">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    <h2 style="color:blue; text-align: center;">View all Enquiries</h2>
                    <table class="table" style="margin: auto;">
                        <tr>
                            <th>Serial ID</th>
                            <th>Employee Name</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from enquiry";
                            ResultSet rs=db.select(query);
                            while (rs.next())
                                    {
                            
                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailid")%></td>
                            <td><%=rs.getString("subject")%></td>
                            <td><%=rs.getString("message")%></td>
                            <td>
                            <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                <button type="button" class="btn btn-danger">Delete</button> 
                            </a>
                        </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
    </div>
    </body>
</html>
