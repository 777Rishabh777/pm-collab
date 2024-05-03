<%-- 
    Document   : registration
    Created on : Apr 26, 2024, 10:34:44 AM
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
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');

*, body {
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    -moz-osx-font-smoothing: grayscale;
}

html, body {
    height: 100%;
    
}


.form-holder {
       margin-top: 50px;
       background:url(images/regback.jpg)no-repeat;
        background-size:cover;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 1200px;
}

.form-holder .form-content {
    position: relative;
    text-align: center;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    align-items: center;
    padding: 60px;
}

.form-content .form-items {
    border: 3px solid #fff;
    padding: 40px;
    display: inline-block;
    width: 100%;
    min-width: 540px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    text-align: left;
    -webkit-transition: all 0.4s ease;
    transition: all 0.4s ease;
    background-color: #198754;
    box-shadow: 10px 20px 20px 0px grey;
}

.form-content h3 {
    color: #fff;
    text-align: left;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 5px;
}

.form-content h3.form-title {
    margin-bottom: 30px;
}

.form-content p {
    color: #fff;
    text-align: left;
    font-size: 17px;
    font-weight: 300;
    line-height: 20px;
    margin-bottom: 30px;
}


.form-content label, .was-validated .form-check-input:invalid~.form-check-label, .was-validated .form-check-input:valid~.form-check-label{
    color: #fff;
}

.form-content input[type=text], .form-content input[type=password], .form-content input[type=email], .form-content select {
    width: 100%;
    padding: 9px 20px;
    text-align: left;
    border: 0;
    outline: 0;
    border-radius: 6px;
    background-color: #fff;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    margin-top: 16px;
}


.btn-primary{
    background-color: black;
    
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active{
    background-color: black;
    outline: none !important;
    border: none !important;
     box-shadow: none;
    color: black;
}

.form-content textarea {
    position: static !important;
    width: 100%;
    padding: 8px 20px;
    border-radius: 6px;
    text-align: left;
    background-color: #fff;
    border: 0;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    outline: none;
    resize: none;
    height: 120px;
    -webkit-transition: none;
    transition: none;
    margin-bottom: 14px;
}

.form-content textarea:hover, .form-content textarea:focus {
    border: 0;
    background-color: #ebeff8;
    color: #8D8D8D;
}

.mv-up{
    margin-top: -9px !important;
    margin-bottom: 8px !important;
}

.invalid-feedback{
    color: #ff606e;
}

.valid-feedback{
   color: #2acc80;
}
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.jsp" %>
                   <div class="form-body-fluid">
        <div class="row-fluid">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Register Today</h3>
                        <p>Fill in the data below.</p>
                        <form class="requires-validation" novalidate action="regcode.jsp" method="post">
                            <div class="col-md-12">
                               <input class="form-control" type="number" name="empid" placeholder="Employee ID" required>
                               <div class="valid-feedback">Employee ID field is valid!</div>
                               <div class="invalid-feedback">Employee ID field cannot be blank!</div>
                            </div>
                            <div class="col-md-12">
                               <input class="form-control" type="text" name="empname" placeholder="Full Name" required>
                               <div class="valid-feedback">Employee Name field is valid!</div>
                               <div class="invalid-feedback">Employee Name field cannot be blank!</div>
                            </div>
                            <div class="col-md-12 mt-3">
                            <label class="mb-3 mr-1" for="gender">Gender: </label>

                            <input type="radio" class="btn-check" name="gender" id="male" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" style="color:grey" for="male">Male</label>

                            <input type="radio" class="btn-check" name="gender" id="female" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" style="color:grey" for="female">Female</label>

                            <input type="radio" class="btn-check" name="gender" id="secret" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" style="color:grey" for="secret">Secret</label>
                               <div class="valid-feedback mv-up">You selected a gender!</div>
                                <div class="invalid-feedback mv-up">Please select a gender!</div>
                            </div>
                            
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="address" placeholder="Address" required>
                                 <div class="valid-feedback">Address field is valid!</div>
                                 <div class="invalid-feedback">Address field cannot be blank!</div>
                            </div><br/>
 
                            <div class="col-md-12">
                                <input class="form-control" type="number" name="contactno" placeholder="Contact number" required>
                                 <div class="valid-feedback">Contact Number field is valid!</div>
                                 <div class="invalid-feedback">Contact Number cannot be blank!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="email" name="email" placeholder="E-mail Address" required>
                                 <div class="valid-feedback">Email field is valid!</div>
                                 <div class="invalid-feedback">Email field cannot be blank!</div>
                            </div>
                            
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="Dep" placeholder="Department" required>
                                 <div class="valid-feedback">Department field is valid!</div>
                                 <div class="invalid-feedback">Department field cannot be blank!</div>
                            </div>

                         
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="des" placeholder="Designation" required>
                                 <div class="valid-feedback">Designation field is valid!</div>
                                 <div class="invalid-feedback">Designation field cannot be blank!</div>
                            </div>
                            <br>
                            
                            <div class="col-md-12">
                                <label class="form-check-label" style="color:#ccffcc">Date of Joining</label>
                                <input class="form-control" type="date" name="doj" placeholder="date of Joining" required>
                                 <div class="valid-feedback">Date field is valid!</div>
                                 <div class="invalid-feedback">date field cannot be blank!</div>
                            </div>
                           <div class="col-md-12">
                              <input class="form-control" type="password" name="password" placeholder="Enter Password" required>
                               <div class="valid-feedback">Password field is valid!</div>
                               <div class="invalid-feedback">Password field cannot be blank!</div>
                           </div>
                            <div class="col-md-12">
                              <input class="form-control" type="password" name="password" placeholder="Confirm Password" required>
                               <div class="valid-feedback">Confirm Password field is valid!</div>
                               <div class="invalid-feedback">Confirm Password field cannot be blank!</div>
                           </div><br>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">I confirm that all data are correct</label>
                         <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
                        </div>
                  

                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-success"style="width: 500px ; height: 50px">Register Here</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script>(function () {
'use strict'
const forms = document.querySelectorAll('.requires-validation')
Array.from(forms)
  .forEach(function (form) {
    form.addEventListener('submit', function (event) {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()</script>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>