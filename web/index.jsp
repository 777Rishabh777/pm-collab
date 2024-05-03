<%-- 
    Document   : index
    Created on : Apr 22, 2024, 10:30:45 AM
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
        <script src="js/main.js" type="text/javascript"></script>

        
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container-fluid">
            
            <section id="home" class="banner_wrapper" ">
                <div class="container">
                    <div class="row align-item-center ">
                        <div class="col-md-6 header-img-section ">
                            <img src="images/banner3.png" class="img-fluid" alt="banner">
                        </div>
                        <div class="col-md-6 my-5 my-md-0 text-center text-md-start">
                            <p class="banner-subtitle">Modern payroll for small and mid-size companies.</p>
                            <h1 class="banner-title">Simplifying <span>PayRoll ,</span> Empowering<span> Business</span></h1>
                            <p class="banner-title-text">Fast, easy and intuitive payroll processing. Error-free and fully compliant payroll process.</p>
                            <div class="learn-more-btn-section">
                                <a class="nav-link learn-more-btn btn-header" href="registration.jsp">Register Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
              <div class="Card">
                  
                <h1>A Blend Of Orthodox And </h1>
                <h1>Smart Features</h1>

                    <p>The perfect solution for your HR & payroll needs. You can be assured to concentrate on your business growth as we manage your HR & Payroll. Best of all, it's a Free HR payroll software.</p>
                </div>
                
            <div class="row1-container">
                <div class="box box-down cyan">
                    <h2>Simple HR Software</h2>
                    <p>Manage your employees with ease and analyze them easily.</p>
                    <img src="images/icon1.png" alt="">
                </div>

                 <div class="box red">
                     <h2>Employee Expense Management</h2>
                     <p>Employees can claim expenses incurred & the same can be reimbursed in a payroll.</p>
                     <img src="images/icon4.png" alt="">
                 </div>

                <div class="box box-down blue">
                    <h2>Leave Management</h2>
                    <p>Flexible to customize different leave types and set up complex leave policies. Easy to apply, view leave request status and reports.</p>
                    <img src="images/icon2.png" alt="">
                </div>
            </div>
                <div class="row2-container">
                    <div class="box orange">
                    <h2>Reports</h2>
                    <p>Reports provide a wealth of information. Provides various reports to view employee information, payroll tax liabilities and many more.</p>
                        <img src="images/icon3.png" alt="">
                    </div>
                </div>
            
            
           <ul class="cards-fluid">
               
  <li class="cards__item">
    <div class="card">
      <div class="card__content">
        <div class="card__title">Salary Information  </div>
       
        <p class="card__text">Fill up salary details like allowances, deductions, payment mode, commissions, bonus, incentives and bank information.</p>
        <img src="images/card3.png" alt="icon" width="100px" height="100px">
      </div>
    </div>
  </li>
  <li class="cards__item">
    <div class="card">
      <div class="card__content">
        <div class="card__title">Shift Management</div>
        
        <p class="card__text">Flexibility to customize shift policies, optimizes your work schedules and avoid scheduling conflicts for your workforce.</p>
      <img src="images/card2.png" alt="icon" width="100px" height="100px">
      </div>
    </div>
  </li>
  <li class="cards__item">
    <div class="card">
      <div class="card__content">
        <div class="card__title">
IT Declaration</div>
          
        <p class="card__text">Handles employee's IT saving investments. It automatically calculates the Income Tax and surcharge based on employee declared savings.</p>
        <img src="images/card1.png" alt="icon" width="100px" height="100px" >
      </div>
    </div>
  </li>
           </ul>
            
           
            
            
            <div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-11">
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="border rounded ">
                            <div class="row no-gutters">
                                <div class="col-md-7"><img class="img-fluid " src="images/banner2.png" height="600px" width="500px"></div>
                                <div class="col-md-5">
                                    <div class="bg-white p-3 px-4 testimonials">
                                        <p class="text-justify">Discover the ultimate solution for your payroll needs with the best HR & Payroll software in India. Our cloud-based payroll services redefine efficiency and accuracy, offering you a seamless experience tailored to the complexities of the Indian market. Say goodbye to manual calculations and tedious paperwork. Our cloud payroll systems, handle everything from pay period management to tax filing, ensuring compliance with local tax laws every step of the way.

                                                       <br><br> Experience the power of streamlined HR processes with the best online payroll software, SumoPayroll. Our payroll management system caters to businesses of all sizes, including small enterprises, providing them with the tools they need to thrive. With features like an intuitive employee portal and automated voluntary deductions, managing employee data and hours worked has never been easier. Join the ranks of satisfied clients who have found success with our cloud-based payroll system<br></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        </div>
    </div>
    </div>
            
            
        <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
