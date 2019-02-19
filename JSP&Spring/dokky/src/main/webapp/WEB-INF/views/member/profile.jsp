<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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
	@media screen and (max-width: 630px) {
		.mainBody {
			position: relative;
			top: 50px;
			width: 100%;
			height: 2860px;
			background-color: #fbf0db;
		}
		
		.mainBody div div {
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
	@media screen and (min-width: 630px) and (max-width: 769px) {
		.mainBody {
			position: relative;
			top: 50px;
			width: 100%;
			height: 2860px;
			background-color: #fbf0db;
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
	@media screen and (min-width: 768px) and (max-width: 970px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 10px;
			height: 1850px;
		}
		
		.mainBody div {
			position: relative;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.profileInfoImage {
			top: 20px;
			left: 20px;
		}
		
		.profileInfoImage img {
			width: 170px;
			height: 170px;
		}
		
		.profileInfoName {
			top: 30px;
			left: 240px;
		}
		
		.profileInfoNameBox {
			font-size: 22px;
		}
		
		.profileInfoBoardList {
			top: 120px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
		}
		
		.profileInfoBoardListBasicCnt {
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
		}
		
		
		.profileInfoBoardListQnaCnt {
		}
		
		.profileInfoExpBox {
			left: 200px;
		}
		
		.profileInfoExp {
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	@media screen and (min-width: 970px) and (max-width: 1070px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 10px;
			width: 855px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	@media screen and (min-width: 1070px) and (max-width: 1200px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 23%;
			width: 800px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -27%;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	@media screen and (min-width: 1200px) and (max-width: 1300px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 32%;
			width: 780px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -38%;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	@media screen and (min-width: 1300px) and (max-width: 1400px){
		.mainBody {
			position: absolute;
			top: 30px;
			left: 27%;
			width: 800px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -22%;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	@media screen and (min-width: 1400px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 29%;
			width: 800px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -26%;
		}
		
		.mainBody div div {
			position: absolute;
		}
		
		.prifileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.profileInfoBox {
			top: 50px;
			left: 8px;
			width: 808px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		footer {
			position: absolute;
			border-top: 1px solid;
			bottom: 0px;
			width: 800px;
			height: 150px;
			margin-left: 25px;
			padding: 50px;
		}
	}
	img {
		border-radius: 50%;
	}
</style>
<script type="text/javascript">
	$.showCategoryList = function() {
	}
	
	$.addCategoryListAction = function() {
	}
	
	$.getBoardListAction = function() {
	}

	$(document).ready(() => {
		$.showCategoryList();
		$.getBoardListAction();
	});
</script>
<title>Home</title>
</head>
<body>
	<div class="menu">
		<%@ include file="../main/menu.jsp" %>
	</div>
	<div class="mainBody">
		<div>
			<div class="prifileBoardMenu">
			</div>
			<div class="profileAddBox"></div>
			<div class="profileInfoBox">
				<div class="profileInfoImage">
					<img src="${pageContext.request.contextPath}/resources/memImage/${sessionScope.loginInfo.mem_image}">
				</div>
				<div class="profileInfoName">
					<div class="profileInfoNameBox">${sessionScope.loginInfo.mem_name}</div>
				</div>
				<div class="profileInfoBoardList">
					<div class="profileInfoBoardListBasicBox">
						<div class="profileInfoBoardListBasiclabel">게시물</div>
						<div class="profileInfoBoardListBasicCnt">0</div>
					</div>
					<div class="profileInfoBoardListQnaBox">
						<div class="profileInfoBoardListQnalabel">답변</div>
						<div class="profileInfoBoardListQnaCnt">0</div>
					</div>
					<div class="profileInfoExpBox">
						<div class="profileInfoExpLabel">활동치</div>
						<div class="profileInfoExp">${sessionScope.loginInfo.mem_exp}</div>
					</div>
				</div>
			</div>
			<div class="boardListBox"></div>
			<footer>
				원작자 김규정 <br>
				그외 ...
			</footer>
		</div>
	</div>
</body>
</html>