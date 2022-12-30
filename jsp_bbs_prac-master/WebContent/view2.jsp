<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Enrolment.EnrolmentDAO"%>
<%@ page import="Enrolment.Enrolment"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<title>아카데미 타임</title>
<script src="js/kakao.js"></script>
<link rel="stylesheet" href="css/kakao.css">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
</head>
<body>
	<%@ include file="./header.jsp"%>
	<%
	int stuID = 0;
	// url에 bbsID가 넘어온다면 bbsID 변수에 정보 저장
	if (request.getParameter("stuID") != null) {
		stuID = Integer.parseInt(request.getParameter("stuID"));
	}
	if (stuID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'Enrolment.jsp'");
		script.println("</script>");
	}
	Enrolment stu = new EnrolmentDAO().getstu(stuID);
	%>

	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">수강신청
							목록 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">수강신청 목록</td>
						<td colspan="2"><%=stu.getStuList().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&tr;")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=stu.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td><%=stu.getStuDate().substring(0, 11) + stu.getStuDate().substring(11, 13) + "시"
		+ stu.getStuDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=stu.getStuList().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&tr;").replaceAll("\n",
		"<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="Enrolment.jsp" class="btn btn-custom">목록</a>
			<%
			if (userID != null && userID.equals(stu.getUserID())) {
			%>
			<a href="update2.jsp?stuID=<%=stuID%>" class="btn btn-custom">수정</a>
			<a onclick="return confirm('정말로 삭제하시겠습니까?')"
				href="deleteAction2.jsp?stuID=<%=stuID%>" class="btn btn-custom">삭제</a>
			<%
			}
			%>
			<input type="submit" class="btn btn-custom pull-right" value="수강신청하기" />
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>