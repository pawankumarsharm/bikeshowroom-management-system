
<%@ page language="java" import="java.sql.*" %>
<%
	String driver = "com.mysql.jdbc.Driver";
	Class.forName(driver).newInstance();
	
	Connection con=null;
	ResultSet rst=null;
	Statement stmt=null;
	
	try{
		String url="jdbc:mysql://localhost/BikeDatabase?user=root&password=ROOT";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
%>