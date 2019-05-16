<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 

<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
double a4=0;
if(t1!=null&&t1!=""){

double loanAmount = Double.parseDouble(t1);
int rateOfInterest = Integer.parseInt(t2);
int numberOfMonths = Integer.parseInt(t3);
numberOfMonths=numberOfMonths*12;
double temp = 1200;           //100*numberofmonths(12))
double interestPerMonth = rateOfInterest/temp;
//System.out.println(interestPerMonth);

double onePlusInterestPerMonth = 1 + interestPerMonth;
//System.out.println(onePlusInterestPerMonth);

double powerOfOnePlusInterestPerMonth = Math.pow(onePlusInterestPerMonth,numberOfMonths);
//System.out.println(powerOfOnePlusInterestPerMonth);

double powerofOnePlusInterestPerMonthMinusOne = powerOfOnePlusInterestPerMonth-1;
//System.out.println(powerofOnePlusInterestPerMonthMinusOne);

double divides = powerOfOnePlusInterestPerMonth/powerofOnePlusInterestPerMonthMinusOne;

double principleMultiplyInterestPerMonth = loanAmount * interestPerMonth;
//System.out.println(principleMultiplyInterestPerMonth);

double totalEmi =  principleMultiplyInterestPerMonth*divides;
//System.out.println("EMI per month (Exact) : " + totalEmi);

double finalValue = Math.round( totalEmi * 100.0 ) / 100.0;
   
a4=finalValue;    
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="custloanemi.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/emi.bmp"> </td> </tr>    

<tr> <td height="40"> Loan Amt </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Rate of Interest </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40"> Period (Years) </td><td> 
<select  name=text3 size=1>
<option>5 </option>
<option>10 </option>
<option>15 </option>
<option>20</option>
<option>25 </option>
</select> 
</td> </tr> 

<!--<tr> <td height="40"> Loan Amt </td> <td> <%=t1%></td> </tr>
<tr> <td height="40"> Rate of Interest </td> <td> <%=t2%></td> </tr>
<tr> <td height="40"> Period </td> <td> <%=t3%></td> </tr>-->
<tr> <td height="40"> EMI Amt </td> <td> <%=a4%></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
