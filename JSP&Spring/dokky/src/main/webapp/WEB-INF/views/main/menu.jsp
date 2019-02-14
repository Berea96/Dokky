<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@media screen and (max-width: 630px) {
	.main-menu {
		position: fixed;
		top: 0px;
		width: 100%;
		height: 50px;
		align-content: center;
		z-index: 1;
		background-color: white;
		box-shadow: 1px 1px 3px gray;
	}
	.brand {
		position: absolute;
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		top: 8px;
		right: 10px;
	}
	.memberAct div a {
		background-color: #ff9966;
	}
	.sign-in, .sign-up {
		font-size: 20px;
		background-color: #ff9966;
	}
	.googleSearch {
		display: none;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo div a {
		background-color: #ff9966;
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
		background-color: #ff9966;
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
/* 태블릿 */
@media screen and (min-width: 630px) and (max-width:768px) {
	.main-menu {
		position: fixed;
		top: 0px;
		width: 100%;
		height: 50px;
		align-content: center;
		z-index: 1;
		background-color: white;
		box-shadow: 1px 1px 3px gray;
	}
	.brand {
		position: absolute;
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		top: 8px;
		right: 10px;
	}
	.memberAct div a {
		background-color: #ff9966;
	}
	.sign-in, .sign-up {
		font-size: 20px;
		background-color: #ff9966;
	}
	.googleSearch {
		position: absolute;
		top: 10px;
		right: 20%;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo div a {
		background-color: #ff9966;
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
		background-color: #ff9966;
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
		background-color: white;
		box-shadow: 1px 1px 3px gray;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 15px;
		font-size: 40px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		top: 100px;
		left: 8px;
	}
	.memberDiv>a>i {
		font-size: 14px
	}
	.googleSearch {
		position: absolute;
		top: 80px;
		left: 8px;
		color: black;
	}
	.memberAct {
		position: absolute;
		top: 60px;
		left: -8px;
		width: 200px;
	}
	.memberAct div {
		float: left;
	}
	.memberAct div a {
		width: 100px;
		background-color: #ff9966;
	}
	.memberCard {
		position: absolute;
		top: 50px;
		left: -8px;
		width: 200px;
		height: 53px;
		border-top: 1px solid;
		border-bottom: 1px solid;
	}
	.memberInfo div {
		float: left;
	}
	.memberInfo div a {
		background-color: #ff9966;
	}
	.memberImage {
		float: left;
		width: 50px;
		height: 50px;
	}
	.memberImage>img {
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
		background-color: #ff9966;
	}
	.memberExp {
		float: left;
		width: 110px;
		height: 25px;
	}
	.mem-info {
		width: 40px;
		height: 25px;
		background-color: #ff9966;
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
		background-color: #ff9966;
	}
	.gihub {
		position: absolute;
		/* left: 65px; */
		top: 610px;
		width: 100%;
	}
	.gihub a {
		width: 100%;
		background-color: #ff9966;
	}
}
</style>
<script type="text/javascript">
	function googleSearch(key) {
		var googleInputText = $("#googleSearchText").val();
		
		if(key.keyCode == 13) {
			location.href = "https://www.google.com/search?q=" + googleInputText;
		}
	}
	
	$(document).ready(() => {
		$("#googleSearchText").keydown((key) => {
			googleSearch(key);
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="main-menu">
		<div class="brand">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/member/home">DOKKY</a>
		</div>
		<div class="googleSearch">
			<input id="googleSearchText" type="text" placeholder="Google 검색">
		</div>
		<div class="memberDiv">
			<c:if test="${empty sessionScope.loginInfo}">
				<div class="memberAct">
					<div>
						<a class="btn btn-danger sign-in"
							href="${pageContext.request.contextPath}/member/login"> <i
							class="fa fa-sign-in"></i> <span class="noLogin"
							style="font-size: 14px">로그인</span>
						</a>
					</div>
					<div>
						<a class="btn btn-danger sign-up"
							href="${pageContext.request.contextPath}/member/join"> <i
							class="fa fa-user"></i> <span class="noLogin"
							style="font-size: 14px">회원가입</span>
						</a>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty sessionScope.loginInfo}">
				<div class="memberCard">
					<div class="memberInfo">
						<div class="memberImage">
							<img
								src='https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50'>
						</div>
						<div class="memberNickName">${sessionScope.loginInfo.mem_nickname}</div>
						<div>
							<a class="btn btn-danger sign-out"
								href="${pageContext.request.contextPath}/member/logoutMember?mem_id=${sessionScope.loginInfo.mem_id}">
								<i class="fa fa-sign-out"></i>
							</a>
						</div>
						<div class="memberExp"># ${sessionScope.loginInfo.mem_exp}</div>
						<div>
							<a class="btn btn-danger mem-info"> <i class="fa fa-vcard"></i>
							</a>
						</div>
					</div>
				</div>
			</c:if>
		</div>
		<div class="act">
			<a class="btn btn-danger">Qna</a> <a class="btn btn-danger">Tech</a>
			<a class="btn btn-danger">Community</a> <a class="btn btn-danger">칼럼</a>
			<a class="btn btn-danger">Jobs</a>
		</div>
		<div class="gihub">
			<a class="btn btn-danger" href="https://github.com/Berea96/Dokky">
				Github</a>
		</div>
	</div>
</body>
</html>