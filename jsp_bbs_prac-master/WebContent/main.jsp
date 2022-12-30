<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
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
<link rel="stylesheet" href="css/kakao2.css">
<link rel="stylesheet" href="css/main.css">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<div id="think">
			<img src="images/think.png" alt="" />
			<ul>
				<li class="whywhy"><span>왜</span> 학원은 직접 방문해야 할까요?</li>
				<li class="whywhy"><span>왜</span> 생생한 후기는 볼 수는 없을까요?</li>
				<li class="whywhy"><span>왜</span> 학생들끼리 이야기를 나눌 순 없나요?</li>
				<br>
				<p class="online">
					온라인으로 자유롭게 수강신청이 가능하며<br> 학생들끼리 자유로운 의사소통이 가능한 <br> <span>아카데미타임!</span>
				</p>
			</ul>
		</div>
	</div>
	<!-- <div class="container">
		<div class="newtext">신규강좌</div>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
				<div class="item">
					<img src="images/2.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
				<div class="item">
					<img src="images/3.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="newtext">인기강좌</div>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/3.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
				<div class="item">
					<img src="images/4.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
				<div class="item">
					<img src="images/5.png" alt="" /><span>강좌 소개</span><br> '예제로
					배우는 C# 강좌'는 C# 초보탈출 강좌 입니다.<br>프로그램을 하나 하나 만들어 가며 거기에 쓰이는 문법과
					사용법을 학습합니다.<br>예제를 만들어 가며 배우는 강좌이기 때문에 실무에서 사용법과 활용 응용력을 키울 수
					있습니다.<br> 역시 예제 중심이기에 최소한의 C# 문법 지식을 갖고 있는 분께 도움이 됩니다.<br>
					* 총 30강 정도로 완강을 예상중이며 현재 연재중 입니다.

					<ul>
						<li><span>도움되는 분들</span></li>
						<li>C# 에 대해 공부를 했지만 이해가 잘 안가시는 분</li>
						<li>C# 초보</li>
						<li>C# 예제를 통해 활용도를 익히고 싶은 분.</li>
					</ul>
					<ul>
						<li><span>강좌 특징</span></li>
						<li>다루는 기술 : C#</li>
						<li>강좌 수준 : 초급~중급</li>
						<li>준비물 : windows PC</li>
				</div>
			</div>
		</div>
	</div> -->

	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>