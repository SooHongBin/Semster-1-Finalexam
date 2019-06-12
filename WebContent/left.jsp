<%@page language ="java" contentType="text/html; charset =UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<header>
<form>
<% 
    String userID=null;
        if(session.getAttribute("userID")!=null){
        	userID=(String)session.getAttribute("userID");
        } 
%>
<% 
    if(userID==null){
%>
    <div align="right">
        <input type="button"  value="로그인" Onclick="javascript:location.href='login.jsp'">
        <input type="button"  value="회원가입" Onclick="javascript:location.href='join.jsp'">
    </div>
<% 
    }else{
%>
    <div align="right">
        <input type="button"  value="로그아웃" onclick="location.href='logoutAction.jsp'">
    </div>
<%
    }
%>
</form>
</header>
<hr>
<center>
<h2 align="center">게임 순위</h2>

</center>