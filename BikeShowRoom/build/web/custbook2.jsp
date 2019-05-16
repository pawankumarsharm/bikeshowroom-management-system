
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Cust Main </A> <BR> 

<%
		

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<% 
                int t21=0;int t22=0;int t23=0;int t24=0;int t25=0;
                String t1a=request.getParameter("vvar");
                session.setAttribute("vvar",t1a);
                session.setAttribute("vpvar","");
                rst=stmt.executeQuery("select * from vehiclePricetab where vehiclename='" + t1a + "'");
		while( rst.next())
                {
                t21= Integer.parseInt(rst.getString("price"));
                t22= Integer.parseInt(rst.getString("roadtax"));
                t23= Integer.parseInt(rst.getString("insurance"));
                t24= Integer.parseInt(rst.getString("regcharges"));
                t25=t21+t22+t23+t24;
                String t6=request.getParameter("text6");
                session.setAttribute("vpvar",Integer.toString(t25));
                }
                rst.close();

%>  
        
        
    <form method="POST"    action="custbook3.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/book_1.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1" value="<% out.println(t1a); %>" readonly></td> </tr>
    <tr> <td height="40"> Vehicle Price </td> <td> <input type="text" name="text2" value="<% out.println(t21); %>" readonly></td> </tr>
    <tr> <td height="40"> Road Tax </td> <td> <input type="text" name="text3" value="<% out.println(t22); %>" readonly></td> </tr>
    <tr> <td height="40"> Insurance Tax </td> <td> <input type="text" name="text4" value="<% out.println(t23); %>" readonly></td> </tr>
    <tr> <td height="40"> Registration Charges </td> <td> <input type="text" name="text5" value="<% out.println(t24); %>" readonly></td> </tr>
    <tr> <td height="40"> Total Amount </td> <td> <input type="text" name="text5" value="<% out.println(t25); %>" readonly></td> </tr>
    <tr> <td height="40"> Select Colors </td> <td> <select name="text6"><option>Red</option><option>Black
                </oPTION><option>Blue</option><option>White</option></select>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Book Bike &nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>