<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" import="java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<BR>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 



<%
String a1=(String)session.getAttribute("vvar");
String a2=(String)session.getAttribute("vpvar");


java.util.Date date1 = new java.util.Date();
SimpleDateFormat ft = new SimpleDateFormat ("dd/MMM/yyyy");
int nvar=0;


 

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="custbook4.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/payment.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Vehicle Name </td> <td> <input type="text" name="text1"  value="<%=a1%>"></td> </tr>
    <tr> <td height="40"> Total Amt  </td> <td> <input type="text" name="text2"  value="<%=a2%>"></td> </tr>
    <tr> <td height="40"> Pay Type  </td> <td> 
    <select  name=text3 size=1>
                <option>Credit Card </option>
                <option>Debit Card </option>                
                <option>Bank Transfer </option>
                <option>Others </option>
                
            </select>
    
    
        </td></tr>
    <tr> <td height="40"> Pay Details </td> <td> <input type="text" name="text4" value=""></td> </tr>
    <tr> <td height="40"> Remarks </td> <td> <input type="text" name="text5" value=""></td> </tr>
    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

