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
<body>
	<%
String uname=request.getParameter("un");
String umob=request.getParameter("mob");
String pass=request.getParameter("pass");
Connection con=null;
PreparedStatement pstmt=null;
Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Jadhav@2312");
pstmt=con.prepareStatement("Select * from user_registration.suppliers_user_info");
ResultSet rs=pstmt.executeQuery();
	if(uname=="" && pass==""){
		RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=empty");
		rd.include(request, response);
	}
	else if(uname==""){
		RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=username");
		rd.include(request, response);
	}
	else if(pass==""){
		RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=password");
		rd.include(request, response);
	}
	else if(true){
		RequestDispatcher rd=request.getRequestDispatcher("./login.jsp?msg=invalid");
		rd.include(request, response);
	}
	
	while(rs.next()){
		
		
		if(uname.equals(rs.getString("username")) && pass.equals(rs.getString("upass"))) {
			
			RequestDispatcher rd=request.getRequestDispatcher("./user.jsp?name="+uname);
			rd.forward(request, response);
		}
	}
	
	


	


%>
</body>
</html>