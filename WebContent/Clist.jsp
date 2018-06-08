<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 게시판</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<table>
<tr><th>글번호</th><th>이름</th><th>소감</th><th>작성일</th></tr>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	String user = "csuser";
	String pw = "cs1234";
	String sql = "select * from comments order by seq desc";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection(url, user, pw);
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while(rs.next()) {
		int seq = rs.getInt(1);
		String name = rs.getString(2);
		String pass = rs.getString(3);
		String content = rs.getString(4);
		String rdate = rs.getString(5);
	%>
		<tr><td><%=seq%></td>
			<td><%=name %></td>
			<td><%=content %></td>
			<td><%=rdate %></td>
		</tr>
	<%
	}
	rs.close();
	pstmt.close();
	con.close();
%>
<form action="Cdelete.jsp" method="post">
   작성자 : <input type="text" name="name" size=10></input><br />
   비번 : <input type="password" name="pass" size=10></input><br />
   <input type="submit" value="삭제"></input><br />
</form>

<form action="CwriteForm.jsp" method="post">
<input type="submit" value="작성 페이지로"></input><br />
</form>
</table>
</body>
</html>
