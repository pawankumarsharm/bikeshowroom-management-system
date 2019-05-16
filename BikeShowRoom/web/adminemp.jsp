<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Home </A> <BR> 

<%
		String t1=request.getParameter("text1");
                String p1=request.getParameter("pass1");
                String p2=request.getParameter("pass2");
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
               
                String t6=request.getParameter("text6");
                String t7=request.getParameter("text7");
                String t8=request.getParameter("text8");
                String t9=request.getParameter("text9");
		
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into empDetTab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "')");
		out.println("Record Saved Successful");
                
                }

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminemp.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/empdetails.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> EmpCode </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value="abcd"></td> </tr>
    <tr> <td height="40"> Emp Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <Textarea  name="text3" cols="20" > </textarea></td> </tr>
    <tr> <td height="40"> MobileNo </td> <td> <input type="text" name="text6" value=""></td> </tr>
    <tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text7" value=""></td> </tr>

    <tr> <td height="40"> Qualification Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select edname from QualificationTab order by edname");
		out.println("<select  name=text8 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("edname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>    
    
    <tr> <td height="40"> Designation Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select jobname from professionTab order by jobname");
		out.println("<select  name=text9 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("jobname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>        

      
    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

