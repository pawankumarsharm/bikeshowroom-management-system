<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/emplist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from empDetTab order by empcode");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("empcode")+ " </td><td height=20>"+rst.getString("empname")+ " </td><td height=20>"+rst.getString("phonenos")+ " </td> <td> " + rst.getString("designation")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
