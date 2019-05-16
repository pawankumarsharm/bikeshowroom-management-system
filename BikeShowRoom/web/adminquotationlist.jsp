<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
        <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/quotation1.bmp" width="100%"> </td> </tr>  
    <tr><td>Vehicle name</td><td>Price</td><td>Road Tax</td><td>Insurance</td><td>Registrations</td><td>Total</td></tr>
<% int t21,t22,t23,t24,t25;
                rst=stmt.executeQuery("select * from vehiclePriceTab order by vehiclename");
		
                while( rst.next())
                {
                    t21= Integer.parseInt(rst.getString("price"));
                t22= Integer.parseInt(rst.getString("roadtax"));
                t23= Integer.parseInt(rst.getString("insurance"));
                t24= Integer.parseInt(rst.getString("regcharges"));
                //out.println("<tr> <td height=20>"+rst.getString("vehiclename")+ " </td><td height=20>"+rst.getString("Price")+ " </td><td height=20>"+rst.getString("RoadTax")+ " </td> <td> " + rst.getString("Insurance")+ "</td><td> " + rst.getString("RegCharges")+ "</td><td> " + rst.getString("total") +"</td></tr>" );
                out.println("<tr> <td height=20>"+rst.getString("vehiclename")+ " </td><td height=20>"+rst.getString("Price")+ " </td><td height=20>"+rst.getString("RoadTax")+ " </td> <td> " + rst.getString("Insurance")+ "</td><td> " + rst.getString("RegCharges")+ "</td></tr>" );
                } 
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
