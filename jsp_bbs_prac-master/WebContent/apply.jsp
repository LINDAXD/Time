<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
	%>
	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">

			<form action="applyAction.jsp" method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">
								수강신청 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="학생이름" name="gradeName" maxlength="50" /></td>
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
				<input type="submit" class="btn btn-custom pull-right"
					value="수강신청하기" />
			</form>
		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>