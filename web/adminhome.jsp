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
/*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*
*/

.video-background-holder {
  position: relative;
  background-color: black;
  height: calc(100vh - 72px);
  min-height: 25rem;
  width: 100%;
  overflow: hidden;
}

.video-background-holder video {
  position: absolute;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  z-index: 0;
  -ms-transform: translateX(-50%) translateY(-50%);
  -moz-transform: translateX(-50%) translateY(-50%);
  -webkit-transform: translateX(-50%) translateY(-50%);
  transform: translateX(-50%) translateY(-50%);
}

.video-background-content {
  position: relative;
  z-index: 2;
}

.video-background-overlay {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: black;
  opacity: 0.5;
  z-index: 1;
}

/*
*
* ==========================================
* FOR DEMO PURPOSES
* ==========================================
*
*/

code {
  padding: 0 0.15rem;
  background: #f5f5f5;
  border-radius: 0.2rem;
}
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="../adminzone/adminheader.jsp" %>

            </div>
            <div class="row">
                <div class="col-sm-12" style="background-color: lightseagreen; " >
                    <!-- Background video -->
                <div class="video-background-holder">
                <div class="video-background-overlay"></div>
                <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
                <source src="../images/admin.mp4" type="video/mp4">
                 </video>
                    <div class="video-background-content container h-100">
                    <div class="d-flex h-100 text-center align-items-center">
                    <div class="w-100 text-white">
                        <h1 class="display-4" style="color:white;font-weight: bold;">Welcome Admin</h1>
                        <p class="lead mb-0">Maintaining employee and payroll records</p>
                    </div>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
             <%@include file="../footer.jsp"%>
      </div>
    </body>
</html>
<% } %>