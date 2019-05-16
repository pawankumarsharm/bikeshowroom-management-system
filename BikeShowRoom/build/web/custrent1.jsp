<%-- 
    Document   : custrent1
    Created on : 1 Mar, 2017, 7:33:50 AM
    Author     : Ankith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Customer Main </A> <BR> 

<%
		int t11=0;int t12=0;int t13=0;int t14=0;
                String t1=request.getParameter("text1");
		if(t1!=null&&t1!=""){
                String t2=request.getParameter("text2");
                //String t3=request.getParameter("text3");
                //String t4=request.getParameter("text4");
                //String t5=request.getParameter("text5");
                try{
                t11=Integer.parseInt(t2);
                //t12=Integer.parseInt(t3);
                //t13=Integer.parseInt(t4);
                //t14=Integer.parseInt(t5);
                
                               }
                catch( NumberFormatException exception1) {
                    
                out.println("Conversion Error");
                t11=0;
                               }
		
                
                if(t11!=0){
                //stmt.executeUpdate("delete from VehiclePriceTab where vehiclename='" + t1 + "'");
		stmt.executeUpdate("insert into rentTab value('" + t1 + "','" + t11 + "')");
		response.sendRedirect("custmainpage.jsp");}}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<% 
                int t21=0;int t22=0;int t23=0;int t24=0;
                String t1a=request.getParameter("vvar");
                rst=stmt.executeQuery("select rent from vehiclepricetab where vehiclename='" + t1a + "'");
		while( rst.next())
                {
                t21= Integer.parseInt(rst.getString("rent"));
                //t22= Integer.parseInt(rst.getString("roadtax"));
                //t23= Integer.parseInt(rst.getString("insurance"));
                //t24= Integer.parseInt(rst.getString("regcharges"));
                }
                rst.close();

%>  
        
        
    <form method="POST"    action="custrent1.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/vehicle.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1" value="<% out.println(t1a); %>" readonly></td> </tr>
    <tr> <td height="40"> Vehicle Rent </td> <td> <input type="text" name="text2" value="<% out.println(t21); %>" readonly></td> </tr>
    <%--<tr> <td height="40"> Road Tax </td> <td> <input type="text" name="text3" value="<% out.println(t22); %>"></td> </tr>
    <tr> <td height="40"> Insurance Tax </td> <td> <input type="text" name="text4" value="<% out.println(t23); %>"></td> </tr>
    <tr> <td height="40"> Registration Charges </td> <td> <input type="text" name="text5" value="<% out.println(t24); %>"></td> </tr>--%>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
