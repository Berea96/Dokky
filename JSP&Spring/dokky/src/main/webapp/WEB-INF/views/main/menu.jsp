<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		width: 100%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.brand {
		position: absolute;
		text-align: center;
	}
	
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: white;
	}
	.memberDiv {
		position: absolute;
		top: 8px;
		right: 10px;
	}
	.sign-in, .sign-up {
		font-size: 20px
	}
	
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberImage {
		display: none;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
	}
	.noLogin {
		display: none;
	}
	.act {
		display: none;
		left: 300px;
	}
	.gihub {
		display: none;
		left: 65px;
		bottom: 50px;
	}
}

@media screen and (min-width: 768px) {
	.main-menu {
		position: fixed;
		top: 0px;
		width: 200px;
		height: 100%;
		z-index: 1;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 15px;
		font-size: 40px;
		color: white;
	}
	.memberDiv {
		position: absolute;
		top: 100px;
		left: 8px;
	}
	.memberDiv > a > i {
		font-size:14px
	}
	.memberAct div {
		float: left;
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
	.memberImage > img {
		border-radius: 50%;
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
		width: 100%;
	}
	.act a {
		width: 100%;
	}
	.gihub {
		position: absolute;
		/* left: 65px; */
		top: 610px;
		width: 100%;
	}
	.gihub a {
		width: 100%;
	}
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="main-menu bg-primary">
		<div class="brand">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/member/home">DOKKY</a>
		</div>
		<div class="memberDiv">
			<c:if test="${empty sessionScope.loginInfo}">
				<div class="memberAct">
					<div>
						<a class="btn btn-primary sign-in"
							href="${pageContext.request.contextPath}/member/login?mem_id=qwe&mem_pw=qwe">
							<i class="fa fa-sign-in"></i> <span class="noLogin"
							style="font-size: 14px">로그인</span>
						</a>
					</div>
					<div>
						<a class="btn btn-primary sign-up"> <i class="fa fa-user"></i> <span
							class="noLogin" style="font-size: 14px">회원가입</span>
						</a>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty sessionScope.loginInfo}">
				<div class="memberCard">
					<div class="memberInfo">
						<%-- <div class="memberImage">${sessionScope.loginInfo.mem_image}이미지</div> --%>
						<div class="memberImage">
							<img
								src='https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'>
						</div>
						<div class="memberNickName">${sessionScope.loginInfo.mem_nickname}</div>
						<div>
							<a class="btn btn-primary sign-out"
								href="${pageContext.request.contextPath}/member/logoutMember?mem_id=${sessionScope.loginInfo.mem_id}">
								<i class="fa fa-sign-out"></i>
							</a>
						</div>
						<div class="memberExp"># ${sessionScope.loginInfo.mem_exp}</div>
						<div>
							<a class="btn btn-primary mem-info"> <i class="fa fa-vcard"></i>
							</a>
						</div>
					</div>
				</div>
			</c:if>
		</div>
		<div class="act">
			<a class="btn btn-primary">Qna</a> <a class="btn btn-primary">Tech</a>
			<a class="btn btn-primary">Community</a> <a class="btn btn-primary">칼럼</a>
			<a class="btn btn-primary">Jobs</a>
		</div>
		<div class="gihub">
			<a class="btn btn-primary" href="https://github.com/Berea96/Dokky">
				Github</a>
		</div>
	</div>
</body>
</html>