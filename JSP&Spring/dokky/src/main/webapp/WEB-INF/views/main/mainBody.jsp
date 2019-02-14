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
	@media screen and (min-width: 630px) and (max-width: 768px) {
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
	@media screen and (min-width: 768px) and (max-width: 870px) {
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
			left: 724px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.community {
			top: 50px;
			left: 216px;
			width: 500px;
			height: 800px;
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
	@media screen and (min-width: 870px) and (max-width: 970px) {
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
			left: 724px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.community {
			top: 50px;
			left: 216px;
			width: 500px;
			height: 800px;
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
	@media screen and (min-width: 970px) and (max-width: 1100px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 30%;
			width: 855px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -30%;
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
			left: 724px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.community {
			top: 50px;
			left: 216px;
			width: 500px;
			height: 800px;
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
	@media screen and (min-width: 1100px) and (max-width: 1273px) {
		.mainBody {
			position: absolute;
			top: 30px;
			left: 40%;
			width: 855px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -40%;
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
			left: 724px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.community {
			top: 50px;
			left: 216px;
			width: 500px;
			height: 800px;
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
	@media screen and (min-width: 1100px) and (min-width: 1273px){
		.mainBody {
			position: absolute;
			top: 30px;
			left: 50%;
			width: 855px;
			height: 1850px;
		}
		
		.mainBody > div {
			position: relative;
			left: -50%;
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
			left: 724px;
			width: 200px;
			height: 590px;
			
			background-color: gray;
		}
		
		.community {
			top: 50px;
			left: 216px;
			width: 500px;
			height: 800px;
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
<body>
	<div class="mainBody">
		<div>
			<div class="leftCategory"></div>
			<div class="rightCategory"></div>
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
	</div>
</body>
</html>