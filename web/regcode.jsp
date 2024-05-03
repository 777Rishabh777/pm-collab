<%-- 
    Document   : regcode
    Created on : Apr 26, 2024, 11:32:51 AM
    Author     : 786ri
--%>
 
    <%@page import="connect.DbManager"%>
<% 
    String empid=request.getParameter("empid");
    String empname=request.getParameter("empname");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailid=request.getParameter("emailid");
    String dep=request.getParameter("dep");
    String des=request.getParameter("des");
    String doj=request.getParameter("doj");
    String password=request.getParameter("password");
    String usertype="user";
    DbManager db=new DbManager();
    String query1 ="insert into registration values('"+empid+"','"+empname+"','"+gender+"','"+address+"','"+contactno+"','"+emailid+"','"+dep+"','"+des+"','"+doj+"')";
    String query2 ="insert into login values('"+empid+"','"+password+"','"+usertype+"')";
    if(db.insertUpdateDelete(query1)==true)
    {
        if(db.insertUpdateDelete(query2)==true)
        {
            out.print("<script>alert('Registration is Done');window.location.href='index.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Registration is Not Done');window.location.href='index.jsp';</script>");
        }
    }
    
    
    
%>
