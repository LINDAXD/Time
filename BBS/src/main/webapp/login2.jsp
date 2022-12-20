<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- �ػ󵵿� �°� ������ ���� ���Ǵ� ���ø� -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- ��Ÿ�Ͻ�Ʈ�� �����ϰٴ�. bootstrap.css�ȿ� �ִ� css�� ���� -->

<title>JSP �α��� �� ����Ʈ</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<!-- �׺���̼� ������Ʈ�� �������� ����-->
		<div class="navbar-header">
<!-- 		��� -->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expended="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
<!-- 				�����ܹ� ȭ���� ���̸� �ٰ� ����鼭 �޴��ΰ�ó�� ������ -->
			</button>
			<a class="navbar-brand" href="main.jsp">JSP �Խ��� �� ����Ʈ</a>
<!-- 			�귣�� �� = �ΰ����� -->
		</div>
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
       				aria-expanded="false">
<!--        				id�� ���� �ִ� data-target�� �����ϰ� ������� �� -->
           <ul class="nav navbar-nav">
<!--            �ϳ��� ����Ʈ -->
                   <li><a href="main.jsp">����</a></li>
                   <li><a href="bbs.jsp">�Խ���</a></li>
           </ul>
<!--            �⺻ ���� �Խ��� Ʋ -->
			<ul class="nav navbar-nav navbar-right">
<!-- 			�����ʿ� �־��� -->
				<li class="dropdown">
<!-- 				Ŭ������ -->
					<a href="#" class="dropdown-toggle"
                     data-toggle="dropdown" role="button" aria-haspopup="true"
                     aria-expanded="false">�����ϱ�<span class="caret"></span></a>
<!--                      ��ũ�� ����Ǿ� ���� �����Ƿ� # / class="caret" ������ ������. -->
                     <ul class="dropdown-menu">
                     	<li class="active"><a href="login.jsp">�α���</a></li>
<!--                      	active�� ���� ������ �Ǿ��ٴ� ��. �� �Ѱ��� Ȩ���������� �� �� ���� ���� ���õ� ������ Ȩ�������� �ǹ���. -->
<!-- �Ķ��� ���� ������ ������ ���� ���� �α��� �����̱� ������ -->
                     	<li><a href="join.jsp">ȸ������</a></li>
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
<!--                	ȸ�������̳� �α��ΰ��� ��� ������ ����鼭 ������ �޼��� action�̶�� �������� �α��� ������ �����ְڴٴ� �ǹ� -->
                <h3 style="text-align: center;">�α��� ȭ��</h3>
<!--                 ���� ��� ���� -->
                <div class="form-group">
                <input type="text" class="form-control" placeholder="���̵�" name="userID" maxlength="20">
<!--                 placeholder ��Ѱ͵� �Է����� �ʾ��� �� �����ִ� �� maxlength 20�ڷ� ������-->
                  </div>
                  <div class="form-group">
                <input type="password" class="form-control" placeholder="��й�ȣ" name="userPassID" maxlength="20">
<!--                 name�� user �ҹ��ڷ� �ڿ��� �빮�ڷ�  -->
                  </div>
                   <input type="submit" class="btn btn-primary form-control" value="�α���">
                  </form>
              </div>               
          </div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<!-- ��Ÿ�Ͻ�Ʈ�� �����ϰٴ�. bootstrap.js�ȿ� �ִ� js�� ���� -->
</body>
</html>