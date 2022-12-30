<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserMgr"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<title>아카데미 타임</title>
<script src="js/kakao.js"></script>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/kakao.css">
<link rel="stylesheet" href="css/kakao2.css">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("userName");
	String domain = request.getParameter("domain");
	String e_domain = request.getParameter("e_domain");
	String userEmail = request.getParameter("userEmail");
	System.out.println("이름:" + userName);

	if (domain.equals("0")) {
		userEmail = userEmail + "@" + e_domain;
	} else {
		userEmail = userEmail + "@" + domain;
	}
	UserMgr um3 = new UserMgr();
	String userPassword = um3.pw_search(userName, userEmail);//비밀번호를 디비에서 가져옴..실패시 널
	if (userPassword != null) {//비밀번호 찾기 성공시
		//response.sendRedirect("./home.jsp");
		//메인화면으로 이동
	}
	%>


	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<div id="kk">
		<nav class="navbar navbar-default intop">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <a href="main.jsp" class="navbar-brand">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
				<li><a href="eva.jsp">수강평</a></li>
				<li><a href="Enrolment.jsp">수강신청</a></li>
			</ul> -->
				<%
				if (userID == null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul></li>
				</ul>
				<%
				} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="mypage.jsp">내정보</a></li>
							<li><a href="Withdrawal.jsp">회원탈퇴</a></li>
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul></li>
				</ul>
				<%
				}
				%>
			</div>

		</nav>

		<div id="top_wrap">
			<header id="top">
				<div id="logo">
					<h1>
						<img src="images/download.png" alt="아카데미타임" width="70" height="40">아카데미타임
					</h1>
					<ul id="ul">
						<li class="search">
							<div>
								<label for="search" id="search_t">통합검색</label><input type="text"
									id="search" autocomplete="off" maxlength="20">
							</div>
						</li>
					</ul>
				</div>
				<div id="top_menu">
					<!--js태그 추가-->
					<nav id="main_menu">
						<ul>
							<li class="active"><a href="main.jsp">메인</a></li>
							</li>
							<!--홈 -->
							<li><a href="bbs.jsp">게시판</a></li>
							<!-- 회사소개-->
							<li><a href="calendarmain.jsp">캘린더</a></li>
							<!--상품 -->
							<li><a href="Enrolment.jsp">수강신청</a></li>
							<!-- 고객센터-->
							<li><a href="eva.jsp">수강평</a></li>
							<!--상품 -->
							<li><a href="#">공지사항</a></li>
							<!-- 공지사항-->
						</ul>
					</nav>
					<!--main_menu-->
				</div>
				<!--top_menu-->
			</header>
			<!--header top-->
		</div>


		<div id="login">
			<div id="top_wrap">
				<h1>
					<a href="#"><img src="images/download.png" alt="#" width="100"
						height="30"></a>
				</h1>
			</div>
			<!--top_wrap-->

			<h2 class="selected1">비밀번호 찾기</h2>
			<div id="login_con">
				<div id="login1" class="login_box">
					<form name="pwsearch" class="pwsearch">
						<table class="table">
							<%
							if (userPassword != null) {
							%>

							<tr>
								<td class="userfind"><%=userPassword%></td>
							</tr>
							<tr>
								<td><input type="button" value="돌아가기"
									onClick="history.back()"></td>
							</tr>
							<%
							} else {
							%>
							<tr>
								<td class="userfind1">없는 비밀번호입니다.</td>
							</tr>
							<tr>
								<td><input type="button" value="돌아가기"
									onClick="history.back()"></td>
							</tr>
							<%
							}
							%>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- kk -->




	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/id4.js"></script>
</body>
</html>
