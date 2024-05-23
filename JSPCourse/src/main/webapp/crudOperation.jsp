<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD</title>
</head>
<body>
	<%
	String dbUrl = "jdbc:mysql://localhost:3306/jsp";
	String userName = "root";
	String password = "tiger";

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(dbUrl, userName, password);
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("SELECT * FROM STUDENT");
	%>
	<table border="1" width="50%" style="text-align:center" %>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Age</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getInt(3)%></td>
			<td><a href="editData.jsp?id=<%= rs.getInt(1) %>">update</a></td>
			<td><a href="delete.jsp?id=<%= rs.getInt(1) %>">delete</a></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td colspan="5"><a href="dataInsertionForm.jsp">Insert Data</a></td>
		</tr>
	</table>
</body>
</html>