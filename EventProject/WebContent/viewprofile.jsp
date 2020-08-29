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
try {
	String s=session.getAttribute("key").toString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
	PreparedStatement ps=con.prepareStatement("select * from event  where password='"+s+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		%>
		Name:<%=rs.getString("name")%><br>
		Mobile:<%=rs.getString("mobile")%><br>
		Email:<%=rs.getString("email")%><br>
		<input type="button" value="Logout" onclick="location.href='login.html'">
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