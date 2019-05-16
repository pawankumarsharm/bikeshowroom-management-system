<%@page contentType="text/html" import="java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Cust Main </A> <BR> 

<%
int t6=0;
String a1=(String)session.getAttribute("custcodevar");

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");

SimpleDateFormat fmt1 = new SimpleDateFormat ("dd/MMM/yyyy");
String dvar = fmt1.format(new java.util.Date());
int nvar=0;

if(t1!=null&&t1!=""){
    
int i1=1001;
rst=stmt.executeQuery("select (max(tdno) + 1) as tdNo from TestDriveTab");
if (rst.next())
{if(rst.getString("tdNo")!=null)
i1= Integer.parseInt(rst.getString("tdNo"));
}

stmt.executeUpdate("insert into TestDriveTab values("+i1+",'"+dvar+"','"+a1+"','"+t1+"','"+t2+"')");
 response.sendRedirect("custmainpage.jsp");
}  

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="custdrive.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/drive.bmp"> </td> </tr>    
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

 <tr> <td height="40"> Request Details </td> <td> <Textarea  name="text2" cols="20" > </textarea></td> </tr>
  



<tr> <td height="40">  </td> <td align="center"> <input type="submit" Value="&nbsp;&nbsp;&nbsp;Save&nbsp;&nbsp;&nbsp;" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
