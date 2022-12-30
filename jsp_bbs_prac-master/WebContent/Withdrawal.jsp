<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.User"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/kakao.css">
<link rel="stylesheet" href="css/kakao2.css">
<title>아카데미타임</title>
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

			<h2 class="selected1">내 정보</h2>
			<div id="login_con">
				<div id="login1" class="login_box">
					<form action="mypagedeleteAction.jsp" method="post">
						<%
						UserDAO userDAO = new UserDAO();
						User user = userDAO.getUser(userID);
						%>

						<div class="form-group">
							아이디(변경불가) <input type="text" class="form-control1" placeholder="아이디"
								name="userID" maxlength="20" value="<%=user.getUserID()%>"
								readonly />
						</div>
						<div class="form-group">
							비밀번호<input type="password" class="form-control1"
								placeholder="비밀번호" name="userPassword"
								value="<%=user.getUserPassword()%>" maxlength="20" />
						</div>
						<div class="form-group">
							이름<input type="text" class="form-control1" placeholder="이름"
								name="userName" maxlength="20" value="<%=user.getUserName()%>" />
						</div>
						<div class="form-group" style="text-align: center;">
							성별
							<div class="btn-group" data-toggle="buttons">
								<label class="btn btn-custom active"> <input
									type="radio" name="userGender" autocomplete="off" value="male"
									checked />남자
								</label> <label class="btn btn-custom"> <input type="radio"
									name="userGender" autocomplete="off" value="female" />여자
								</label>
							</div>
						</div>
						<div class="form-group">
							E-mail<input type="email" class="form-control1" placeholder="이메일"
								name="userEmail" maxlength="20" value="<%=user.getUserEmail()%>" />
						</div>
						<input type="submit" class="btn btn-custom form-control1"
							value="회원탈퇴" />
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