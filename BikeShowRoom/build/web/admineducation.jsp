
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
          
		
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into QualificationTab value('" + t1 + "','" + t2 + "')");
		out.println("Record Saved Successful");}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="admineducation.jsp">
    <table border="0"> 
   <%-- <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/ednames.bmp"> </td> </tr>--%>    
   <tr><td onfocus="blur"><B>Product Details</b></td></tr> 
   <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Product Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Product details </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
