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
		
	}
	@media screen and (min-width: 630px) and (max-width: 769px) {
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListForm {
			width: 95%;
			height: 200px;
			margin-top: 2.5%;
			margin-left: 2.5%;
			margin-right: 2.5%;
			background-color: gray;
		}
		
		.boardListFormHead {
			width: 100%;
			height: 30px;
			background-color: red;
		}
		
		.boardListFormBody {
			bottom: 0px;
			width: 100%;
			height: 150px;
			background-color: blue;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: #fae3b6;
		}
		
		.currnetCategory {
			top: 50px;
			left: 216px;
			width: 600px;
			height: 200px;
			border-radius: 5px;
			background-color: white;
		}
		
		.community {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.categoryImage {
			position: absolute;
			top: 20px;
			left: 20px;
			width: 120px;
			height: 120px;
		}
		.categoryTitle {
			top: 30px;
			left: 170px;
			width: 150px;
			height: 150px;
			font-weight: 900;
			font-size: 20px;
		}
		.categoryBottomMenu {
			bottom: 40px;
			width: 100%;
			border-top: 1px solid #e3e3e3;
		}
		.categoryByBoard a {
			float: left;
			height: 40px;
		}
		.categoryByBoard a:active {
			color: orange;
		}
	}
	img {
		border-radius: 10%;
	}
</style>
<script type="text/javascript">
	$.showCategoryList = function() {
		var leftCategory = $(".leftCategory");
		var addTarget = $(leftCategory).children();
		
		$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/category/getCategory",
			data: {},
			success: (data) => {
				console.log(data);
				var result = JSON.parse(data);
				console.log(result);
				
				var str = "<a  val='0'  class='bodyA list-group-item list-group-item-action list-group-item-warning' href='#'><i class='fa fa-television'></i>전체</a>";
				$.each(result, (id, it) => {
					str += "<a val='" + it.category_no + "' class='bodyA list-group-item list-group-item-action list-group-item-warning' href='#'>" + 
						   "<img src='${pageContext.request.contextPath}/resources/image/"+ 
						   it.category_image + "' width='15px' height='15px'>" +
						   it.category_title +
						   "</a>";
				})
				
				$(addTarget).empty
				$(addTarget).append(str);
				
				$.addCategoryListAction();
			}
		});
	}
	
	$.addCategoryListAction = function() {
		$(".bodyA").click((e) => {
			var target = $(e.target)
			console.log(target);
			var category_no = $(target).attr("val");
			var category_2 = $(target).text();
			
			if(category_no == 0) {
				location.href = "${pageContext.request.contextPath}/member/home";
			}
			else {
				$.ajax({
					type: "GET",
					url: "${pageContext.request.contextPath}/category/getCategoryByNum",
					data: {
						"category_no": category_no
					},
					success: (data) => {
						var result = JSON.parse(data);
						
						console.log(result);
						
						$(".categoryImage").attr("src", "${pageContext.request.contextPath}/resources/image/" + result.category_image);
						$(".categoryTitle").html(result.category_title);
					}
				});
				$.ajax({
					type: "GET",
					url: "${pageContext.request.contextPath}/board/getBoardByCategory/comm/" + category_2,
					data: {},
					success: (data) => {
						var result = JSON.parse(data);
						console.log(result);
						
						var str = "<div class='boardListForm'>";
						
						$.each(result, (id, it) => {
							$.ajax({
								type: "POST",
								url: "${pageContext.request.contextPath}/member/profile/" + it.board_writer,
								data: {},
								success: (data) => {
									console.log(data);
									var result = JSON.parse(data);
									console.log(result);
									
									str += "<div class='boardListFormHead'>" +
										    "<div class='boardListFormWriterImage'>" +
										   	 "<img src='" + result.mem_image + "'>" +
										    "</div>" +
										    "<div class='boardListFormWriterName'>" +
										   	 "<div>" + result.mem_name + "</div>" +
										    "</div>" +
										    "<div class='boardListFormWriterExp'>" +
										   	 "<div>" + result.mem_exp + "</div>" +
										    "</div>" +
										    "<div class='boardListFormBoardWdate'>" +
										   	 "<div>" + it.board_wdate + "</div>" +
										    "</div>" +
										   "</div>";
								}
							});
							
							str += "<div class='boardListFormBody'>" +
								    "<div class='boardListFormBoardTitle'>" +
								     "<div>" + it.board_title + "</div>"
								    "</div>" +
								    "<div class='boardListFormBoardContent'>" +
								     "<div>" + it.board_content + "</div>"
								    "</div>" +
								   "</div>";
						})
						str += "</div>";
						
						$(".community").append(str);
					}
				});
			}
		});
	}
	
	$.getBoardListAction = function() {
		$(".categoryByBoard a").click((e) => {
			var target = $(e.target);
			$(target).attr("disabled");
		});
	}

	$(document).ready(() => {
		$.showCategoryList();
		$.getBoardListAction();
	});
</script>
<title>Home</title>
</head>
<body>
	<div class="mainBody">
		<div>
			<div class="leftCategory">
				<div class="list-group list-group-flush" style="width: 100%">
				</div>
			</div>
			<div class="rightCategory"></div>
			<div class="currnetCategory">
				<img class="categoryImage" src="${pageContext.request.contextPath}/resources/image/questionMark2.png">
				<div class="categoryTitle">
					전체
				</div>
				<div class="categoryBottomMenu">
					<div class="categoryByBoard list-group">
						<a class="list-group-item" href="#">소통</a>
						<a class="list-group-item" href="#">질문</a>
					</div>
				</div>
			</div>
			<div class="community"></div>
		</div>
	</div>
</body>
</html>