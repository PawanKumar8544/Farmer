<%-- 
    Document   : delenq
    Created on : Sep 18, 2023, 11:31:25 AM
    Author     : 123oj
--%>
<%@page import="dbPack.dbManager"%>
<%
    String id=request.getParameter("id");
    dbManager dm=new dbManager();
    String query="delete from enquiry where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('Enquiry is deleted'); window.location.href='enquiry.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Enquiry is not deleted'); window.location.href='enquiry.jsp';</script>");
    }
%>
