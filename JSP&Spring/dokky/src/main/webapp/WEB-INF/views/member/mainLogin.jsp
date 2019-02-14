<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		width: 100%;
		height: 100%;
	}
	
	.loginDiv div {
		position: absolute;
	}
	
	.loginLogo {
		top: 20px;
		left: 210px;
		font-size: 50px;
	}
	
	.description {
		top: 90px;
		left: 90px;
		font-size: 20px;
		font-weight: 300;
		color: gray;
	}
	
	.LoginFormBoss {
		position: absolute;
		z-index: 100; 
    	top: 150px; 
    	left:30%; 
    	margin:-100px 0 0 -100px; 
		width: 600px;
		height: 550px;
	    background-color: white;
	    border-radius: 5px;
	    box-shadow: 3px 2px 5px gray;
	}
	
	.loginForm {
		top: 150px;
		left: 300px;
		width: 300px;
		height: 250px;
		background-color: white;
	}
	
	.loginForm-logo div:nth-child(1) {
		width: 300px;
		height: 60px;
		padding-top: 20px;
		padding-left: 115px;
	}
	
	.loginInputForm {
		top: 80px;
		left: 10px;
	}
	
	.loginInputForm input{
		width: 280px;
	}
	
	#loginButton {
		margin-top: 20px;
	}
	
	.snsLogin {
		top: 150px;
		left: px;
		width: 300px;
		height: 250px;
		background-color: white;
		border-right: 1px solid gray;
	}
	
	.snsLogin-logo div:nth-child(1) {
		width: 300px;
		height: 60px;
		padding-top: 20px;
		padding-left: 115px;
	}
	
	.facebookLogin {
		top: 100px;
		left: 10px;
	}
	
	.googleLogin {
		top: 160px;
		left: 10px;
	}
	
	.facebookLogin a, .googleLogin a {
		width: 280px;
	}
	
	.buttonOr {
		top: 134px;
		left: 144px;
		font-size: 17px;
	}
	
	.footer {
		bottom: 0px;
		width: 100%;
		height: 50px;
		background-color: #d9d9d9;
		border-radius: 5px;
		text-align: center;
	}
	
	footer {
		position: absolute;
		border-top: 1px solid;
		bottom: 0px;
		width: 900px;
		height: 150px;
		padding: 50px;
	}
	
	.centered { 
	    position:absolute;
	    z-index: 100; 
	    top:50%; 
	    left:50%; 
	    margin:-100px 0 0 -100px; 
	    width:200px; 
	    height:200px; 
	    background-color: red;
	} 
}

@media screen and (min-width: 1273px) {
	.loginDiv {
		width: 100%;
		height: 100%;
	}
	
	.loginDiv div {
		position: absolute;
	}
	
	.loginLogo {
		top: 20px;
		left: 210px;
		font-size: 50px;
	}
	
	.description {
		top: 90px;
		left: 90px;
		font-size: 20px;
		font-weight: 300;
		color: gray;
	}
	
	.LoginFormBoss {
		position: relative;
		z-index: 100; 
    	top: 150px; 
    	left:30%; 
    	margin:-100px 0 0 -100px; 
		width: 600px;
		height: 550px;
	    background-color: white;
	    border-radius: 5px;
	    box-shadow: 3px 2px 5px gray;
	}
	
	.loginForm {
		top: 150px;
		left: 300px;
		width: 300px;
		height: 250px;
		background-color: white;
	}
	
	.loginForm-logo div:nth-child(1) {
		width: 300px;
		height: 60px;
		padding-top: 20px;
		padding-left: 115px;
	}
	
	.loginInputForm {
		top: 80px;
		left: 10px;
	}
	
	.loginInputForm input{
		width: 280px;
	}
	
	#loginButton {
		margin-top: 20px;
	}
	
	.snsLogin {
		top: 150px;
		left: px;
		width: 300px;
		height: 250px;
		background-color: white;
		border-right: 1px solid gray;
	}
	
	.snsLogin-logo div:nth-child(1) {
		width: 300px;
		height: 60px;
		padding-top: 20px;
		padding-left: 115px;
	}
	
	.facebookLogin {
		top: 100px;
		left: 10px;
	}
	
	.googleLogin {
		top: 160px;
		left: 10px;
	}
	
	.facebookLogin a, .googleLogin a {
		width: 280px;
	}
	
	.buttonOr {
		top: 134px;
		left: 144px;
		font-size: 17px;
	}
	
	.footer {
		bottom: 0px;
		width: 100%;
		height: 50px;
		background-color: #d9d9d9;
		border-radius: 5px;
		text-align: center;
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
</style>

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{your-app-id}',
      cookie     : true,
      xfbml      : true,
      version    : '{api-version}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
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
		<div class="loginDiv">
			<div class="LoginFormBoss">
			<div class="loginLogo">DOKKY</div>
			<div class="description">
				당신의 지식을 나눠주세요! 나누면 두배가 됩니다.
			</div>
			<div class="loginForm">
				<div class="loginForm-logo">
					<div>이메일 로그인</div>
				</div>
				<div class="loginInputForm">
					<form action="${pageContext.request.contextPath}/member/login" method="POST">
						<div class="form-group">
							<c:if test="${!empty facebookProfile}">
							<input class="form-control" type="text" id="loginId" name="mem_id" placeholder="이메일" value="${facebookProfile.email}">
							<input class="form-control" type="text" id="loginPw" name="mem_pw" placeholder="비밀번호">
							<input id="loginButton" type="button" class="btn btn-primary" value="로그인">
							</c:if>
							<c:if test="${!empty googleProfile}">
							<input class="form-control" type="text" id="loginId" name="mem_id" placeholder="이메일" value="${googleProfile.getAccountEmail()}">
							<input class="form-control" type="text" id="loginPw" name="mem_pw" placeholder="비밀번호">
							<input id="loginButton" type="button" class="btn btn-primary" value="로그인">
							</c:if>
							<c:if test="${empty googleProfile && empty facebookProfile}">
							<input class="form-control" type="text" id="loginId" name="mem_id" placeholder="이메일">
							<input class="form-control" type="text" id="loginPw" name="mem_pw" placeholder="비밀번호">
							<input id="loginButton" type="button" class="btn btn-primary" value="로그인">
							</c:if>
						</div>
					</form>
				</div>
			</div>
			
			<div class="snsLogin">
				<div class="snsLogin-logo">
					<div>SNS 로그인</div>
					<div class="facebookLogin">
						<a class="btn btn-primary" href="${sessionScope.facebook_url}">Facebook으로 연결</a>
					</div>
					<div class="buttonOr">or</div>
					<div class="googleLogin">
						<a class="btn btn-danger" href="${sessionScope.google_url}">Google로 연결</a>
					</div>
				</div>
			</div>
			<div class="footer">
				원작자: 김규정
			</div>
			</div>
		</div>
</body>
</html>