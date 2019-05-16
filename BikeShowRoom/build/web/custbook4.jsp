<%@page contentType="text/html" import="java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<BR>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 



<%

String a1=(String)session.getAttribute("custcodevar");
out.println(a1);
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");


SimpleDateFormat fmt1 = new SimpleDateFormat ("dd/MMM/yyyy");
String dvar = fmt1.format(new java.util.Date());
int nvar=0;
out.println(t4);
if(t1!=null&&t1!=""){
    
int i1=1000;
rst=stmt.executeQuery("select (max(rno) + 1) as mNo from BookingTab");
if (rst.next())
{if(rst.getString("mNo")!=null)
i1= Integer.parseInt(rst.getString("mNo"));
}

    
//out.println("insert into FeeTab values("+i1+",'"+dvar+"','"+a1+"','"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"')");
stmt.executeUpdate("insert into BookingTab values("+i1+",'"+dvar+"','"+a1+"','"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"')");


}  

%>


<BR>
<BR>

<table width="80%" border="0"> 
<tr> <td height="50"> Payment done successfully</td> </tr>
<tr> <td height="50"> <a href="custmainpage.jsp"> click here to go back </a> </td> </tr>

</table>

</html>
