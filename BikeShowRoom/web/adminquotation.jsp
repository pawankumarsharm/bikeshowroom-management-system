
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

<%
		int t6=0;
                String t1=request.getParameter("text1");
		
		
                
                if(t1!=null&&t1!=""){
		response.sendRedirect("adminquotation1.jsp?vvar="+t1);
		}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminquotation.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/quotation1.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
   
    
    <tr> <td height="40"> Vehicle Name </td> <td> 

<% 

        
                rst=stmt.executeQuery("select vehicleName from vehicleTab order by vehiclename");
		out.println("<select  name=text1 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("vehiclename")+ " </option>");
                }
                out.println("</select>");
                rst.close();

%>  

     </td> </tr>   
    

    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Next &nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
