<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/custlist.bmp"> </td> </tr>
    <tr><td>Username</td><td>Customer name</td><td>Address</td><td>Mobile number</td></tr>
<% 
                rst=stmt.executeQuery("select * from CustDetTab order by uName");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("uName")+ " </td><td height=20>"+rst.getString("custname")+ " </td><td height=20>"+rst.getString("cAdd")+ " </td> <td> " + rst.getString("MobileNo")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
