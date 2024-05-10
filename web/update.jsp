<%@page import="connect.DbManager"%>
<%
String empid=request.getParameter("empid");
int bs=Integer.parseInt(request.getParameter("bs"));
DbManager db=new DbManager();
String query="update registration set bs='"+bs+"' where empid='"+empid+"'";
if(db.insertUpdateDelete(query))
{
out.print("<script>alert('Salary Updated');window.location.href='employees.jsp';</script>");
}
else
{
out.print("<script>alert('Salary Not Updated');window.location.href='employees.jsp';</script>");
}
%>