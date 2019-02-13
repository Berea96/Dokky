<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #fbf0db;
}

@media screen and (max-width: 768px) {
	.loginDIv {
		position: relative;
		top: 50px;
		width: 100%;
		height: 2860px;
	}
	.loginDIv div {
		position: absolute;
	}
	footer {
		position: absolute;
		border-top: 1px solid;
		bottom: 0px;
		width: 100%;
		height: 150px;
		padding: 50px;
	}
}

@media screen and (min-width: 768px) and (max-width: 1273px) {
	.loginDiv {
		position: relative;
		left: 200px;
		width: 1060px;
		height: 800px;
	}
	
	.loginDiv div {
		position: absolute;
	}
	
	.loginLogo {
		top: 10px;
		left: 40px;
	}
	
	.loginForm {
		top: 90px;
		left: 40px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.loginForm-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 165px;
		border-bottom: 1px solid gray;
	}
	
	.loginInputForm {
		top: 80px;
		left: 50px;
	}
	
	.loginInputForm input{
		width: 300px;
	}
	
	#loginButton {
		margin-top: 20px;
	}
	
	.snsLogin {
		top: 90px;
		left: 470px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.snsLogin-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 165px;
		border-bottom: 1px solid gray;
	}
	
	.facebookLogin {
		top: 100px;
		left: 50px;
	}
	
	.googleLogin {
		top: 150px;
		left: 50px;
	}
	
	.facebookLogin button, .googleLogin button {
		width: 300px;
	}
	
	footer {
		position: absolute;
		border-top: 1px solid;
		bottom: 0px;
		width: 900px;
		height: 150px;
		padding: 50px;
	}
}

@media screen and (min-width: 1273px) {
	.loginDiv {
		position: relative;
		left: 200px;
		width: 1060px;
		height: 1850px;
	}
	.loginDIv div {
		position: absolute;
	}
	
	.loginLogo {
		top: 10px;
		left: 40px;
	}
	
	.loginForm {
		top: 90px;
		left: 40px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.loginForm-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 165px;
		border-bottom: 1px solid gray;
	}
	
	.loginInputForm {
		top: 80px;
		left: 50px;
	}
	
	.loginInputForm input {
		width: 300px;
	}
	
	#loginButton {
		margin-top: 20px;
	}
	
	.snsLogin {
		top: 90px;
		left: 470px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.snsLogin-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 165px;
		border-bottom: 1px solid gray;
	}
	
	.facebookLogin {
		top: 100px;
		left: 50px;
	}
	
	.googleLogin {
		top: 150px;
		left: 50px;
	}
	
	.facebookLogin button, .googleLogin button {
		width: 300px;
	}
	
	footer {
		position: absolute;
		border-top: 1px solid;
		bottom: 0px;
		width: 1000px;
		height: 150px;
		margin-left: 25px;
		padding: 50px;
	}
}
</style>
<script type="text/javascript">
	$.loginAction = function() {
		var mem_id = $("#loginId").val();
		var mem_pw = $("#loginPw").val();
	}

	$(document).ready(() => {
		$("#loginButton").click($.loginAction());
	})
</script>
<title>Login</title>
</head>
<body>
	<div class="menu">
		<%@ include file="../main/menu.jsp"%>
	</div>
	<div class="loginDiv">
		<div class="loginLogo">
			<h2>로그인</h2>
		</div>
		<div class="loginForm">
			<div class="loginForm-logo">
				<div>아이디 로그인</div>
			</div>
			<div class="loginInputForm">
				<form action="${pageContext.request.contextPath}/member/login" method="POST">
					<div class="form-group">
						<input class="form-control" type="text" id="loginId" name="mem_id" placeholder="아이디">
						<input class="form-control" type="text" id="loginPw" name="mem_pw" placeholder="비밀번호">
						<input id="loginButton" type="button" class="btn btn-primary" value="로그인">
					</div>
				</form>
			</div>
		</div>
		
		<div class="snsLogin">
			<div class="snsLogin-logo">
				<div>SNS 로그인</div>
				<div class="facebookLogin">
					<button class="btn btn-primary">Facebook 로그인</button>
				</div>
				<div class="googleLogin">
					<button class="btn btn-danger">Google 로그인</button>
				</div>
			</div>
		</div>
		<footer>
			원작자 김규정 <br> 그외 ...
		</footer>
	</div>
</body>
</html>