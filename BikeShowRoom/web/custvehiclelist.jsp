<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/vehiclelist.bmp"> </td> </tr> 
    <tr><td>Vehicle name</td><td>Details</td><td>Model</td><td>Price</td></tr>
<% 
                rst=stmt.executeQuery("select * from vehicleTab order by vehiclename");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("vehiclename")+ " </td><td height=20>"+rst.getString("details")+ " </td><td height=20>"+rst.getString("modelname")+ " </td> <td> " + rst.getString("price")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

