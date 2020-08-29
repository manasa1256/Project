<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body background="back.png">
<%try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
PreparedStatement ps=con.prepareStatement("select * from orders");
ResultSet rs=ps.executeQuery();
%>
<table style="border:2px solid black;border-collapse:collapse;width:50%;">
<tr>
<th style="border:3px solid black;width:35%;">Name</th>
<th style="border:3px solid black;width:35%;">Phonenumber</th>
<th style="border:3px solid black;width:35%;">Address</th>
<th style="border:3px solid black;width:35%;">Email id</th>
<th style="border:3px solid black;width:35%;">Date</th>
</tr>
<%
while(rs.next()){
%>
<table style="border:2px solid black;border-collapse:collapse;width:50%;">
<tr>
<td style="border:3px solid black;"><%=rs.getString("Name") %></td>
<td style="border:3px solid black;"><%=rs.getString("phno") %></td>
<td style="border:3px solid black;"><%=rs.getString("Address") %></td>
<td style="border:3px solid black;"><%=rs.getString("Email") %></td>
<td style="border:3px solid black;"><%=rs.getString("Date") %></td>
</tr>
</table>
<%
}
}
catch(Exception e){
e.printStackTrace();
}
%>
<center><a href="index.html">Logout</a></center>
</body>
</html>