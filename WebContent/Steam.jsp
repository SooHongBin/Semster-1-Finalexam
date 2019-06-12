<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String Tag = request.getParameter("tag");
%>

<script type="text/javascript">
	
</script>
<body>
	<%
		response.sendRedirect("https://store.steampowered.com/tag/browse/#global_" + Tag);
	%>

</body>
</html>