<%@page import="jakarta.servlet.RequestDispatcher"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css">
<link rel="shortcut icon" href="./images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="./bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

</head>
<body>
	<%
try{
	String id=request.getParameter("id");
	out.print(id);
Connection con=null;
PreparedStatement pstmt=null;
Thread.sleep(500);
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
pstmt=con.prepareStatement("insert into cart_db.cart select prod_name,prod_desc,prod_price,prod_img from cement.product_info where prod_id="+id);
pstmt.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("./cement.jsp?msg=valid");
rd.forward(request, response);


}
catch(Exception e){
	RequestDispatcher rd=request.getRequestDispatcher("./cement.jsp?msg=invalid");
	rd.include(request, response);
}

%>
</body>
</html>