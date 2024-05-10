<%--
    Document   : adminhome
    Created on : May 3, 2024, 10:41:53 AM
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
                    <h2 style="color:blue; text-align: center;">View all Payslip</h2>
                    <table class="table"style="margin: auto;">
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Month</th>
                            <th>Year</th>
                            <th>Basic Salary</th>
                            <th>HRA</th>
                            <th>DA</th>
                            <th>GS</th>
                            <th>Deduction</th>
                            <th>total</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from payroll";
                            ResultSet rs=db.select(query);
                            while (rs.next())
                                    {
                            
                        %>
                        <tr>
                            <td><%=rs.getString("empid")%></td>
                            <td><%=rs.getString("empname")%></td>
                            <td><%=rs.getString("dep")%></td>
                            <td><%=rs.getString("des")%></td>
                            <td><%=rs.getString("month")%></td>
                            <td><%=rs.getString("year")%></td>
                            <td><%=rs.getInt("bs")%></td>
                            <td><%=rs.getString("hra")%></td>
                            <td><%=rs.getString("da")%></td>
                            <td><%=rs.getString("gs")%></td>
                            <td><%=rs.getString("ded")%></td>
                            <td><%=rs.getString("total")%></td>
                            
                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>
                
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>