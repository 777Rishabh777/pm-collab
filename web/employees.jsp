<%-- 
    Document   : customers
    Created on : May 3, 2024, 12:11:24 PM
    Author     : 786ri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PayWise-Payroll management System</title>
        <link href="../css/bootstrap.css" rel="stylesheet" />
        <script src="../js/bootstrap.bundle.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <style>
            .header_wrapper .navbar{
    -webkit-transition: all .2s linear;
    -o-transition: all .2s linear;
    -moz-transition: all .2s linear;
    -ms-transition:all .2s linear;
    transition: all .2s linear;
   
}
.header_wrapper .navbar-brand img{
    max-width: 210px;
    margin-left: 100px;
    height: auto;
}
.header_wrapper .menu-navbar-nav {
    width: 70%;
    display:flex;
    justify-content:center;
}
.header_wrapper .nav-item{
    margin: 0 20px;
    
}
.header_wrapper .nav-item .nav-link{
    font-weight: bold;
    font-size: 18px;
    color: darkgray;
    line-height: 1;
    
}
.header_wrapper .nav-item .nav-link.active{
    color:green;
}
.banner_wrapper{
    padding: 100px 0 125px;
    background:url(../images/backk.jpg)no-repeat;
    background-size:cover;
    align-items:center;
    justify-content:center;
     width: auto;
    height: 800px;
    
}
.banner_wrapper .banner-subtitle{
    font-size: 24px;
    font-weight: 700;
    line-height: 1.5;
    margin-bottom: 15px;
    color: grey;
   margin-top: 200px; 
    
}
.banner_wrapper .banner-title{
    font-family: serif;
    font-weight: 800;
    font-size: 60px;
    text-transform: capitalize;
    line-height: 1.15;
    margin-bottom: 25px;
    color: black;
}
.banner_wrapper .banner-title span{
    color: green;
}
.banner_wrapper .banner-title-text{
    font-size: 17px;
    font-weight: 600;
    line-height: 1.5;
    margin-bottom: 40px;
    max-width: 450px;
    color: grey;
}
.banner_wrapper .learn-more-btn-section {
    display:flex;
    justify-content:left;
    width: 150px;
    height:50px;
    border-radius: 20px;
    align-items:center;
    margin-top: 20px;
    background-color: blue;
    color: white;
    padding-left: 25px;
}
.banner_wrapper .header-img-section img{
    width: 100%;
    margin-top: 20px;
    animation: float 5s ease-in-out infinite;
    
}
@keyframes float{
    0%{
        transform:translateY(0px);
    }
    50%{
        transform:translateY(20px);
        
    }
    100%{
        transform:translateY(0px);
    }
}


.attribution { 
    font-size: 11px; text-align: center; 
}
.attribution a { 
    color: hsl(228, 45%, 44%); 
}

h1:first-of-type {
    font-weight: var(weight1);
    color: green;

}

h1:last-of-type {
    color: black;
}

@media (max-width: 400px) {
    h1 {
        font-size: 1.5rem;
    }
}
*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    background: rgba( 71, 147, 227, 1);
}
h2{
    text-align: center;
    font-size: 30px;
    font-weight: bolder;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: white;
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 20px 10px 10px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 18px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 18px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 150px;
        font-size: 18px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}

        </style>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="../adminzone/adminheader.jsp" %>

            </div>
            <div class="row-fluid">
                <div class="col-sm-12" style="background-color:#99ff99; min-height: 1000px" >
                    <h2 style="color:blue; text-align: center;">View all Employees</h2>
                    <div class="table-wrapper">
                    <table class="fl-table" style="margin: auto;">
                        <thead>
                        <tr>
                            <th>Employee ID</th>
                            <th>Employee Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Department</th>
                            <th>Designation</th>
                            <th>Date of Joining</th>
                            <th>BS</th>
                            <th>Update BS</th>
                        </tr>
                        </thead>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from registration";
                            ResultSet rs=db.select(query);
                            while (rs.next())
                                    {
                            
                        %>
                        <tbody>
                        <tr>
                            <td><%=rs.getString("empid")%></td>
                            <td><%=rs.getString("empname")%></td>
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailid")%></td>
                            <td><%=rs.getString("dep")%></td>
                            <td><%=rs.getString("des")%></td>
                            <td><%=rs.getString("doj")%></td>
                            <td><%=rs.getInt("bs")%></td>
                            <td>
                                <a href="updatebs.jsp?empid=<%=rs.getString("empid")%>">
                                    <button type="button" class="btn btn-success">Update BS</button>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                        <% } %>
                    </table>
                    </div>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
    </body>
</html>
