
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@page session="false" %>
<A href="index.jsp"> Home </A> <BR> 
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST"    action="adminmainpage.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <A href="adminlogin.jsp"><img style="-webkit-user-select: none" src="images\adminlogin.bmp"></a> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40" style="color: blue"><h2>User Name</h2>  </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"style="color: blue"><h2>Password</h2>  </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>