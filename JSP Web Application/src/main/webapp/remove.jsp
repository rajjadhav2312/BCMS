<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
Thread.sleep(1000);
String name=request.getParameter("name");
Connection con=null;
Statement stmt=null;
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
stmt=con.createStatement();

stmt.executeUpdate("delete from cart_db.cart where cname='"+name+"'");
response.sendRedirect("./display_cart.jsp?msg=remove");
%>
</body>
</html>