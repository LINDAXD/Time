<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="eva.EvaDAO"%>
<%@ page import="eva.Eva"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아카데미타임</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}

	int evaID = 0;
	// url에 bbsID가 넘어온다면 bbsID 변수에 정보 저장
	if (request.getParameter("evaID") != null) {
		evaID = Integer.parseInt(request.getParameter("evaID"));
		System.out.println("================================");
	}
	System.out.println("+++++++++++++++++++++++++++++++");
	System.out.println(evaID);
	if (evaID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'eva.jsp'");
		script.println("</script>");
	}
	Eva eva = new EvaDAO().geteva(evaID);
	if (!userID.equals(eva.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'eva.jsp'");
		script.println("</script>");
	} else { // 수정 권한이 있다면
		if (request.getParameter("evaTitle") == null || request.getParameter("evaTitle") == null
		|| request.getParameter("evaSubject").equals("") || request.getParameter("evaTeacher").equals("")
		|| request.getParameter("evaContent").equals("") || request.getParameter("evaScore").equals("")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력되지 않은 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			EvaDAO evaDAO = new EvaDAO();
			int result = evaDAO.update(evaID, request.getParameter("evaTitle"), request.getParameter("evaSubject"),
			request.getParameter("evaTeacher"), request.getParameter("evaContent"),
			request.getParameter("evaScore"));
			if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('글 수정에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
			} else { // 글수정 성공
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'eva.jsp'");
		script.println("</script>");
			}
		}
	}
	%>
</body>
</html>