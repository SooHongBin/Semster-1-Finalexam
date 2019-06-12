<%@page language ="java" contentType="text/html; charset =UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<header>
<form>
<img src="로고.png">
<% 
    String userID=null;
        if(session.getAttribute("userID")!=null){
        	userID=(String)session.getAttribute("userID");
        } 
%>
<% 
    if(userID != null){
%>
<center>
        <input type="button" style="WIDTH: 100pt; HEIGHT: 40pt; background-color:#38B7FA;"  value="접속" onclick="location.href='main.jsp'">
</center>
<%
    }
%>
</form>
</header>
