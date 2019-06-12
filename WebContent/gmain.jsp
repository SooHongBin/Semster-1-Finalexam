<%@page language ="java" contentType ="text/html; charset =EUC-KR"
pageEncoding="EUC-KR"%>
<%
     String pagefile=request.getParameter ("pagefile");
     if(pagefile==null){
          pagefile="intro";
     }
%>
<jsp:forward page ="template.jsp">
<jsp:param name= "pagefile" value= "<%=pagefile%>"/>
</jsp:forward>