<%-- 
    Document   : customerhome
    Created on : Apr 27, 2024, 12:09:22 PM
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
                    
                </div>
            </div>
            <%@include file="../footer.jsp"%>
        </div>  
    </body>
</html>
<% } %>