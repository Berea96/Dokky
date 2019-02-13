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
	@media screen and (max-width: 768px) {
		.mainBody {
			position: relative;
			top: 50px;
			width: 100%;
			height: 2860px;
			background-color: #fbf0db;
		}
		
		.mainBody div {
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
			left: 30px;
			width: 90%;
			height: 200px;
			
			background-color: white;
		}
		
		.WeeklyBest {
			top: 440px;
			left: 30px;
			width: 90%;
			height: 200px;
			
			background-color: white;
		}
		
		.qna {
			top: 700px;
			left: 30px;
			width: 90%;
			height: 380px;
			
			background-color: white;
		}
		
		.tech {
			top: 1880px;
			left: 30px;
			width: 90%;
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
			left: 30px;
			width: 90%;
			height: 200px;
			
			background-color: white;
		}
		
		.study {
			top: 2400px;
			left: 30px;
			width: 90%;
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
	@media screen and (min-width: 768px) and (max-width: 1273px) {
		.mainBody {
			position: relative;
			left: 200px;
			width: 1060px;
			height: 1850px;
			background-color: #fbf0db;
		}
		
		.mainBody div {
			position: absolute;
		}
		
		.adBoard {
			top: 20px;
			left: 80px;
			width: 730px;
			height: 100px;
			
			background-color: white;
		}
		.sideAdBoard {
			top: 20px;
			left: 890px;
			width: 160px;
			height: 590px;
			
			background-color: white;
		}
		
		.editorChice {
			top: 170px;
			left: 30px;
			width: 400px;
			height: 200px;
			
			background-color: white;
		}
		
		.WeeklyBest {
			top: 170px;
			left: 460px;
			width: 400px;
			height: 200px;
			
			background-color: white;
		}
		
		.qna {
			top: 450px;
			left: 30px;
			width: 530px;
			height: 380px;
			
			background-color: white;
		}
		
		.tech {
			top: 450px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
		}
		
		.community {
			top: 910px;
			left: 30px;
			width: 530px;
			height: 680px;
			
			background-color: white;
		}
		
		.column {
			top: 730px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
		}
		
		.study {
			top: 1010px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
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
	@media screen and (min-width: 1273px){
		.mainBody {
			position: relative;
			left: 200px;
			width: 1060px;
			height: 1850px;
		}
		
		.mainBody div {
			position: absolute;
		}
		
		.adBoard {
			top: 20px;
			left: 80px;
			width: 730px;
			height: 100px;
			
			background-color: white;
		}
		.sideAdBoard {
			top: 20px;
			left: 890px;
			width: 160px;
			height: 590px;
			
			background-color: white;
		}
		
		.editorChice {
			top: 170px;
			left: 30px;
			width: 400px;
			height: 200px;
			
			background-color: white;
		}
		
		.WeeklyBest {
			top: 170px;
			left: 460px;
			width: 400px;
			height: 200px;
			
			background-color: white;
		}
		
		.qna {
			top: 450px;
			left: 30px;
			width: 530px;
			height: 380px;
			
			background-color: white;
		}
		
		.tech {
			top: 450px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
		}
		
		.community {
			top: 910px;
			left: 30px;
			width: 530px;
			height: 680px;
			
			background-color: white;
		}
		
		.column {
			top: 730px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
		}
		
		.study {
			top: 1010px;
			left: 590px;
			width: 270px;
			height: 200px;
			
			background-color: white;
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

<title>Home</title>
</head>
<body>
	<div class="mainBody">
		<div class="adBoard"></div>
		<div class="sideAdBoard"></div>
		<div class="editorChice"></div>
		<div class="WeeklyBest"></div>
		<div class="qna"></div>
		<div class="tech"></div>
		<div class="community"></div>
		<div class="column"></div>
		<div class="study"></div>
		
		<footer>
			원작자 김규정 <br>
			그외 ...
		</footer>
	</div>
</body>
</html>