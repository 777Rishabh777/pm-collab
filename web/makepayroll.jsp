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

            
                      <div class="row mt-2">
                <div class="col-sm-12" style="background-color: #ff9999; min-height:600px">
                    <h2 style="text-align: center; margin-bottom: 25px; margin-top:20px; color: white">Payroll Management</h2>
                    <form class="form-group" action="updatepayroll.jsp" method="post">
                        <%
                            String empid=request.getParameter("empid");
                            DbManager db=new DbManager();
                            String query="select * from registration where empid='"+empid+"'";
                            ResultSet rs=db.select(query);
                            if(rs.next())
                            {
                        %>
                        <table class="table" style="margin: auto; background-color: transparent;">
                            <tr>
                                 <td>Enter Employee ID</td>
                                 <td><input type="text" name="empid" required class="form-control" value="<%=rs.getString("empid")%>"/></td>
                            </tr>
                            <tr>
                                <td>Enter Employee Name</td>
                                <td><input type="text" name="empname" required class="form-control" value="<%=rs.getString("empname")%>"/></td>
                            </tr>
                            <tr>
                                <td>Enter Department</td>
                                <td><input type="text" name="dep" required class="form-control" value="<%=rs.getString("dep")%>"/></td>
                            </tr>
                            <tr>
                                <td>Enter Designation</td>
                                <td><input type="text" name="des" required class="form-control" value="<%=rs.getString("des")%>"/></td>
                            </tr>
                            <tr>
                                <td>Enter Month</td>
                                <td><input type="text" name="month" required class="form-control" placeholder="Enter Month"/></td>
                            </tr>
                            <tr>
                                <td>Enter Year</td>
                                <td><input type="number" name="year" required class="form-control" placeholder="Enter Year"/></td>
                            </tr>
                            <tr>
                                <td>Enter Basic Salary</td>
                                <td><input type="text" name="bs" required class="form-control" value="<%=rs.getInt("bs")%>"/></td>
                            </tr>
                            <tr>
                                <td>Enter Deduction (If Any)</td>
                                <td><input type="number" name="ded" required class="form-control" placeholder="Enter Deduction (If Any)"/></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                             </tr>
                        </table>
                        <% } %>
                        </form>   
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>