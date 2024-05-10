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

            </div>
            <div class="row">
                <div class="col-sm-12" style="background-color: lightseagreen; min-height: 1000px" >
                    
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>