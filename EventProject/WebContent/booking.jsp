<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking page</title>
</head>
<body>
<%
String un=request.getParameter("uname");
String ph=request.getParameter("pn");
String ad=request.getParameter("add");
String em=request.getParameter("email");
String date=request.getParameter("dt");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
PreparedStatement ps=con.prepareStatement("insert into orders values('"+un+"','"+ph+"','"+ad+"','"+em+"','"+date+"')");
int i=ps.executeUpdate();
if(i>0){
response.sendRedirect("lastpage.jsp");
}

else{

response.sendRedirect("book.jsp");

}
}
catch(Exception e){
e.printStackTrace();
}
%>

</body>
</html>