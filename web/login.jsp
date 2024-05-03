<%-- 
    Document   : login
    Created on : Apr 26, 2024, 12:17:53 PM
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
        <style>
 .form-group {
    max-width: 400px;
    margin: 40px auto;
    padding: 20px;
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

 .table {
    margin: auto;
    border-collapse: separate;
    border-spacing: 0 10px;
  }

 .table td {
    padding: 10px;
  }

 .table td:first-child {
    width: 30%;
    text-align: right;
  }

 .form-control {
    width: 100%;
    height: 40px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
  }

 .form-select {
    width: 100%;
    height: 40px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
  }

 .btn-success {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

 .btn-success:hover {
    background-color: #3e8e41;
  }

 .text-center {
    text-align: center;
    margin-top: 20px;
  }

 .text-center a {
    text-decoration: none;
    color: #337ab7;
  }

 .text-center a:hover {
    color: #23527c;
  }
</style>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp" %>
            <div class="row mt-2">
                <div class="col-sm-4" style="background-color: #ff6666; height: auto; min-height: 700px;"></div>
                <div class="col-sm-8" style="background-color: #ff9999; height: auto; min-height: 700px">
                    <h2 style="text-align: center; margin-top: 35px ; margin-bottom: 25px; color: white">Login</h2>
                     <form class="form-group" action="logcode.jsp" method="post">
                        <table class="table" style="margin: auto">
                            <tr>
                                <td>User ID</td>
                                <td><input type="number" name="empid" placeholder="Enter your email to login"></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" placeholder="Enter your Password"></td>
                            </tr>
                            <tr>
                                <td>User Type</td>
                                <td><select name="usertype" class="form-select">
                                        <option value=" " class="form-control">Select Option</option>
                                        <option value="admin" class="form-control">Admin</option>
                                        <option value="empid" class="form-control">User</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Login</button>
                                </td>
                            </tr> 
                        </table>
                         <div class="text-center">
                            <p>Not a member? <a href="registration.jsp">Register</a></p>
                        </div>
                     </form>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
