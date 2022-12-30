<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
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
	<%@ include file="./header.jsp"%>


	<div id="login">
		<div id="wrap">
			<div id="top_wrap">
				<h1>
					<a href="#"><img src="images/download.png" alt="#" width="100"
						height="30"></a>
				</h1>
			</div>
			<!--top_wrap-->

			<h2 class="selected1">회원로그인</h2>
			<div id="login_con">
				<div id="login1" class="login_box">
					<form action="loginAction.jsp" method="post">
						<div class="form-group">

							<p>
								<input type="text" id="u_id" autocomplete="off"
									class="form-control1" placeholder="아이디" name="userID"
									maxlength="20" />
							</p>
							<p>
								<input type="password" id="u_pwd" autocomplete="off"
									class="form-control1" placeholder="비밀번호" name="userPassword"
									maxlength="20" />
							</p>
							<p id="btn_wrap1">
								<input type="submit" id="s_btn1"
									class="btn btn-custom form-control1" value="로그인" />
							</p>

							<p>
								<a href="find_idpw.jsp" class="search">아이디/비밀번호 찾기</a> <a
									href="join.jsp" class="join">아직 회원이 아니세요?</a>
							</p>
						</div>
					</form>
				</div>
				<!--회원로그인 전체내용-->

			</div>
			<!--login_con-->
		</div>
		<!--wrap 전체-->
	</div>


	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>