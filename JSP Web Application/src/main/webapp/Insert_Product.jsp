<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

</head>
<body>
<%
String msg=request.getParameter("msg");
if("success".equals(msg)){
%>
	<script>swal('Sucessfully added to Database','You can add more','success');</script>

	<%
}
%>
	<h1 style="color: red" align="center">Add Concrete Details</h1>
	<div align="center">

		<form action="insert" method="post" enctype="multipart/form-data">
			Product Type : 
			<select name="select">
			
			<option>AAC Block</option>
			<option>Cement</option>
			<option>Sand</option>
			<option>Bricks</option>
			<option>Construction Aggregates</option>
			<option>Wooden Products</option>
			<option>Steel</option>
			<option>Plumbing</option>
			<option>Hardware Fixtures</option>
			<option>RMC</option>
			</select><br><br>
			
			Product Id: <input type="text" name="pid" placeholder="Enter Id"><br>
			<br> Product Name: <input type="text" name="pname"
				placeholder="Enter Name"><br>
			<br> Product Desc: <input type="text" name="pdesc"
				placeholder="Description"><br>
			<br> Product Price: <input type="number" name="pprice"
				placeholder="Enter Price"><br>
			<br> Upload Image: <input type="file" name="pimg"><br>
			<br> <input type="submit" onClick="upload()"
				value="Upload on DB">
		</form>
	</div>

</body>
<script type="text/javascript" src="./app.js"></script>
</html>