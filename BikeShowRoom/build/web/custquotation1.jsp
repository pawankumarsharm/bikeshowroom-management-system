
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Cust Main </A> <BR> 

<%
		

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<% 
                int t21=0;int t22=0;int t23=0;int t24=0;
                String t1a=request.getParameter("vvar");
                rst=stmt.executeQuery("select * from vehiclePricetab where vehiclename='" + t1a + "'");
		while( rst.next())
                {
                t21= Integer.parseInt(rst.getString("price"));
                t22= Integer.parseInt(rst.getString("roadtax"));
                t23= Integer.parseInt(rst.getString("insurance"));
                t24= Integer.parseInt(rst.getString("regcharges"));
                }
                rst.close();

%>  
        
        
    <form method="POST"    action="custmainpage.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/vehicle.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1" value="<% out.println(t1a); %>" readonly></td> </tr>
    <tr> <td height="40"> Vehicle Price </td> <td> <input type="text" name="text2" value="<% out.println(t21); %>" readonly></td> </tr>
    <tr> <td height="40"> Road Tax </td> <td> <input type="text" name="text3" value="<% out.println(t22); %>" readonly></td> </tr>
    <tr> <td height="40"> Insurance Tax </td> <td> <input type="text" name="text4" value="<% out.println(t23); %>" readonly></td> </tr>
    <tr> <td height="40"> Registration Charges </td> <td> <input type="text" name="text5" value="<% out.println(t24); %>" readonly></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Back &nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>