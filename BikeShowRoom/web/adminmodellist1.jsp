<%-- 
    Document   : adminmodellist1
    Created on : 15 Mar, 2017, 1:06:03 PM
    Author     : Ankith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="headfile.jsp"%>
<%@include file="connfile.jsp"%>

<%

String t1=request.getParameter("text1");
stmt.executeUpdate("delete from modeltab where ModelName='" +t1+ "'");
out.println("Delete Successfull");
response.sendRedirect("adminmodellist.jsp");

%>
           