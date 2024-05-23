<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update data</title>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	String dbUrl = "jdbc:mysql://localhost:3306/jsp";
	String userName = "root";
	String password = "tiger";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(dbUrl, userName, password);
	PreparedStatement ps = con.prepareStatement("SELECT * FROM STUDENT WHERE ID=?");
	ps.setInt(1, id);
	
	ResultSet rs = ps.executeQuery();
	rs.next();
	
	%>
	
	<form action="update.jsp" >
		id: <input type="number" name="id" value="<%= rs.getInt(1) %>" readonly="true" ><br>
		name: <input type="text" name="name" value="<%= rs.getString(2) %>"><br>
		age: <input type="number" name="age" value="<%= rs.getInt(3) %>"><br>
		<input type="submit" value="update">
	</form>
	
</body>
</html>