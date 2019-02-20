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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
		
		.profileBoardMenu {
			position: absolute;
			top: 260px;
			left: 8px;
			width: 200px;
			height: 590px;
			background-color: white;
		}
		
		.profileBoardMenuLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
		}
		
		.profileBoardMenu div:nth-child(2) {
			top: 41px;
			width: 100%;
		}
		
		.profileBoardMenu div:nth-child(2) a {
			height: 40px;
		}
		
		.profileAddBox {
			position: absolute;
			top: 50px;
			left: 824px;
			width: 200px;
			height: 590px;
			background-color: white;
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
			width: 400px;
		}
		
		.profileInfoNameBox {
			position: relative !important;
			float: left;
			font-size: 22px;
		}
		
		.profileInfoEditForm {
			width: 400px;
		}
		
		.profileInfoEditForm form input:nth-child(1) {
			float: left;
			width: 70%;
		}
		
		.profileInfoEditForm form input:nth-child(2) {
			float: left;
			width: 15%;
		}
		
		.profileInfoEditForm form input:nth-child(3) {
			width: 15%;
		}
		
		.profileInfoBoardList {
			top: 130px;
			left: 240px;
		}
		
		.profileInfoBoardListBasicBox {
			left: 0px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListBasiclabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListBasicCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoBoardListQnaBox {
			left: 100px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoBoardListQnalabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoBoardListQnaCnt {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoExpBox {
			left: 200px;
			width: 50px;
			height: 45px;
			border-radius: 10%;
			border: 1px solid gray;
		}
		
		.profileInfoExpLabel {
			width: 100%;
			height: 50%;
			text-align: center;
			background-color: #fae3b6;
		}
		
		.profileInfoExp {
			top: 23px;
			width: 100%;
			height: 50%;
			text-align: center;
		}
		
		.profileInfoDeleteBox {
			right: 30px;
			bottom: 30px;
		}
		
		.profileInfoDeleteBox a {
			color: red;
			font-size: 20px;
		}
		
		.boardListBox {
			top: 260px;
			left: 216px;
			width: 600px;
			height: 800px;
			border-radius: 5px;
			background-color: white;
		}
		
		.boardListBoxLogo {
			width: 100%;
			padding: 10px;
			border-bottom: 1px solid;
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
	.active {
		background-color: gray !important;
	}
	.modal-body span{
		color: red;
	}
</style>
<script type="text/javascript">

	var passCheckPoint = 0;

	function profileNameEdit(e) {
		e.preventDefault();
		$(".profileInfoEditForm").css("display", "block");
		$(".profileInfoNameBox").css("display", "none");
	}
	
	function profileEditCancle() {
		$(".profileInfoEditForm").css("display", "none");
		$(".profileInfoNameBox").css("display", "block");
	}
	
	function profileEditUpdate() {
		var mem_name = $("#profileInfoEditName").val();
		
		if(mem_name == "") {
			alert("빈칸없이");
		}
		else {
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/member/editMember",
				data: {
					"mem_id": "${sessionScope.loginInfo.mem_id}",
					"mem_name": mem_name
				},
				success: (data) => {
					var result = eval('(' + data + ')');
					
					if(result.result == "success") {
						location.href = "${pageContext.request.contextPath}/member/profile/${sessionScope.loginInfo.mem_id}";
					}
					else {
					}
				}
			});
		}
	}
	
	function clearBoardMenu() {
		$("#profileBoardMenuAll").attr("class", "list-group-item list-group-item-light");
		$("#profileBoardMenuComm").attr("class", "list-group-item list-group-item-light");
		$("#profileBoardMenuQuestion").attr("class", "list-group-item list-group-item-light");
		$("#profileBoardMenuAnswer").attr("class", "list-group-item list-group-item-light");
	}
	
	function changeBoardListBoxLogo(e, logo) {
		e.preventDefault();
		clearBoardMenu();
		$(e.target).attr("class", "list-group-item list-group-item-light active");
		$(".boardListBoxLogo").html(logo);
	}
	
	function deletePass() {
		var deletePass = $("#delete-pass").val();
		var deletePassCheck = $("#delete-passCheck").val();
		
		if(deletePass == "") {
			$("#delete-pass-span").html("빈칸없이").css("color", "red");
			passCheckPoint = 0;
		}
		else {
			if(deletePass == deletePassCheck) {
				$("#delete-pass-span").html("").css("color", "green");
				passCheckPoint = 3;
			}
			else {
				$("#delete-pass-span").html("").css("color", "green");
				$("#delete-passCheck-span").html("불일치").css("color", "red");
				passCheckPoint = 2;
			}
		}
	}
	
	function deletePassCheck() {
		var deletePass = $("#delete-pass").val();
		var deletePassCheck = $("#delete-passCheck").val();
		
		if(deletePass == "") {
			$("#delete-passCheck-span").html("빈칸없이").css("color", "red");
			passCheckPoint = 1;
		}
		else {
			if(deletePass == deletePassCheck) {
				$("#delete-passCheck-span").html("일치").css("color", "green");
				passCheckPoint = 3;
			}
			else {
				$("#delete-passCheck-span").html("불일치").css("color", "red");
				passCheckPoint = 2;
			}
		}
	}
	
	function deleteMember() {
		if(passCheckPoint == 0) {
			alert("빈칸 없이 입력해주세요.");
		}
		else if(passCheckPoint == 1) {
			$("#delete-passCheck-span").html("빈칸없이").css("color", "red");
		}
		else if(passCheckPoint == 2) {
			$("#delete-passCheck-span").html("불일치").css("color", "red");
		}
		else if(passCheckPoint == 3) {
			var deletePass = $("#delete-pass").val();
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/member/deleteMember",
				data: {
					"mem_id": "${sessionScope.loginInfo.mem_id}",
					"mem_pw": deletePass
				},
				success: (data) => {
					var result = eval('(' + data + ')');
					if(result.result == "passNo") {
						alert("비밀번호를 잘못 입력하셨습니다.");
					}
					else if(result.result == "fail") {
						alert("탈퇴 실패 다시 시도해주세요.");
					}
					else {
						alert("탈퇴되었습니다.");
						location.href = "${pageContext.request.contextPath}/main/login";
					}
				}
			});
		}
	}
	
	$(document).ready(() => {
		$(".profileInfoName a").click((e) => {
			profileNameEdit(e);
		})
		
		$("#profileInfoEditCancle").click(() => {
			profileEditCancle();
		});
		
		$("#profileInfoEditUpdate").click(() => {
			profileEditUpdate();
		});
		
		$("#profileBoardMenuAll").click((e) => {
			changeBoardListBoxLogo(e, "${sessionScope.loginInfo.mem_name}의 Feeds");
		});
		
		$("#profileBoardMenuComm").click((e) => {
			changeBoardListBoxLogo(e, "${sessionScope.loginInfo.mem_name}의 게시물");
		});
		
		$("#profileBoardMenuQuestion").click((e) => {
			changeBoardListBoxLogo(e, "${sessionScope.loginInfo.mem_name}의 질문");
		});
		
		$("#profileBoardMenuAnswer").click((e) => {
			changeBoardListBoxLogo(e, "${sessionScope.loginInfo.mem_name}의 답변");
		});
		
		$("#delete-pass").on("keyup", () => {
			deletePass()
		});
		
		$("#delete-passCheck").on("keyup", () => {
			deletePassCheck()
		});
		
		$("#deleteMemberButton").click(() => {
			deleteMember();
		});
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
			<div class="profileBoardMenu">
				<div class="profileBoardMenuLogo">Feeds</div>
				<div class="list-group">
					<a id="profileBoardMenuAll" class="list-group-item list-group-item-light active" href="">전체</a>
					<a id="profileBoardMenuComm" class="list-group-item list-group-item-light" href="">게시물</a>
					<a id="profileBoardMenuQuestion" class="list-group-item list-group-item-light" href="">질문</a>
					<a id="profileBoardMenuAnswer" class="list-group-item list-group-item-light" href="">답변</a>
				</div>
			</div>
			<div class="profileAddBox"></div>
			<div class="profileInfoBox">
				<div class="profileInfoImage">
					<img src="${pageContext.request.contextPath}/resources/memImage/${sessionScope.loginInfo.mem_image}">
				</div>
				<div class="profileInfoName">
					<div class="profileInfoNameBox">
						<a href="">
						${sessionScope.loginInfo.mem_name}
						</a>
					</div>
					<div class="profileInfoEditForm" style="display: none;">
						<form class="form-group">
							<input id="profileInfoEditName" class="form-control" type="text" value="${sessionScope.loginInfo.mem_name}">
							<input id="profileInfoEditCancle" class="btn btn-light" type="button" value="취소">
							<input id="profileInfoEditUpdate" class="btn btn-primary" type="button" value="수정">
						</form>
					</div>
				</div>
				<div class="profileInfoBoardList">
					<div class="profileInfoBoardListBasicBox">
						<div class="profileInfoBoardListBasiclabel">게시물</div>
						<div class="profileInfoBoardListBasicCnt"></div>
					</div>
					<div class="profileInfoBoardListQnaBox">
						<div class="profileInfoBoardListQnalabel">답변</div>
						<div class="profileInfoBoardListQnaCnt"></div>
					</div>
					<div class="profileInfoExpBox">
						<div class="profileInfoExpLabel">활동치</div>
						<div class="profileInfoExp">${sessionScope.loginInfo.mem_exp}</div>
					</div>
				</div>
				<div class="profileInfoDeleteBox">
					<a class="btn btn-light" data-toggle="modal"
					data-target="#deleteModal">
					<i class="fa fa-trash-o"></i></a>
				</div>
			</div>
			<div class="boardListBox">
				<div class="boardListBoxLogo">
					${sessionScope.loginInfo.mem_name}의 Feeds
				</div>
				<div class="boardListContent"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="exampleModalLabel">회원탈퇴</h5>
				</div>
				<div class="modal-body">
					<form action="" method="POST">
						<div class="form-group">
							<label for="#delete-pass">비밀번호</label>
							<span id="delete-pass-span">빈칸없이</span>
							<input id="delete-pass" class="form-control" type="password">
							<br>
							<label for="#delete-passCheck">비밀번호 확인</label>
							<span id="delete-passCheck-span">빈칸없이</span>
							<input id="delete-passCheck" class="form-control" type="password">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button id="deleteMemberButton" type="button" class="btn btn-primary">탈퇴</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>