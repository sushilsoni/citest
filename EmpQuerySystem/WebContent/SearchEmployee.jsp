<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Search</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String username=request.getParameter("Name"); 
session.putValue("empname",username); 
String userid=request.getParameter("ID"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webapplication1","root","admin"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from emp where emp_name='"+username+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(userid)) 
{ 
out.println("welcome"+userid); 

} 
else 
{ 
out.println("Name and Employee SAP ID dosent match,  try again"); 
} 
} 
else 
%>

</body>
</html>