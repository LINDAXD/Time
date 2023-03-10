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
	if (!userID.equals(stu.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = 'Enrolment.jsp'");
		script.println("</script>");
	}
	%>

	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">

			<form action="updateAction2.jsp?stuID=<%=stuID%>" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글 수정 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="수강항목" name="gradeName" maxlength="50"
								value="<%=stu.getGradeName()%>" /></td>
						</tr>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-custom active"> <input type="radio"
								name="stuList" autocomplete="off" value="JAVA" checked />JAVA
							</label> <label class="btn btn-custom"> <input type="radio"
								name="stuList" autocomplete="off" value="파이썬" />파이썬
							</label> <label class="btn btn-custom"> <input type="radio"
								name="stuList" autocomplete="off" value="SPRING" />SPRING
							</label> <label class="btn btn-custom"> <input type="radio"
								name="stuList" autocomplete="off" value="풀스텍" />풀스텍
							</label> <label class="btn btn-custom"> <input type="radio"
								name="stuList" autocomplete="off" value="C++" />C++
							</label>
						</div>
						
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