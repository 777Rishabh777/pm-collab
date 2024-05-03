<%-- 
    Document   : responsecode
    Created on : May 2, 2024, 11:15:40 AM
    Author     : 786ri
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<% 
     String responsetype=request.getParameter("responsetype");
     String subject=request.getParameter("subject");
     String responsetext=request.getParameter("responsetext");
     String empid=session.getAttribute("empid").toString();
     DbManager db=new DbManager();
     String query="select * from registration where empid='"+empid+"'";
     ResultSet rs=db.select(query);
     if(rs.next())
     {
         String empname=rs.getString("empname");
         String contactno=rs.getString("contactno");
         String emailid=rs.getString("emailid");
         query="insert into response(name,contactno,emailid,responsetype,subject,responsetext) values('"+empname+"','"+contactno+"','"+emailid+"','"+responsetype+"','"+subject+"','"+responsetext+"')";
         if(db.insertUpdateDelete(query)==true)
         {
                 out.print("<script>alert('Response is Submitted');window.location.href='response.jsp';</script>");
         }
         else
         {
                out.print("<script>alert('Response is Not Submitted');window.location.href='response.jsp';</script>");
         }}
     
%>
