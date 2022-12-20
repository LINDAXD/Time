<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 해상도에 맞게 반응형 웹에 사용되는 템플릿 -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- 스타일시트를 참조하겟다. bootstrap.css안에 있는 css를 참조 -->

<title>JSP 로그인 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<!-- 네비게이션 웹사이트의 전반적인 구성-->
		<div class="navbar-header">
<!-- 		헤더 -->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expended="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
<!-- 				아이콘바 화면을 줄이면 바가 생기면서 메뉴인것처럼 보여줌 -->
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
<!-- 			브랜드 바 = 로고같은거 -->
		</div>
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
       				aria-expanded="false">
<!--        				id는 위에 있는 data-target와 동일하게 맞춰줘야 함 -->
           <ul class="nav navbar-nav">
<!--            하나의 리스트 -->
                   <li><a href="main.jsp">메인</a></li>
                   <li><a href="bbs.jsp">게시판</a></li>
           </ul>
<!--            기본 상위 게시판 틀 -->
			<ul class="nav navbar-nav navbar-right">
<!-- 			오른쪽에 넣어줌 -->
				<li class="dropdown">
<!-- 				클래스명 -->
					<a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">접속하기<span class="caret"></span></a>
<!--                      링크가 연결되어 있지 않으므로 # / class="caret" 아이콘 같은것. -->
                     <ul class="dropdown-menu">
                     	<li class="active"><a href="login.jsp">로그인</a></li>
<!--                      	active는 현재 선택이 되었다는 뜻. 단 한개의 홈페이지에만 들어갈 수 있음 현재 선택된 현재의 홈페이지를 의미함. -->
<!-- 파란색 불이 들어오는 이유는 현재 지금 로그인 상태이기 때문임 -->
                     	<li><a href="join.jsp">회원가입</a></li>
                     </ul>
				</li>
			</ul>
		</div>
	</nav>
 <div class="container">
           <div class="col-Lg-4"></div>
           <div class="col-Lg-4"></div>          
              <div class="jumbotron" style="padding-top: 20px;">
               	<form method="post" action="loginAction.jsp">
<!--                	회원가입이나 로그인같이 어떠한 정보를 숨기면서 보내는 메서드 action이라는 페이지로 로그인 정보를 보내주겠다는 의미 -->
                <h3 style="text-align: center;">로그인 화면</h3>
<!--                 글자 가운데 정렬 -->
                <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
<!--                 placeholder 어떠한것도 입력하지 않았을 때 보여주는 것 maxlength 20자로 제한함-->
                  </div>
                  <div class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="userPassID" maxlength="20">
<!--                 name에 user 소문자로 뒤에는 대문자로  -->
                  </div>
                   <input type="submit" class="btn btn-primary form-control" value="로그인">
                  </form>
              </div>               
          </div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<!-- 스타일시트를 참조하겟다. bootstrap.js안에 있는 js를 참조 -->
</body>
</html>