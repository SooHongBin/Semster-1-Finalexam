<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BIBLE.GG</title>
</head>
<style type="text/css">
<style>
  table.type07 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border: 1px solid #ccc;
    margin: 20px 10px;
    color: black;
}
table.type07 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background-color:powderblue;
    html,body{
  height:100%;
}
</style>
<body>
    <hr>
	<form action="Steam_statistics.jsp" method="post">
	<span
		style="font-style: oblique; font-weight: bold; font-size: 1.5em; line-height: 1.0em; color: #FFD700; font-family: arial;">
		게임 통계 보기 <br><br>
	</span>
		<input type="submit" style="WIDTH: 55pt; HEIGHT: 25pt; background-color:#87CEFA;" value="이동"> <hr>
	</form>
	<form action="Steam_News.jsp" method="post"> 
	<span style="font-style: 
	oblique; font-weight: bold; font-size: 1.5em; line-height: 1.0em; color: #FFD700; font-family: arial;">
		<br>게임 뉴스 보기 <br><br>
	</span>
	    <input type="submit" style="WIDTH: 55pt; HEIGHT: 25pt; background-color:#87CEFA;" value="이동"> <hr>
	</form>
	<span
		style="font-style: italic; font-weight: bold; font-size: 1.5em; line-height: 1.0em; color: #FFD700; font-family: arial;">
		당신의 태그를 선택해주세요 <br>
	</span>
	<form action="Steam.jsp" method="post">
		<%
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				Class.forName("com.mysql.jdbc.Driver");
				// MySQL 서버를 설정합니다.
				con = DriverManager.getConnection(
						"jdbc:mysql://210.123.255.182:3306/db?characterEncoding=UTF-8&serverTimezone=UTC", "admin",
						"test1234");

				String sql = "select * from testtable";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
		%>
		<table class="type07">
				<%
					while (rs.next()) {
				%><tr>
					<td>
						<%
						out.print(rs.getInt("code"));
					%>
					</td>
					<td>
						<%
						out.print(rs.getString("name"));
					%>
					</td>
					<td><input type="radio" name="tag"
						value="<%=rs.getInt("code")%>"></td>
					<td><center><input type="submit" style="WIDTH: 55pt; HEIGHT: 22pt; background-color:#FFE4E1;" value="확인"></center></td>
				</tr>
			
			<%
				}
			%>
			
		</table>
		
		<%
			} catch (SQLException ex) {
				System.out.println("SQLException:" + ex);
			} catch (Exception ex) {
				System.out.println("Exception:" + ex);
			} finally {
				try {
					// 데이터베이스 Close 해주기
					if (con != null) {
						con.close();
					}
				} catch (Exception e) {
				}
			}
		%>
	</form>
</body>
</html>