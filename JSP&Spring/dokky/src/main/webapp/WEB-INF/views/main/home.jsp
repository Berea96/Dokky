<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>

/* 태블릿 */
@media screen and (max-width:768px) {
	.main-menu {
		position: fixed;
		top: 0px;
		width: 100%;
		height: 50px;
		align-content: center;
	}
	.brand {
		position: absolute;
		text-align: center;
	}
	.memberDiv {
		position: absolute;
		top: 8px;
		right: 10px;
	}
	.memberDiv > a > i {
		font-size: 20px
	}
	.noLogin {
		display: none;
	}
	.act {
		display: none;
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
	.memberDiv {
		position: absolute;
		top: 100px;
		left: 8px;
	}
	.memberDiv > a > i {
		font-size:14px
	}
	.memberCard {
		position: absolute;
		left: -8px;
		width: 200px;
		height: 53px;
		border-top: 1px solid; 
		border-bottom: 1px solid;
	}
	.memberInfo div {
		float: left;
	}
	.memberImage {
		float: left;
		width: 50px;
		height: 50px;
	}
	.memberNickName {
		float: left;
		width: 110px;
		height: 25px;
	}
	.sign-out {
		width: 40px;
		height: 25px;
	}
	.memberExp {
		float: left;
		width: 110px;
		height: 25px;
	}
	.mem-info {
		width: 40px;
		height: 25px;
	}
	.noLogin {
		display: inline;
	}
	.act {
		position: absolute;
		top: 300px;
		width: 100px;
	}
	.gihub {
		position: absolute;
		left: 65px;
		bottom: 50px;
	}
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
		$(document).ready(() => {
			$("#loginButton").click(() => {
				location.href = "${pageContext.request.contextPath}/member/gologin";
			});
		})
	</script>
<title>Home</title>
</head>
<body>
	<div class="main-menu bg-primary">
		<div class="brand">
			<a class="navbar-brand text-danger" href="${pageContext.request.contextPath}/member/home">DOKKY</a>
		</div>
		<div class="memberDiv">
			<c:if test="${empty sessionScope.loginInfo}">
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/member/login?mem_id=qwe&mem_pw=qwe">
					<i class="fa fa-sign-in"></i>
					<span class="noLogin" style="font-size:14px">로그인</span>
				</a>
				<a class="btn btn-primary">
					<i class="fa fa-user"></i>
					<span class="noLogin" style="font-size:14px">회원가입</span>
				</a>
			</c:if>
			<c:if test="${!empty sessionScope.loginInfo}">
				<div class="memberCard">
					<div class="memberInfo">
						<%-- <div class="memberImage">${sessionScope.loginInfo.mem_image}이미지</div> --%>
						<div class="memberImage">
							<img src='https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'>
						</div>
						<div class="memberNickName">${sessionScope.loginInfo.mem_nickname}</div>
						<div>
						<a class="btn btn-primary sign-out" href="${pageContext.request.contextPath}/member/logoutMember?mem_id=${sessionScope.loginInfo.mem_id}">
							<i class="fa fa-sign-out"></i>
						</a>
						</div>
						<div class="memberExp"># ${sessionScope.loginInfo.mem_exp}</div>
						<div>
						<a class="btn btn-primary mem-info">
							<i class="fa fa-vcard"></i>
						</a>
						</div>
					</div>
				</div>
			</c:if>
		</div>
		<div class="act">
			<a class="btn btn-primary">Qna</a>
			<a class="btn btn-primary">Tech</a>
			<a class="btn btn-primary">Community</a>
			<a class="btn btn-primary">칼럼</a>
			<a class="btn btn-primary">Jobs</a>
		</div>
		<div class="gihub">
			<a class="btn btn-primary" href="https://github.com/Berea96/Dokky">
			Github</a>
		</div>
	</div>
</body>
</html>