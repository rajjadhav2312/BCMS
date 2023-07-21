<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./login_pg.css">
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
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
	<script>swal('Registration Successfull!','Please log in','success');</script>

	<%
}
%>
<%
if("invalid".equals(msg)){
%>
	<script>swal('Username or Password Incorrect','Please Try Again!','warning');</script>

	<%
}
%>
	<% 
if("empty".equals(msg)){
%>
	<script>swal('Login with Username or Mobile Number',' ','warning');</script>

	<%
}
%>
	<% 
if("username".equals(msg)){
%>
	<script>swal('Please Enter Username/Moblie Number',' ','warning');</script>

	<%
}
%>
	<% 
if("password".equals(msg)){
%>
	<script>swal('Please Enter Password',' ','warning');</script>
	<%
}
%>
	<%
if("registered".equals(msg)){
%>
	<script>swal('Already registered!',' Please Login','warning');</script>
	<%
}
%>

	<form action="validate.jsp" method="post">
		<div class="input-box">
			<label>Username: </label> <input type="text" name="un" id="nm"
				placeholder="        Enter Username"
				style="margin-top: 80px; color: white;"><br> <label>Password:
			</label> <input type="password" name="pass" id="pass"
				placeholder="        Enter Password"><br>
		</div>

		<button id="btn1">Login</button>
		<p>Don't have an account?</p>
		<button id=btn2>
			<a href="./register.jsp">Sign up</a>
		</button>
	</form>
</body>
</html>