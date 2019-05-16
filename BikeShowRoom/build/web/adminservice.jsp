3<%-- 
    Document   : adminservice
    Created on : 12 Mar, 2017, 10:15:30 AM
    Author     : Ankith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"style="color: blue;text-align: center">Service Request List <%--<img style="-webkit-user-select: none" src="images/modellist.bmp"> --%></td> </tr> 
    <tr><td style="color: blue">Bike Name</td><td style="color: blue">Service details</td></tr>
<% 
                rst=stmt.executeQuery("select * from modeltab");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("ModelName")+ " </td> <td> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

