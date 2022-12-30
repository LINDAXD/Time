<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="eva.EvaDAO"%>
<%@ page import="eva.Eva"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<title>아카데미타임</title>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<%
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
	}
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
	}
	%>
	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">

			<form action="updateAction3.jsp?evaID=<%=evaID%>" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">수강평
								수정 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="제목"
								name="evaTitle" maxlength="50" value="<%=eva.getEvaTitle()%>" /></td>
						</tr>
						<tr>
							<td><input class="form-control" placeholder="수강과목명"
								name="evaSubject" maxlength="20"
								value="<%=eva.getEvaSubject()%>"></td>
						</tr>
						<tr>
							<td><input class="form-control" placeholder="강사명"
								name="evaTeacher" maxlength="10"
								value="<%=eva.getEvaTeacher()%>"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="evaContent" maxlength="2040" style="height: 350px;"><%=eva.getEvaContent()%></textarea></td>
						</tr>
						<tr>
							<td><input class="form-control" placeholder="평가점수"
								name="evaScore" maxlength="10" value="<%=eva.getEvaScore()%>"></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-custom pull-right" value="수정" />
			</form>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>