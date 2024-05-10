<%@page import="connect.DbManager"%>
<%
    String empid=request.getParameter("empid");
    String empname=request.getParameter("empname");
    String dep=request.getParameter("dep");
    String des=request.getParameter("des");
    String month=request.getParameter("month");
    String year=request.getParameter("year");
    int bs=Integer.parseInt(request.getParameter("bs"));
    double ded=Double.parseDouble(request.getParameter("ded"));
    double hra,da,gs,total;
    if(bs<=15000)
    {
    hra=bs*10/100;
    da=bs*50/100;
    }
    else if (bs>15000 && bs<=30000)
    {
    hra=bs*15/100;
    da=bs*60/100;
    }
    else if(bs>30000 && bs<=45000)
    {
    hra=bs*20/100;
    da=bs*70/100;
    }
    else
    {
    hra=bs*25/100;
    da=bs*80/100;
    }
    gs=bs+hra+da;
    total=gs-ded;
    DbManager db=new DbManager();
    String query="insert into payroll(empid,empname,dep,des,month,year,bs,hra,da,gs,ded,total) values('"+empid+"','"+empname+"','"+dep+"','"+des+"','"+month+"','"+year+"','"+bs+"','"+hra+"','"+da+"','"+gs+"','"+ded+"','"+total+"')";
    if(db.insertUpdateDelete(query))
{
out.print("<script>alert('Salary Updated');window.location.href='employees.jsp';</script>");
}
else
{
out.print("<script>alert('Salary Not Updated');window.location.href='employees.jsp';</script>");
}
%>