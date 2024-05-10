<%-- 
    Document   : delenq
    Created on : May 4, 2024, 12:21:29 PM
    Author     : 786ri
--%>

<%@page import="connect.DbManager"%>
<% 
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from enquiry where empid='"+id+"'";
    if(db.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('Deleted');window.location.href='enquiries.jsp';");
    }
    else
    {
        out.print("<script>alert('No Deleted');window.location.href='enquiries.jsp';");
    }
%>
