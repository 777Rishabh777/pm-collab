<%-- 
    Document   : changepassword
    Created on : May 1, 2024, 11:44:40 AM
    Author     : 786ri
--%>
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
        <div class="container">
             <%@include file="menu.jsp" %>
            <div class="row mt-2">
                <div class="col-sm-12" style="background-color: #ff9999; min-height:600px">
                    <div class="col-sm-6 mt-2 mx-auto"style=" border: 1px whitesmoke solid ;margin: 5px;margin-top: 20px"><h2 style="text-align: center; margin-bottom: 25px; margin-top:20px; color: white">Change  Password</h2>
                    <form class="form-group" action="changepmscode.jsp" method="post">
                        <table class="table" style=";margin: auto;">
                            <tr>
                                <td>Enter Old password</td>
                                <td><input type="text" name="oldpassword" required class="form-control" placeholder="Enter your old password"/></td>
                            </tr>
                            <tr>
                                <td>Enter new password</td>
                                <td><input type="text" name="newpassword" required class="form-control" placeholder="Enter your new password"/></td>
                            </tr>
                            <tr>
                                <td>Enter confirm password</td>
                                <td><input type="text" name="confirmpassword" required class="form-control" placeholder="Enter your confirm password"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Change</button>
                                </td>
                            </tr> 
                           
                        </table>
                    </form>
                 </div>
                </div>
            </div>
            <%@include file="../footer.jsp"%>
        </div>  
    </body>
</html>
<% } %>