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
	.signUpDiv {
		position: relative;
		top: 50px;
		width: 100%;
		height: 2860px;
	}
	.signUpDiv div {
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
	.signUpDiv {
		position: relative;
		left: 200px;
		width: 1060px;
		height: 800px;
	}
	
	.signUpDiv div {
		position: absolute;
	}
	
	.signUpLogo {
		top: 10px;
		left: 40px;
	}
	
	.signUpForm {
		top: 90px;
		left: 40px;
		width: 400px;
		height: 480px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.signUpForm-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 150px;
		border-bottom: 1px solid gray;
	}
	
	.signUpInputForm {
		top: 80px;
		left:25px;
	}
	
	.signUpInputForm input {
		width: 350px;
	}
	
	#signUpButton {
		margin-top: 150px;
	}
	
	.reCAPTCHA {
		top: 210px;
		width: 300px;
		height: 80px;
		background-color: gray;
		border: 1px solid gray;
		margin-left: 25px;
	}
	
	.snsSignUp {
		top: 90px;
		left: 470px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.snsSignUp-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 155px;
		border-bottom: 1px solid gray;
	}
	
	.facebookSignUp {
		top: 100px;
		left: 50px;
	}
	
	.googleSignUp {
		top: 150px;
		left: 50px;
	}
	
	.facebookSignUp button, .googleSignUp button {
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
	.signUpDiv {
		position: relative;
		left: 200px;
		width: 1060px;
		height: 1850px;
	}
	.signUpDiv div {
		position: absolute;
	}
	
	.signUpLogo {
		top: 10px;
		left: 40px;
	}
	
	.signUpForm {
		top: 90px;
		left: 40px;
		width: 400px;
		height: 350px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.signUpForm-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 155px;
		border-bottom: 1px solid gray;
	}
	
	.signUpInputForm {
		top: 80px;
		left: 50px;
	}
	
	.signUpInputForm input {
		width: 300px;
	}
	
	#signUpButton {
		margin-top: 20px;
	}
	
	.snsSignUp {
		top: 90px;
		left: 470px;
		width: 400px;
		height: 250px;
		background-color: white;
		border: 1px solid gray;
	}
	
	.snsSignUp-logo div:nth-child(1) {
		width: 400px;
		height: 60px;
		padding-top: 20px;
		padding-left: 155px;
		border-bottom: 1px solid gray;
	}
	
	.facebookSignUp {
		top: 100px;
		left: 50px;
	}
	
	.googleSignUp {
		top: 150px;
		left: 50px;
	}
	
	.facebookSignUp button, .googleSignUp button {
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
	}

	$(document).ready(() => {
		$("#signUpButton").click($.loginAction());
	})
</script>
<title>Login</title>
</head>
<body>
	<div class="menu">
		<%@ include file="../main/menu.jsp"%>
	</div>
	<div class="signUpDiv">
		<div class="signUpLogo">
			<h2>로그인</h2>
		</div>
		<div class="signUpForm">
			<div class="signUpForm-logo">
				<div>이메일로 가입하기</div>
			</div>
			<div class="signUpInputForm">
				<form action="${pageContext.request.contextPath}/member/login" method="POST">
					<div class="form-group">
						<c:if test="${!empty userProfile}">
							<input class="form-control" type="text" name="mem_id" placeholder="아이디" value="${userProfile.id}">
							<input class="form-control" type="text" name="mem_pw" placeholder="비밀번호">
							<input class="form-control" type="text" name="mem_email" placeholder="이메일" value="${userProfile.email}">
							<input class="form-control" type="text" name="mem_name" placeholder="이름" value="${userProfile.name}">
							<input class="form-control" type="text" name="mem_nickname" placeholder="닉네임">
							<input id="signUpButton" type="button" class="btn btn-primary" value="아래 약관을 동의하며 회원 가입">
						</c:if>
						<c:if test="${!empty googleProfile}">
							<input class="form-control" type="text" name="mem_id" placeholder="아이디" value="${googleLogin.id}">
							<input class="form-control" type="text" name="mem_pw" placeholder="비밀번호">
							<input class="form-control" type="text" name="mem_email" placeholder="이메일" value="${googleLogin.email}">
							<input class="form-control" type="text" name="mem_name" placeholder="이름" value="${googleLogin.name}">
							<input class="form-control" type="text" name="mem_nickname" placeholder="닉네임">
							<input id="signUpButton" type="button" class="btn btn-primary" value="아래 약관을 동의하며 회원 가입">
						</c:if>
						<c:if test="${empty googleProfile && empty userProfile}">
							<input class="form-control" type="text" name="mem_id" placeholder="아이디" value="">
							<input class="form-control" type="text" name="mem_pw" placeholder="비밀번호">
							<input class="form-control" type="text" name="mem_email" placeholder="이메일" value="">
							<input class="form-control" type="text" name="mem_name" placeholder="이름" value="">
							<input class="form-control" type="text" name="mem_nickname" placeholder="닉네임">
							<input id="signUpButton" type="button" class="btn btn-primary" value="아래 약관을 동의하며 회원 가입">
						</c:if>
					</div>
					<div class="reCAPTCHA">
						<img src="http://graph.facebook.com/${userProfile.id}/picture?width=50&height=50">
						<img src="" width="50px" height="50px">
					</div>
				</form>
			</div>
		</div>
		
		<div class="snsSignUp">
			<div class="snsSignUp-logo">
				<div>SNS로 가입하기</div>
				<div class="facebookSignUp">
					<button class="btn btn-primary">Facebook 으로 가입하기</button>
				</div>
				<div class="googleSignUp">
					<button class="btn btn-danger">Google 로 가입하기</button>
				</div>
				<div>
					<a href="${facebook_url}">facebook</a>
					<a href="${google_url}">google</a>
				</div>
			</div>
		</div>
		<footer>
			원작자 김규정 <br> 그외 ...
		</footer>
	</div>
</body>
</html>