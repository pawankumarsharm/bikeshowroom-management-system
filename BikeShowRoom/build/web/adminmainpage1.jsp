<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<%
String t1= request.getParameter("text1");
if((session.getAttribute("t1")==null)||(session.getAttribute("t1")=="")){
    out.println("You are not logged in");
    }
else
{
   // out.println("<script type=\"text/javascript\">");
   // out.println("alert('login successful');");
    //.println("location='adminmainpage1.jsp';");
    //out.println("</script>");
}
%>
<link href="newtable.css" rel="stylesheet" type="text/css" /> 

<A href="index.jsp">Log Out</a>       
<BR>


<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> 

    <tr> <td height="20"> <b>Details</b></td><td><b>List</b></td></tr>
    <tr> <td height="20"> <A href="adminmodel.jsp"><button class="button">Model Details</button></a> </td> <td> <A href="adminmodellist.jsp">Model List</a> </td></tr>
<tr> <td height="20"> <A href="adminvehicle.jsp">Vehicle Details</a> </td> <td> <A href="adminvehiclelist.jsp">Vehicle List</a> </td></tr>
<tr> <td height="20"> <A href="adminquotation.jsp">Vehicle Quotation Price</a> </td> <td> <A href="adminquotationlist.jsp">Quotation Price List</a> </td></tr>
<tr> <td height="20"> <A href="admincustlist.jsp">Customer List </a></td> <td> <A href="adminbooklist.jsp">Booking List</a>  </tr>
<tr> <td height="20"> <A href="admineducation.jsp"> Product Details </a> <td> <A href="admineducationlist.jsp">Product List</a>  </td> </tr>
<tr> <td height="20"> <A href="adminjob.jsp"> Make Details </a> </td> <td> <A href="adminjoblist.jsp">Make List</a>  </tr>
<tr> <td height="20"> <A href="admindrivelist.jsp">Test Drive Request </a></td> <td> <A href="adminrent.jsp">Bike Rent Request</a>  </tr>
<tr> <td height="20"> <A href="adminservice.jsp">Bike Service Request </a></td> <td> <A href="index.jsp">LogOut</a>  </tr>




</table>


</html>

  
  <%@ include file="footerfile.jsp"%>