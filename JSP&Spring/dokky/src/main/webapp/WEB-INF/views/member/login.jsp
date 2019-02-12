<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style>
	
		/* 태블릿 */
		@media screen and (max-width:768px) {
			.main-menu {
				position: fixed;
				top: 0px;
				background-color: blue;
				width: 100%;
				height: 50px;
			}
			.act {
				left: 300px;
			}
		}
		@media screen and (min-width: 768px) {
			.main-menu {
				position: fixed;
				top: 0px;
				background-color: violet;
				width: 200px;
				height: 100%;
			}
			.brand {
				text-align: center;
			}
			
			.act {
				position: absolute;
				top: 300px;
				width: 100px;
			}
		}
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(() => {
			$("#loginButton").click(() => {
				location.href = "${pageContext.request.contextPath}/member/home";
			});
		})
	</script>
	<title>Insert title here</title>
</head>
<body>
	<div class="main-menu">
		<div class="brand">
			<a class="navbar-brand" href="#">DOKKY</a>
		</div>
		<div class="act">
			<button id="loginButton" class="btn btn-primary">로그인</button>
			<button class="btn btn-primary">회원가입</button>
			<button class="btn btn-primary">그냥게시판</button>
			<button class="btn btn-primary">질문게시판</button>
		</div>
	</div>
</body>
</html>