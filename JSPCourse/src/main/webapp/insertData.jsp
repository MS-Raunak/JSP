<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Data</title>
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
       PreparedStatement ps = con.prepareStatement("INSERT INTO STUDENT(ID,NAME,AGE)VALUES(?, ?, ?)");
       
       ps.setInt(1, id);
       ps.setString(2, name);
       ps.setInt(3, age);
       ps.execute();
       
       out.println("Data saved successfully");
    %>
    <button><a href="crudOperation.jsp">See the Data</a></button>
</body>
</html>