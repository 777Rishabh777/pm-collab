<%-- 
    Document   : changepmscode
    Created on : May 1, 2024, 12:12:11 PM
    Author     : 786ri
--%>

<%@page import="connect.DbManager"%>
<% 
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    if(newpassword.equals(confirmpassword))
    {
     DbManager db=new DbManager();
     String empid=session.getAttribute("empid").toString();
     String query="update login set password='"+newpassword+"' where empid='"+empid+"' and password='"+oldpassword+"'"; 
            if(db.insertUpdateDelete(query)==true) {
            response.sendRedirect("logout.jsp");
            }
    }
    else
    {
        out.print("<script>alert('New Password & Confirm Password are not same');window.location.href='changepassword.jsp';</script>");
    }
%>
