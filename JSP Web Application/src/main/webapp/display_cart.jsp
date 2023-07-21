<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>
<link rel="stylesheet" href="./main1.css">
<link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css">
<link rel="shortcut icon" href="./images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="./bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
<script type="text/javascript">
function preback(){window.history.forward();}
setTimeout("preback()",0);
window.onunload=function(){null};
</script>
</head>

<body>
<section id="search-bar" style="background: black;">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<h1 id="logo">Raj Transports</h1>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<form class="d-flex" role="search">
						<input style="margin-left: 20px;border: 1px solid white;" id="search" class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search"> <i
							id="search-icon" class="fa fa-search" aria-hidden="true" style="margin-left: 10px;"></i> 
							
							<a href="./main.html" style="text-decoration: none;
							font-size: 20px;
							color: white;
							margin-left: 50px;">Home</a>
							
							<a href="./about.html" style="text-decoration: none;
							font-size: 20px;
							color: white;
							margin-left: 50px;">About Us</a>
							
							<a href="./services.html" style="text-decoration: none;
							font-size: 20px;
							color: white;
							margin-left: 50px;">Services</a>
							
							<a href="./contact.html" style="text-decoration: none;
							font-size: 20px;
							color: white;
							margin-left: 50px;">Contact Us</a>
							
						
							<a href="./display_cart.jsp"><i class="fa fa-shopping-cart"
							style='color: black;
							 border: 1px solid black;
							  background-color: rgba(255, 255, 0, 0.815); 
							  font-size: 20px; 
							  height: 30px; 
							  border-radius: 5px; 
							  margin-top: 5px; 
							  margin-left: 100px; 
							  padding-left: 10px; 
							  padding-top: 5px; 
							  position: absolute;'></i>
						</a>


					</form>
				</div>
			</div>
		</nav>
	</section>
	

	<%
String msg=request.getParameter("msg");
if("remove".equals(msg)){
%>
	<script>swal('Removed from Cart','You can continue Shopping','success');</script>
	<%
}
%>


	<div
		style="width: 25%; height: 1000px; margin-left: 1120px; margin-top: 0px; position: absolute;">
		<h1>Hello World</h1>
	</div >
	
	<div
		style='margin-left: 30px; width: 30%; margin-bottom: 50px;'>
		<%
	
	Connection con=null;
	Statement stmt=null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
	stmt=con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select * from cart_db.cart");
	
	while(rs.next()) {
		String img=rs.getString("cimg");
	%>
	<div style='width: 600px; height: 400px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9); border-radius: 5px; position: absolute;margin-left:470px;'>
	<p style="font-size: 15px; margin-top: 30px;margin-left: 20px; text-align: left;width: 90%;">
					<%out.print(rs.getString("cdesc"));%>
				</p>
	</div>
		<div id="card1-section"
			style='width: 350px; height: 400px; margin-top: 50px; margin-bottom: 50px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9); border-radius: 5px; position: relative;'>

			<img
				style='width: 150px; height: 150px; margin-top: 60px; margin-left: 80px; background-position: cover;'
				src="./Images/<%=img%>"><br>
			<div
				style="width: 100%; height: 50px; position: absolute; margin-left: 0px; margin-top: -210px; font-size: 30px; text-align: center; padding-top: 5px;">
				<h3>
					<%out.print(rs.getString("cname")); %>
				</h3>
				<br>
			</div>
			<div
				style="width: 100%; height: 50px; position: absolute; margin-left: 100px; margin-top: 20px;">
				<h3>
					<%out.print("<i class='fa fa-inr' aria-hidden='true' id='inr-icon' style='padding: 10px;'></i>"+rs.getString("cprice"));%>
				</h3>
				<br>
			</div>
			<div style="width: 50%; height: 50px; margin-top: 50px;">
				<a href="#"
					style='background-color: rgb(213, 156, 9); margin-top: 20px; color: black; text-decoration: none; border: none; position: absolute; margin-left: 30px; border-radius: 2px; padding: 5px 100px 5px 100px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9);'>Check
					Out</a><br> <a href="remove.jsp?name=<%=rs.getString("cname")%>"
					style='margin-top: 40px; background-color: rgb(255, 223, 0); text-decoration: none; border: none; margin-left: 30px; position: absolute; border-radius: 2px; padding: 5px 90px 5px 90px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9); color: black;'>Remove
					Cart</a>

			</div>
			

		</div>
		



		<%
	
		}
	
	
	%>
	</div>


</body>
<script src='./app.js'></script>
</html>
</body>
</html>