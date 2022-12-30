<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>PW_find</TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">

<style>
tr, td {
	border: 0px solid none;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<title>아카데미 타임</title>
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery-ui-1.10.4.custom.min.js"></script>
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

	<font face="Yang Rounded"> <%@ include file="./header.jsp"%>
		<div id="login">
			<div id="wrap">
				<div id="top_wrap">
					<h1>
						<a href="#"><img src="images/download.png" alt="#" width="100"
							height="30"></a>
					</h1>
				</div>
				<!--top_wrap-->

				<h2 class="selected1">아이디찾기</h2>
				<div id="login_con">
					<form name="idfindscreen">
						<div id="login1" class="login_box">
							<table height="70px" align="center" border="0"
								style="font-size: 16px;">
								<tr>
									<td>이름</td>
									<td>
										<div class="form-group">
											<input type="text" class="form-control1" name="userName">
										</div>
									</td>
								</tr>
								<tr>
									<td style="text-align: center;">e-mail&nbsp;</td>
									<td><input type="text" name="userEmail"
										style="width: 80px" onblur="checkid()"> @ <input
										type="text" name="e_domain" style="width: 80px"> <select
										name="domain" onchange="domainCheck2();">
											<option value="0" selected="selected">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="yahoo.com">yahoo.com</option>
									</select></td>
								</tr>
							</table>

							<table width="140px" height="10px" border="0"
								style="margin-top: 2%" align="center">
								<tr>
									<td><input type="button" class="btn btn-custom"
										name="enter2" value="  찾기  " align="center"
										onClick="id_search2()"></td>
									<td><input type="button" class="btn btn-custom"
										name="cancle2" value="  취소  " align="center"
										onClick="gologin()"></td>
								</tr>
							</table>
							<br>
						</div>
					</form>
				</div>
				<!-- 아이디찾기 -->
				<hr>
				<h2 class="selected1">비밀번호찾기</h2>
				<div id="login_con">
					<form name="pwfindscreen">
						<div id="login1" class="login_box">
							<table height="70px" align="center" border="0"
								style="font-size: 16px;">
								<tr>
									<td>이름</td>
									<td>
										<div class="form-group">
											<input type="text" class="form-control1" name="userName">
										</div>
									</td>
								</tr>
								<tr>
									<td style="text-align: center;">e-mail&nbsp;</td>
									<td><input type="text" name="userEmail"
										style="width: 80px" onblur="checkid()"> @ <input
										type="text" name="e_domain" style="width: 80px"> <select
										name="domain" onchange="domainCheck();">
											<option value="0" selected="selected">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="yahoo.com">yahoo.com</option>
									</select></td>
								</tr>
							</table>
							<table width="140px" height="10px" border="0"
								style="margin-top: 2%" align="center">
								<tr>
									<td><input class="btn btn-custom" type="button"
										name="enter2" value="찾기" onClick="pwd_search2()"></td>
									<td><input class="btn btn-custom" type="button"
										name="cancle2" value="취소" onClick="gologin()"></td>
								</tr>
							</table>
							<br>
						</div>
					</form>
				</div>
				<!-- 비밀번호찾기 -->
			</div>
		</div>
	</font>

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/id.js"></script>
	<script src="js/id2.js"></script>
</body>
</html>