<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book page</title>
<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body background="back.png"><br><br>
<center>
<h2>User Details:</h2>
<table>
<form action="booking.jsp">
<tr><td><b>Name:</b></td><td><input type="text" name="uname"></td></tr>
<tr><td><b>Phonenumber:</b></td><td><input type="text" name="pn"></td></tr>
<tr><td><b>Address:</b></td><td><input type="text" name="add"></td></tr>
<tr><td><b>Email id:</b></td><td><input type="text" name="email"></td></tr>
<tr><td><b>Date:</b></td><td><input type="date" name="dt"></td></tr>
<tr><td colspan="2"><center><input type="submit"  value="PROCEED"></center></td></tr>
</form>
</table>
</center>
</body>
</html>