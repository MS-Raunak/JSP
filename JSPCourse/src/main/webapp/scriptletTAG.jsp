<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScriptletTag</title>
</head>
<body>
	<h2>
		<%
		int a = 20;
		out.println("Scriptlet TAG " + a);
		%>
	</h2>
	<%
	out.println(
			"Scriptlet TAG is used to declare variable but we can't declare method because the code which is written inside scriptlet tag stored inside service method and in java we can't declare method inside method");
	%>

</body>
</html>