<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/drivelist.bmp"> </td> </tr>  
    
<% 
                rst=stmt.executeQuery("select * from TestDriveTab order by tdNo desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString(1)+ " </td><td height=20>"+rst.getString(2)+ " </td><td height=20>"+rst.getString(3)+ " </td> <td> " + rst.getString(4)+ "</td><td> " + rst.getString(5)+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
