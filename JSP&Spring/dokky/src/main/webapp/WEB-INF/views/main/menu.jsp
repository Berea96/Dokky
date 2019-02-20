<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	.memberAct div {
		margin-top: 3px;
	}
	.memberAct div:nth-child(1) {
		margin-right: 3px;
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
	.googleSearch input {
		width: 300px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		position: absolute;
		top: -5px;
		right: 75px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		position: absolute;
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
		top: 60px;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
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
	.memberAct div {
		margin-top: 3px;
	}
	.memberAct div:nth-child(1) {
		margin-right: 3px;
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
		margin-right: 10px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		position: absolute;
		top: -5px;
		right: 75px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		position: absolute;
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
		top: 60px;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
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
		margin-right: 4px;
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

@media screen and (min-width: 768px) and (max-width: 870px) {
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
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		left: 804px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 200px;
	}
	.memberInfo {
		top: 8px;
		left: 0px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 870px) and (max-width: 960px) {
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
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 50px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 200px;
	}
	.memberInfo {
		top: 8px;
		left: 0px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 960px) and (max-width: 1070px) {
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
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 50px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 250px;
	}
	.memberInfo {
		top: 8px;
		left: 0px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 1070px) and (max-width: 1100px) {
	.main-menu {
		position: fixed;
		top: 0px;
		left: 41%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.main-menu>div {
		left: -40%;
		width: 1039px;
		height: 100%;
		align-content: center;
		z-index: 1;
		background-color: white;
		position: relative;
		box-shadow: 0px 2px 2px gray;
	}
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 10px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 300px;
	}
	.memberInfo {
		top: 8px;
		right: 45px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 1100px) and (max-width: 1200px) {
	.main-menu {
		position: fixed;
		top: 0px;
		left: 50%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.main-menu>div {
		left: -50%;
		height: 100%;
		width: 1039px;
		align-content: center;
		z-index: 1;
		background-color: white;
		position: relative;
		box-shadow: 0px 2px 2px gray;
	}
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 10px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 300px;
	}
	.memberInfo {
		top: 8px;
		right: 45px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 1200px) and (max-width: 1300px) {
	.main-menu {
		position: fixed;
		top: 0px;
		left: 50%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.main-menu>div {
		left: -50%;
		width: 1039px;
		height: 100%;
		align-content: center;
		z-index: 1;
		background-color: white;
		position: relative;
		box-shadow: 0px 2px 2px gray;
	}
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 10px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 300px;
	}
	.memberInfo {
		top: 8px;
		right: 45px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 1300px) and (max-width: 1400px) {
	.main-menu {
		position: fixed;
		top: 0px;
		left: 52%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.main-menu>div {
		left: -50%;
		width: 1039px;
		height: 100%;
		align-content: center;
		z-index: 1;
		background-color: white;
		position: relative;
		box-shadow: 0px 2px 2px gray;
	}
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 10px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 300px;
	}
	.memberInfo {
		top: 8px;
		right: 45px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
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
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

@media screen and (min-width: 1400px) {
	.main-menu {
		position: fixed;
		top: 0px;
		left: 49.5%;
		height: 50px;
		align-content: center;
		z-index: 1;
	}
	.main-menu>div {
		left: -50%;
		width: 1039px;
		height: 100%;
		align-content: center;
		z-index: 1;
		background-color: white;
		position: relative;
		box-shadow: 0px 2px 2px gray;
	}
	.main-menu div div {
		position: absolute;
	}
	.brand {
		text-align: center;
	}
	.brand a {
		margin-left: 5px;
		font-size: 30px;
		color: #ff9966;
	}
	.memberDiv {
		position: absolute;
		right: 10px;
	}
	.memberAct {
		top: 11px;
		right: 36px;
	}
	.memberAct div:nth-child(1) {
		right: 3px;
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
		left: 480px;
	}
	.googleSearch input {
		width: 300px;
	}
	.memberInfo {
		top: 8px;
		right: 45px;
	}
	.memberInfo div:nth-child(3) {
		right: 4px;
	}
	.memberInfo div:nth-child(4) {
		right: 0px;
	}
	.memberInfo div, .memberAct div {
		float: left;
	}
	.memberInfo>div:nth-child(n + 2) a {
		background-color: #ff9966;
	}
	.memberImage {
		top: -5px;
		right: 60px;
	}
	.memberImage img {
		width: 45px;
		height: 45px;
		border-radius: 50%;
	}
	.memberMenuList {
		top: 60px;
		right: -25px;
		width: 100px;
		height: 200px;
		text-align: center;
		font-size: 16px;
		background-color: #e4e4e4;
		box-shadow: 2px 2px 2px gray;
	}
	.memberMenuList div:nth-child(1) {
		top: 10px;
		width: 100%;
	}
	.memberMenuList div:nth-child(2) {
		top: 30px;
		width: 100%;
	}
	.memberMenuList div:nth-child(3) {
		top: 50px;
		left: 1px;
		width: 100%;
	}
	.memberMenuList div a {
		background-color: #e4e4e4;
	}
	.memberNickName {
		display: none;
	}
	.memberExp {
		display: none;
	}
	.quickWrite {
		left: -56px;
	}
	.quickWrite a {
		width: 100px;
		height: 30px;
	}
	.sign-out, .mem-info {
		width: 45px;
		font-size: 20px;
		background-color: #ff9966;
	}
	.act {
		top: 8px;
		left: 150px;
	}
	.act a {
		background-color: #ff9966;
	}
}

body {
	background-color: #fbf0db;
}
</style>
<script type="text/javascript">
	function googleSearch(key) {
		var googleInputText = $("#googleSearchText").val();
		
		if(key.keyCode == 13) {
			location.href = "https://www.google.com/search?q=" + googleInputText;
		}
	}
	
	function memberMenu(e) {
		e.preventDefault();
		
		var displayNone = $(".memberMenuList").css("display");
		
		if(displayNone == "none") {
			$(".memberMenuList").css("display", "block");		
		}
		else {
			$(".memberMenuList").css("display", "none");		
		}
	}
	
	function changeCategory(e) {
		
		var target = $(e.target);
		
		var selectedItem = $("#category_1 option:selected").val();
		
		console.log("바꼈다!");
		console.log(target);
		
		if(selectedItem != "none") {
			$.ajax({
				type: "GET",
				url: "${pageContext.request.contextPath}/category/getCategory",
				data: {},
				success: (data) => {
					console.log(data);
				}
			});
		}
	}
	
	$(document).ready(() => {
		console.log("${sessionScope.loginInfo.mem_image}");
		$("#googleSearchText").keydown((key) => {
			googleSearch(key);
		});
		
		$(".memberMenu").click((e) => {
			memberMenu(e)
		});
		
		$("#category_1").change((e) => {
			changeCategory(e);
		});
		
		$(".body").click(() => {
			
			if($(".memberMenuList").css("display") == "block") {
				$(".memberMenuList").css("display", "none");
			}
		})
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="main-menu">
		<div>
			<div class="brand">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/member/home">DOKKY</a>
			</div>
			<div class="googleSearch">
				<input id="googleSearchText" type="text" placeholder="Google 검색">
			</div>
			<div class="memberDiv">
				<c:if test="${!empty sessionScope.loginInfo}">
					<div class="memberCard">
						<div class="memberInfo">
							<div class="memberImage">
									<a class="memberMenu" href=""><img
										src='${sessionScope.loginInfo.mem_image}'> </a>
								<div class="memberMenuList" style="display: none;">
									<div>
										<a
											href="${pageContext.request.contextPath}/member/profile/${sessionScope.loginInfo.mem_id}">프로필</a>
									</div>
									<div>
										<a
											href="${pageContext.request.contextPath}/member/logoutMember">로그아웃</a>
									</div>
								</div>
							</div>
							<div class="memberNickName">${sessionScope.loginInfo.mem_name}</div>
							<div class="quickWrite">
								<a class="btn btn-danger write-board" data-toggle="modal"
									data-target="#exampleModal"> <i
									class="fa fa-pencil-square-o"></i> 작성
								</a>
							</div>
							<div style="display: none;">
								<a class="btn btn-danger sign-out"
									href="${pageContext.request.contextPath}/member/logoutMember">
									<i class="fa fa-sign-out"></i>
								</a>
							</div>
							<div class="memberExp"># ${sessionScope.loginInfo.mem_exp}</div>
							<div style="display: none;">
								<a class="btn btn-danger mem-info"><i class="fa fa-vcard"></i>
								</a>
							</div>
						</div>
					</div>
				</c:if>
			</div>
			<div class="act">
				<a
					href="${pageContext.request.contextPath}/qnArticle/getBoardByCategory?cate=qna"
					class="btn btn-danger">Qna</a> <a
					href="${pageContext.request.contextPath}/article/getBoardByCategory?cate=tech"
					class="btn btn-danger">Tech</a> <a
					href="${pageContext.request.contextPath}/article/getBoardByCategory?cate=comm"
					class="btn btn-danger">Community</a> <a
					href="${pageContext.request.contextPath}/article/getBoardByCategory?cate=jobs"
					class="btn btn-danger">Jobs</a> <a
					href="https://github.com/Berea96/Dokky" class="btn btn-danger"><i
					class="fa fa-github"></i></a>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="exampleModalLabel">글 작성</h5>
				</div>
				<div class="modal-body">
					<form action="" method="POST">
						<div class="form-group">
							<label for="write-title">제목</label> <input id="write-title"
								class="form-control" type="text" placeholder="title"> <label
								for="write-category-1">게시판</label> <select id="category_1"
								class="form-control" name="category_1">
								<option value="none">선택
								<option value="qna">Q&A
								<option value="tech">Tech
								<option value="comm">Community
								<option value="jobs">Jobs
							</select> <label for="write-category-2">카테고리</label> <select
								id="category_2" class="form-control" name="category_2">
							</select> <label for="write-tags">태그</label> <input class="form-control"
								type="text" placeholder=""> <label for="write-title">제목</label>
							<textarea class="form-control" rows="10px" placeholder="content"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>