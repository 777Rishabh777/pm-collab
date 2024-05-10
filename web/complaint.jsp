<%-- 
    Document   : complaint
    Created on : May 4, 2024, 11:09:38 AM
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
                     <h2 style="color: blue; text-align: center">View Feedback</h2>
                    <table class="table table-border" style="width: 80%; margin: auto">
                        <tr>
                            <th>Serial ID</th>
                            <th>Employee Name</th>
                            <th>Contact Number</th>
                            <th>Email Address</th>
                            <th>Subject</th>
                            <th>Complaint</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from response where responsetype='complaint'";
                            ResultSet rs=db.select(query);
                            while(rs.next())
                            {
                        %>
                        <tr>    
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailid")%></td>
                            <td><%=rs.getString("subject")%></td>
                            <td><%=rs.getString("responsetext")%></td>
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
