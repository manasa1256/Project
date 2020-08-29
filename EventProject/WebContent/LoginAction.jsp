<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<%
String na=request.getParameter("uname");
String pswd=request.getParameter("pwd");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
	PreparedStatement ps=con.prepareStatement("select * from event where name='"+na+"' and password='"+pswd+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		session.setAttribute("key", pswd);
		response.sendRedirect("userhome.jsp");
	}
	else{
		%>
		<h1>Wrong User</h1>
		<%
	}
}
catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>

</body>
</html>