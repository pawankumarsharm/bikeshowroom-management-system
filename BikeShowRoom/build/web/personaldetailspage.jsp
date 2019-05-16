<%-- 
    Document   : personaldetailspage
    Created on : Jan 29, 2012, 11:57:20 PM
    Author     : Keerthi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="newpackage1.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>JSTL demo</title>
    </head>
    <body>
        <jsp:useBean id="person"  class="newpackage1.persondetails1" />

        <c:set target="${person}"
               property="firstName"
               value="Jack" />
        <c:set target="${person}"
               property="lastName"
               value="Daniel" />

        <c:out value="${person.firstName}" />
        
        
        <BR>
        <BR>
        
<jsp:useBean id="cal"
             class="java.util.GregorianCalendar" />
        
<c:set var="hour" value="${cal.time.hours}" />

<c:if test="${hour >=0 && hour <=11}">
   <c:out value="Good morning" />
</c:if>

<c:if test="${hour >=12 && hour <=17}">
   <c:out value="Good Afternoon" />
</c:if>

<c:if test="${hour >=18 && hour <=23}">
   <c:out value="Good Evening" />
</c:if>




<br>
<br>

<c:set var="hour" value="${cal.time.hours}" />

<c:choose>
    <c:when test="${hour >=0 && hour <=11}">
<c:out value="Good morning" />
    </c:when>
    <c:when test="${hour >=12 && hour <=17}">
<c:out value="Good Afternoon" />
    </c:when>
    <c:otherwise>
<c:out value="Good Evening" />
    </c:otherwise>
</c:choose>
    </body>
</html>