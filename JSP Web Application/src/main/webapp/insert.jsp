
<%@page import="jakarta.servlet.RequestDispatcher"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%



String uname=request.getParameter("un");
String name=request.getParameter("nm");
String umob=request.getParameter("mob");
String ugmail=request.getParameter("email");
String udob=(request.getParameter("dob"));
String ugender=request.getParameter("gender");
String upass=request.getParameter("pass");
String ucpass=request.getParameter("cpass");
boolean result=true;




Connection con=null;
PreparedStatement pstmt=null;
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
pstmt=con.prepareStatement("select * from user_registration.suppliers_user_info");
ResultSet rs=pstmt.executeQuery();
	while(rs.next()){
		if(uname.equals(rs.getString("username"))&& umob.equals(rs.getString("umob"))&& ugmail.equals(rs.getString("ugmail"))) {
			result=true;
			RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=registered");
			rd.forward(request, response);
			
		}
		else if(uname.equals(rs.getString("username"))){
			result=true;
			RequestDispatcher rd=request.getRequestDispatcher("./register.jsp?msg=user");
			rd.forward(request, response);
		}
		else if(umob.equals(rs.getString("umob"))){
			result=true;
			RequestDispatcher rd=request.getRequestDispatcher("./register.jsp?msg=mob");
			rd.forward(request, response);
		}
		else if(ugmail.equals(rs.getString("ugmail"))){
			result=true;
			RequestDispatcher rd=request.getRequestDispatcher("./register.jsp?msg=gmail");
			rd.forward(request, response);
		}
		else{
			result=false;
		}	
	}
	
	if(result==false){
	pstmt=con.prepareStatement("insert into user_registration.suppliers_user_info values(?,?,?,?,?,?,?,?)");
	pstmt.setString(1,uname);
	pstmt.setString(2,name);
	pstmt.setString(3,umob);
	pstmt.setString(4,ugmail);
	pstmt.setString(5,udob);
	pstmt.setString(6,ugender);
	pstmt.setString(7,upass);
	pstmt.setString(8,ucpass);
	pstmt.executeUpdate();
	
	RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=valid");
	rd.forward(request, response);
	}
	

%>
<body>


</body>
</html>