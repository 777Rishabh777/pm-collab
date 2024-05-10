<%-- 
    Document   : adminheader
    Created on : May 3, 2024, 11:51:27 AM
    Author     : 786ri
--%>

 <div class="row">
                
                <div class="col-sm-12" style="background-color: green;color:white;min-height: 80px; text-align: center; line-height: 80px; font-size: 30px">
                    Welcome to PayWise Admin
                </div>
        </div>
                 <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="adminhome.jsp"><img src="../images/Paybg.png" alt="logo" style="width:180px; height:40px;" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminhome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="employees.jsp">Employees</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="enquiries.jsp">Enquiries</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="leave.jsp">Leave</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="complaint.jsp">Complaints</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="payroll.jsp">Payroll</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="viewpayroll.jsp">View Payslips</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Admin
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="adminchangepassword.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="../customerzone/logout.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
