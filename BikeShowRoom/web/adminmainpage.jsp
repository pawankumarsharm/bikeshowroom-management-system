

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.HttpServlet;"%>
<%@page import="javax.servlet.http.HttpServletRequest;"%>
<%@page import="javax.servlet.http.HttpServletResponse;"%>
<%@page import="javax.servlet.http.HttpSession;"%>
<%@page import="javax.servlet.ServletException;"%>



<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
		//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
		rst=stmt.executeQuery("select * from AdminloginTab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		
                if (rst.next())
                {
                   // HttpSession s =request.getSession(true);
                    session.setAttribute("t1",t1);
                    
                    out.println("Login Successful");
                response.sendRedirect("adminmainpage1.jsp");
                 }
                
                
                else
                {out.println("User Name or Password is not correct");
                }

%>

