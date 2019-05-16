<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/modellist.bmp"> </td> </tr> 
    <tr><td>Model name</td><td>Model details</td></tr>
<% 
                rst=stmt.executeQuery("select * from ModelTab order by modelname");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("modelname")+ " </td> <td> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  



</td><td width="25%"></td></tr>
</table>
    

     <form method="POST" action="adminmodellist1.jsp">
   <table>
            <tr><td>Model Name</td><td><input type="text" name="text1" value=""></td></tr>
            <tr><td></td><td><input type="submit" name="delete" value="delete"</td></tr>
        
        
   </table>
     </FORM>
</table>

<%@ include file="footerfile.jsp"%>

