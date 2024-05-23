<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	String dbUrl = "jdbc:mysql://localhost:3306/jsp";
	String userName = "root";
	String password = "tiger";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(dbUrl, userName, password);
	PreparedStatement ps = con.prepareStatement("UPDATE STUDENT SET NAME=?, AGE=? WHERE ID=?");
	
	ps.setString(1, name);
	ps.setInt(2, age);
	ps.setInt(3, id);
	
	ps.execute();
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("crudOperation.jsp");
	dispatcher.forward(request, response);
	%>
</body>
</html>