<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 작성 페이지</title>
</head>
<body>
<form action="Cwrite.jsp" method="post">
   이름 : <input type="text" name="name" size=10></input><br />
   비번 : <input type="password" name="pass" size=10></input><br />
   내용 : <input type="text" name="content" size=100></input><br />
   <input type="submit" value="작성"></input><br />
</form>
</body>
</html>
