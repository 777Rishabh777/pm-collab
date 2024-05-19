<%-- 
    Document   : product
    Created on : May 10, 2024, 11:32:14 AM
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
        <title></title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="adminheader.jsp"%>
                <div class="row-fluid">
                    <div class="col-sm-12" style="background-color: yellow; min-height: 600px;">
                        <h2 style="color: blue; font-family: poppins; text-align: center; padding-top: 10px;">Add Products</h2>
                        <form class="form-group" method="post" action="../Upload" enctype="multipart/form-data">
                                <table class="table" style="margin:auto; width: 60%;">
                                    <tr>
                                        <td>Enter Product Id</td>
                                        <td><input type="text" placeholder="Enter product id" name="productid" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Enter Product Name</td>
                                        <td><input type="text" placeholder="Enter product name" name="productname" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Enter MFG. Date</td>
                                        <td><input type="date" name="mfgdate" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Enter EXP. Date</td>
                                        <td><input type="date" name="expdate" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Enter Price</td>
                                        <td><input type="number" placeholder="Enter Product Price" name="price" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td>Upload Product Image</td>
                                        <td><input type="file"  name="productimage" class="form-control" required/></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><button type="submit" class="btn btn-primary col-sm-12">Add Product</button></td>
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