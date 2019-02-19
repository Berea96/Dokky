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
	.body {
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
		
		.adBoard {
			top: 20px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 100px;
			margin-right: 30px;
			background-color: white;
		}
		.sideAdBoard {
			display: none;
		}
		
		.editorChice {
			top: 180px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.WeeklyBest {
			top: 440px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.qna {
			top: 700px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 380px;
			
			background-color: white;
		}
		
		.tech {
			top: 1880px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.community {
			top: 1140px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 680px;
			
			background-color: white;
		}
		
		.column {
			top: 2140px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.study {
			top: 2400px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
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
		
		.mainBody div div {
			position: absolute;
		}
		
		.adBoard {
			top: 20px;
			left: 30px;
			width: 90%;
			height: 100px;
			margin-right: 30px;
			background-color: white;
		}
		.sideAdBoard {
			display: none;
		}
		
		.editorChice {
			top: 180px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.WeeklyBest {
			top: 440px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.qna {
			top: 700px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 380px;
			
			background-color: white;
		}
		
		.tech {
			top: 1880px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.community {
			top: 1140px;
			left: 30px;
			width: 90%;
			height: 680px;
			
			background-color: white;
		}
		
		.column {
			top: 2140px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
		}
		
		.study {
			top: 2400px;
			width: 90%;
			margin-left: 5%;
			margin-right: 5%;
			height: 200px;
			
			background-color: white;
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
			
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
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
			
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: gray;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
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
		
		.leftCategory {
			position: absolute;
			top: 50px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: gray;
		}
		
		.rightCategory {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: gray;
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
</style>

<title>Home</title>
</head>
<body class="body">
	<div class="menu">
		<%@ include file="../main/menu.jsp" %>
	</div>
	<div class="mainBody">
		<div>
			<div class="leftCategory">
			<a class="btn btn-primary"><i class="fa fa-github"></i></a>
			</div>
			<div class="rightCategory"></div>
			<div class="currnetCategory">qna</div>
			<div class="community"></div>
			<div class="adBoard"></div>
			<div class="sideAdBoard"></div>
			<div class="editorChice"></div>
			<div class="WeeklyBest"></div>
			<div class="qna"></div>
			<div class="tech"></div>
			<div class="column"></div>
			<div class="study"></div>
			
			<footer>
				원작자 김규정 <br>
				그외 ...
			</footer>
		</div>
	</div>
</body>
</html>