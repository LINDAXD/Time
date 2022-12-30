<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아카데미타임</title>
</head>
<body>
	<%
	session.invalidate();
	%>
	<script>
		alert('로그아웃 되었습니다.');
		location.href = 'main.jsp';
	</script>
</body>
</html>