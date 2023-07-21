<%@page import="jakarta.servlet.RequestDispatcher"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Blocks</title>
<link rel="stylesheet" href="./main1.css">
<link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css">
<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


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
if("valid".equals(msg)){
%>
<!--  
	<script style="">swal('Sucessfully added to Cart','You can check your Cart','success');</script>
-->


<div class="alert alert-success alert-dismissible fade show" role="alert" style="width: 80%;margin: auto;margin-top: 20px;">
  <strong>Added to Cart</strong> Successfully.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

	<%
}
%>
	<%
if("invalid".equals(msg)){
%>
	<script>swal('Already added to Cart','please check your Cart','warning');</script>

	<%
}
%>
	<%
if("remove".equals(msg)){
%>
	<script>swal('Removed from Cart','You can continue Shopping','success');</script>
	<%
}
%>


	<%
String imgFileName=(String)request.getAttribute("img");
String imgId=(String)request.getAttribute("id");
//System.out.println("inside JSP: "+imgFileName);
%>

	<div align="center" style='margin-bottom: 50px;'>
		<%
	
	Connection con=null;
	Statement stmt=null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
	stmt=con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select * from block.product_info ");
	
	while(rs.next()) {
		String img=rs.getString("prod_img");
	%>
		<div id="card1-section"
			style='width: 50%; height: 400px; margin-top: 50px; margin-bottom: 50px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9); border-radius: 5px; position: relative;'>

			<img
				style='width: 250px; height: 250px; margin-top: 20px; margin-left: -400px; background-position: cover;'
				src="./Images/<%=img%>"><br>
			<div
				style="width: 50%; height: 150px; position: absolute; margin-left: 350px; margin-top: -220px; font-size: 30px;">
				<h1>
					<%out.print(rs.getString("prod_name")); %>
				</h1>
				<br>
				<p style="font-size: 15px; margin-top: -30px; text-align: left;">
					<%out.print(rs.getString("prod_desc"));%>
				</p>
				<br>

			</div>
			<div
				style="width: 20%; height: 50px; position: absolute; margin-left: 550px; margin-top: -30px;">
				<h2>
					<%out.print("<i class='fa fa-inr' aria-hidden='true' id='inr-icon' style='padding: 10px;'></i>"+rs.getString("prod_price"));%>
				</h2>
				<br>
			</div>
			<div style="width: 50%; height: 50px; margin-top: 50px;">
				<a href="#"
					style='background-color: rgb(213, 156, 9); color: black; text-decoration: none; border: none; position: absolute; margin-left: -150px; border-radius: 2px; padding: 10px 35px 10px 35px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9);'>Buy
					Now</a> 
					<a href="block_cart.jsp?id=<%=rs.getString("prod_id")%>"
					style='background-color: rgb(255, 223, 0); text-decoration: none; border: none; position: absolute; border-radius: 2px; padding: 10px 25px 10px 25px; box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.9); color: black;'>Add
					to Cart</a>

			</div>

		</div>


		<%
	
		}
	
	
	%>
	</div>
</body>
</html>