<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받음</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8"); //한글이 깨지지 않도록 함.
   String name = request.getParameter("name");
   System.out.println("전송 받은 값"+name);
%>
   전송 받은 값 : <%= name %> <br>
<%
   if(name.equals("정하은")||(name.equals("실버"))){
%>
   <%= name %>님 환영합니다~^^
<% }else { %>
       오류입니다. <br> <%= name %> 등록되지 않은 회원입니다.
<% } %>
</body>
</html>
