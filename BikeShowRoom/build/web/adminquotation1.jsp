        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

<%

		int t11=0;int t12=0;int t13=0;int t14=0;int t15=0;int t16;
                String t1=request.getParameter("text1");
		if(t1!=null&&t1!=""){
                String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                String t4=request.getParameter("text4");
                String t5=request.getParameter("text5");
                String t6=request.getParameter("text6");
                String t25=request.getParameter("text7");
                try{
                t11=Integer.parseInt(t2);
                t12=Integer.parseInt(t3);
                t13=Integer.parseInt(t4);
                t14=Integer.parseInt(t5);
                t15=Integer.parseInt(t6);
                t16=Integer.parseInt(t25);
                               }
                catch( NumberFormatException exception1) {
                    
                out.println("Conversion Error");
                t11=0;
                               }
		t16=t11+t12+t13+t14+t15;
                
                if(t11!=0){
                stmt.executeUpdate("delete from VehiclePriceTab where vehiclename='" + t1 + "'");
		stmt.executeUpdate("insert into VehiclePriceTab value(' + t1 + ',' + t11 + ',' + t12 + ',' + t13 + ',' + t14 + ',' +t15 + ',' +t16 + ')");
                stmt.executeUpdate("update VehiclePriceTab set vehiclename='+t1a+',price='+t21+',RoadTax='+t22+',Insurance='+t23+',RegCharges='+t24+',rent='+t25+' vehiclename='+t1a+'");
		response.sendRedirect("adminmainpage1.jsp");}}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<% 
                int t21=0;int t22=0;int t23=0;int t24=0;int t25=0;int t26=0;int t27=0;
                String t1a=request.getParameter("vvar");
                rst=stmt.executeQuery("select * from vehiclePricetab where vehiclename='" + t1a + "'");
                //rst=stmt.executeQuery("update vehiclePricetab set where vehiclename='" + t1a + "'");
		while( rst.next())
                {
                t21= Integer.parseInt(rst.getString("price"));
                t22= Integer.parseInt(rst.getString("roadtax"));
                t23= Integer.parseInt(rst.getString("insurance"));
                t24= Integer.parseInt(rst.getString("regcharges"));
                 t25= Integer.parseInt(rst.getString("rent"));
                t27= t21+t22+t23+t24+t25;
                }
                rst.close();

%>  
     
        
    <form method="POST"    action="adminquotation1.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/vehicle.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1" value="<% out.println(t1a); %>"></td> </tr>
    <tr> <td height="40"> Vehicle Price </td> <td> <input type="text" name="text2" value="<% out.println(t21); %>"></td> </tr>
    <tr> <td height="40"> Road Tax </td> <td> <input type="text" name="text3" value="<% out.println(t22); %>"></td> </tr>
    <tr> <td height="40"> Insurance Tax </td> <td> <input type="text" name="text4" value="<% out.println(t23); %>"></td> </tr>
    <tr> <td height="40"> Registration Charges </td> <td> <input type="text" name="text5" value="<% out.println(t24); %>"></td> </tr>
    <tr> <td height="40"> Rent </td> <td> <input type="text" name="text6" value="<%= t25%>"></td> </tr>
    <tr> <td height="40"> Total </td> <td> <input type="text" name="text7" value="<%= t27%>" readonly></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

