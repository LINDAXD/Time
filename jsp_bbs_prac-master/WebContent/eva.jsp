<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="eva.EvaDAO"%>
<%@ page import="eva.Eva"%>
<%@ page import="java.util.ArrayList"%>
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
	int pageNumber = 1; // 기본페이지
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>

	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">
			<a href="evawrite.jsp" class="btn btn-custom pull-right">글쓰기</a>

			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">수강과목명</th>
						<th style="background-color: #eeeeee; text-align: center;">강사명</th>
						<th style="background-color: #eeeeee; text-align: center;">내용</th>
						<th style="background-color: #eeeeee; text-align: center;">평가점수</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
					EvaDAO evaDAO = new EvaDAO();
					ArrayList<Eva> list = evaDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getEvaID()%></td>
						<td><a href="evaview.jsp?evaID=<%=list.get(i).getEvaID()%>"><%=list.get(i).getEvaTitle()%></a></td>

						<td><%=list.get(i).getEvaSubject()%></td>
						<td><%=list.get(i).getEvaTeacher()%></td>
						<td><%=list.get(i).getEvaContent()%></td>
						<td><%=list.get(i).getEvaScore()%></td>
						<td><%=list.get(i).getEvaDate().substring(0, 11) + list.get(i).getEvaDate().substring(11, 13) + "시"
		+ list.get(i).getEvaDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			<%
			if (pageNumber != 1) {
			%>
			<a href="Eva.jsp?pageNumber=<%=pageNumber - 1%>"
				class="btn btn-success btn-arraw-left">이전</a>
			<%
			}
			if (evaDAO.nextPage(pageNumber + 1)) {
			%>
			<a href="Eva.jsp?pageNumber=<%=pageNumber + 1%>"
				class="btn btn-success btn-arraw-left">다음</a>
			<%
			}
			%>
   <div >
                  
                     <span><%= evaDAO.getAvg2()  %></span>
                     <span><%= evaDAO.getAvg()  %></span>
               </div>

		</div>
	</div>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>