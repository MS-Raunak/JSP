<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%! 
   	int b=20;
    public int declarationTag(int a) {
    	return a;
    }
   %>
   
   
   
   <% 
   out.println("Val: " + declarationTag(20));
   out.println("Declaration TAG: declaration tag is used to declare variale and method as well.");  
   %>
</body>
</html>