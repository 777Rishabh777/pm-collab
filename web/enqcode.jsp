<%-- 
    Document   : enqcode
    Created on : Apr 25, 2024, 11:49:00 AM
    Author     : 786ri
--%>
<%@page import="connect.DbManager"%>
<% 
    String name=request.getParameter("name");
    String contactno=request.getParameter("contactno");
    String emailid=request.getParameter("emailid");
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
    String query ="insert into enquiry(name, contactno, emailid, subject, message) values('"+name+"','"+contactno+"','"+emailid+"','"+subject+"','"+message+"')";
    DbManager db=new DbManager();
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Enquiry is Save');window.location.href='index.jsp';</script>");
    }
    else 
    {
        out.print("<script>alert('Enquiry is NOT Save');window.location.href='index.jsp';</script>");
    }
    
%>
