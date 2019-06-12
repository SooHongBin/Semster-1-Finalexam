<%@ page language ="java" contentType ="text/html; charset =EUC KR"
pageEncoding ="EUC-KR"%>
<%
     String pagefile=request.getParameter("pagefile");
%>
<body  style="background-color:#4285f4;"></body>
<table width ="900" border ="1" align ="center" style="background-color:#FFFFFF;">
<tr>
<td height ="50" colspan ="3" align ="right">
<jsp:include page="top.jsp"/>
</td>
</tr>
<tr>
<td height ="600" width ="20%" align ="left" valign ="top">
<br> <jsp:include page ="left.jsp"/>
</td>
<td height ="600" colspan ="2" align ="3">
<jsp:include page= '<%=pagefile+".jsp"%>'/>
</td>
</tr>
<tr>
<td width ="100%" height ="30" colspan ="3">
<jsp:include page="bottom.jsp"/>
</td>
</tr>
</table>