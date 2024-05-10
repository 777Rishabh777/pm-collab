<%-- 
    Document   : adminchangepassword
    Created on : May 4, 2024, 11:23:23 AM
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

            <form class="form-group" action="changeadmincode.jsp" method="post">
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
            <div class="row">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>