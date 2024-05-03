<%-- 
    Document   : contactus
    Created on : Apr 23, 2024, 10:56:11 AM
    Author     : 786ri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayWise-Payroll Management System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="row mt-2">
                <div class="col-sm-4" style="background-color: #ff6666; height: auto; min-height: 700px;"></div>
                <div class="col-sm-8" style="background-color: #ff9999; height: auto; min-height: 700px">
                    <h2 style="text-align: center ; background-color: #ff6666; color: white">Enquiry Form</h2>
                    <form class="form-group" action="enqcode.jsp" method="post">
                        <table class="table">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control" placeholder="Enter Your Name"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact No</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control" placeholder="Enter Your Contact Number"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Email address</td>
                                <td>
                                    <input type="email" name="emailid" class="form-control" placeholder="Enter Your Email Address"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Subject</td>
                                <td>
                                    <input type="text" name="subject" class="form-control" placeholder="Enter Your Subject"/> 
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Message</td>
                                <td>
                                    <textarea name="message" class="form-control" placeholder="Enter Your Message"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>