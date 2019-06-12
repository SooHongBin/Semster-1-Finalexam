<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
    String userID=null;

        if(session.getAttribute("userID")!=null){
         userID=(String)session.getAttribute("userID");
        } 
%>
</head>
<body>
	<% 
    if(userID==null){
%>
	<script>
        alert('먼저 로그인을 해주십시오.');
        location.href='gmain.jsp';
    </script>
	<% 
    }else{
%>
	<%
    session.invalidate();
    %>
	<script>
        userID=null;
        alert('로그아웃 되셨습니다.');
        location.href='gmain.jsp';
    </script>
	<%
    }
%>


</body>
</html>
