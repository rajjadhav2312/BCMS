<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./signup_page.css">
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

<title>Sign Up</title>
</head>
<body>
	<%
String msg=request.getParameter("msg");
if("user".equals(msg)){
%>
	<script>swal('username already taken','Please try another one','warning');</script>

	<%
}
%>
	<%
if("mob".equals(msg)){
%>
	<script>swal('already registered with this number','Please try with another one','warning');</script>

	<%
}
%>
<%
if("gmail".equals(msg)){
%>
	<script>swal('already registered with this gmail account','Please try with another one','warning');</script>

	<%
}
%>
<%
if("send".equals(msg)){
%>
	<script>swal('Successfully send','please check your gmail to verify your account','success');</script>

	<%
}
%>




	<form action="./insert.jsp">

		<label for="">Username: </label> <input type="text" name="un"
			id="fname" placeholder="Create username"><br>
		<br> <span id="sfname"></span><br> <label for="">Name:
		</label> <input type="text" name="nm" id="lname" placeholder="Enter your name"><br>
		<br> <span id="slname"></span><br> <label for="">Mobile
			number: </label> <input type="number" name="mob" id="mob"
			placeholder="Enter mobile number"><br>
		<br> <span id="smob"></span><br> <label for="">Gmail
			Id: </label> <input type="gmail" name="email" id="gmail"
			placeholder="Enter gmail address"><br>
		<br> <span id="sgmail"></span><br> <label for="">D.O.B:
		</label> <input type="date" name="dob" id="dob"
			placeholder="Enter Date of Birth"><br>
		<br> <label for="">Gender: </label> <input type="radio"
			name="gender" id="m1">Male <input type="radio" name="gender"
			id="f1">Female <br>
		<br> <label for="">Create Password: </label> <input
			type="password" name="pass" id="pass" placeholder="Enter Password"><br>
		<br> <span id="spass"></span><br> <label for="">Confirm
			Password: </label> <input type="password" name="cpass" id="cpass"
			placeholder="Enter Created Password"><br>
		<br> <span id="scpass"></span><br> <input type="checkbox"
			name="" id="agree">I agree <br>
		<br>
		<button onclick="return signup()">Submit</button>
		<span id="sbtn"></span><br>

		<script src="./register.js">

        </script>
	</form>
</body>
</html>