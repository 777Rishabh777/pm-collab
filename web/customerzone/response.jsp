<%-- 
    Document   : response
    Created on : May 2, 2024, 10:44:13 AM
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
        <div class="container-fluid">
             <%@include file="menu.jsp" %>
            <div class="row mt-2">
                <div class="col-sm-12" style="background-color: #ff9999; min-height:600px">
                    <h2 style="text-align: center; margin-bottom: 25px; margin-top:20px; color: white">Submit Your Response</h2>
                    <form class="form-group" action="responsecode.jsp" method="post">
                        <table class="table" style="margin: auto; background-color: transparent;">
                            <tr>
                                <td>Select Response Type</td>
                                <td><select name="responsetype" class="form-select">
                                        <option value=" " class="form-control">Select Option</option>
                                        <option value="feedback" class="form-control">Feedback</option>
                                        <option value="complaint" class="form-control">Complaint</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Subject</td>
                                <td><input type="text" name="subject" required class="form-control" placeholder="Enter your subject"/></td>
                            </tr>
                            <tr>
                                <td>Enter Your Response</td>
                                <td><textarea name="responsetext" required class="form-control" placeholder="Enter your Response"/></textarea></td>
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