<%--
    Document   : adminhome
    Created on : May 3, 2024, 10:41:53 AM
    Author     : 786ri
--%>
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

            
            <div class="row-fluid">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    <form class="form-group col-8 align-item-center" action="update.jsp" method="post" style="padding: 50px; margin: 0px auto" >
                        <%
                                    String empid=request.getParameter("empid");
                                %>
                            <input type="hidden" name="empid" value="<%=empid%>"/>
                        <table class="table " style="margin: auto; background-color: transparent">
                            <tr>
                                <td>Enter Basic Salary</td>
                                
                                <td><input type="number" name="bs" required class="form-control" placeholder="Enter Employee Basic Salary"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                             </tr>
                        </table>
                    </form>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>