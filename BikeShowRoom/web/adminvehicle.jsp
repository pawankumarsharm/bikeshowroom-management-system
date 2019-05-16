
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

<%
		int t6=0;
                String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                String t4=request.getParameter("text4");
                String t5=request.getParameter("text5");
                String t7=request.getParameter("text7");
                
                try{
                 t6=Integer.parseInt(t5);
                               }
                catch( NumberFormatException exception1) {
                    
                //out.println("Conversion Error");
               
                               }
		
                
                if(t1!=null&&t1!=""&&t6!=0){
		stmt.executeUpdate("insert into VehicleTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t6 + "','" +t7+ "')");
		out.println("Record Saved Successful");}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminvehicle.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/vehicle.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> <TextArea  name="text2"  rows="5" > </textarea></td> </tr>
    
    <tr> <td height="40"> Model Name </td> <td> 

<% 

        
                rst=stmt.executeQuery("select ModelName from ModelTab order by Modelname");
		out.println("<select  name=text3 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("Modelname")+ " </option>");
                }
                out.println("</select>");
                rst.close();

%>  

     </td> </tr>   
    <tr> <td height="40"> Model Number </td> <td> <input type="text" name="text6" value=""></td> </tr>
<tr> <td height="40"> Specification </td> <td> <TextArea  name="text4"  rows="5" > </textarea></td> </tr>
<tr> <td height="40"> Price </td> <td> <input type="text" name="text5" value=""></td> </tr>



    <tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
