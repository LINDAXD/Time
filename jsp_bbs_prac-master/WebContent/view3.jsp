<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="comment.Comment"%>
<%@ page import="comment.CommentDAO"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
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
	int bbsID = 0;
	// url에 bbsID가 넘어온다면 bbsID 변수에 정보 저장
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
	%>

	<!-- 게시판 시작 -->

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%=bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&tr;")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getUserID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td><%=bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시"
		+ bbs.getBbsDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&tr;").replaceAll("\n",
		"<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-custom">목록</a>
			<%
			if (userID != null && userID.equals(bbs.getUserID())) {
			%>
			<a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-custom">수정</a> <a
				onclick="return confirm('정말로 삭제하시겠습니까?')"
				href="deleteAction.jsp?bbsID=<%=bbsID%>" class="btn btn-custom">삭제</a>
			<%
			}
			%>
			<input type="submit" class="btn btn-custom pull-right" value="글쓰기" />
		</div>
	</div>

	<!-- 답글 쓰기 시작 -->
	<div class="container">
		<div class="form-group">
			<form method="post" encType="multipart/form-data"
				action="commentAction.jsp?bbsID=<%=bbsID%>&userID=<%=userID%>">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<tr>
						<td style="border-bottom: none;" valign="middle"><br> <br><%=userID%></td>
						<td><input type="text" style="height: 100px;"
							class="form-control" placeholder="상대방을 존중하는 댓글을 남깁시다."
							name="commentText"></td>
						<td><br> <br> <input type="submit"
							class="btn-custom pull" value="댓글 작성"></td>
					</tr>
					<tr>
						<td colspan="3"><input type="file" name="fileName"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>



	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>