<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
		<!-- Responsive -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" href="css/reset.css">
		<!-- Boot strap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<!-- font -->
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<style>
			body{
				color: #212529;
				overflow-x: hidden;
			}
			.btn-primary{
				background-color: #78C2AD;
				border-color: #78C2AD
			}
			header{
				height: 100vh;
				width:100vw;
				background-color: #78c2ad;
			}
			header nav{
				width: 100vw;
				height:100px;
				background-color: #78c2ad;
				position: relative;
				z-index: 20;
			}
			header nav.stuck_menu{
	            position: fixed;
	            top:0;
	            box-shadow:0px 4px 10px rgba(0, 0, 0, 0.2);
	            z-index: 2;
         	}
			header nav h1{
				float: left;
				margin-left:5rem;
				margin-top:1.2rem
			}
			header nav ul{
				float: left;
				color: white;
				margin-top: 2.8rem
			}
			header nav ul li{
				float: left;
				margin-left:2rem;
				font-size:1.5rem;
				position: relative;
				z-index: 1;
				transition:all 1s;
			}
			header nav ul li a,
			header nav ul li a:active,
			header nav ul li a:visited,
			header nav ul li a:hover{
				text-decoration: none;
				color: white;	
			}
			header nav ul li:last-child{
				cursor: pointer;
			}
			
			
			header .hamburglar {
				transform: scale(1);
				margin:20px auto;
				position: absolute;
				display: block;
				width: 68px;
				height: 68px;
				/* background-color: red; */
				user-select: none;
				right:6%;
				top: 0;
				opacity: 0.8;
				display: none;
			}
			header #hamburger .path-burger {
				position: absolute;
				top: 0;
				left: 0;
				height: 68px;
				width: 68px;
				mask: url(#mask);
			}
			header #hamburge .path-burger .animate-path {
				position: absolute;
				top: 0;
				left: 0;
				width: 68px;
				height: 68px;
			}
			header #hamburge .path-burger .animate-path .path-rotation {
				height: 34px;
				width: 34px;
				margin: 34px 34px 0 0;
				transform: rotate(0deg);
				transform-origin: 100% 0;
			}
			header #hamburge .path-burger .animate-path .path-rotation::before{
					content: '';
					display: block;
					width: 30px;
					height: 34px;
					margin: 0 4px 0 0;
					/* background-color: #fff; */
			}	
			@keyframes rotate-out {
				0% {
					transform: rotate(0deg);
				}
				40% {
					transform: rotate(180deg);
				}
				100% {
					transform: rotate(360deg);
				}
			}
			@keyframes rotate-in {
				0% {
					transform: rotate(360deg);
				}
				40% {
					transform: rotate(180deg);
				}
				100% {
					transform: rotate(0deg);
				}
			}
			header .hamburglar.is-open .path {
				animation: dash-in 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-open .animate-path {
				animation: rotate-in 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-closed .path {
				animation: dash-out 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-closed .animate-path {
				animation: rotate-out 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header #hamburger .path {
				stroke-dasharray: 240;
				stroke-dashoffset: 240;
				stroke-linejoin: round;
			}
			@keyframes dash-in {
				0% {
					stroke-dashoffset: 240;
				}
				40% {
					stroke-dashoffset: 240;
				}
				100% {
					stroke-dashoffset: 0;
				}
			}
			@keyframes dash-out {
				0% {
					stroke-dashoffset: 0;
				}
				40% {
					stroke-dashoffset: 240;
				}
				100% {
					stroke-dashoffset: 240;
				}
			}
			header #hamburger .burger-icon {
				position: absolute;
				padding: 20px 16px;
				height: 68px;
				width: 68px;
			}
			header #hamburger .burger-icon .burger-container {
				position: relative;
				height: 28px;
				width: 36px;
			}
			header #hamburger .burger-icon .burger-container .burger-bun-top, 
			header #hamburger .burger-icon .burger-container .burger-bun-bot, 
			header #hamburger .burger-icon .burger-container .burger-filling {
				position: absolute;
				display: block;
				height: 4px;
				width: 36px;
				border-radius: 2px;
				background:#fff;
			}
			header #hamburger .burger-icon .burger-container .burger-bun-top {
				top: 0;
				transform-origin: 34px 2px;
			}
			header #hamburger .burger-icon .burger-container .burger-bun-bot {
				bottom: 0;
				transform-origin: 34px 2px;
			}
			header #hamburger .burger-icon .burger-container .burger-filling {
				top: 12px;
			}
			header #hamburger .burger-ring {
				position: absolute;
				top: 0;
				left: 0;
				width: 68px;
				height: 68px;
			}
			header #hamburger .burger-ring .svg-ring {
				width: 68px;
				height: 68px;
			}
			header .hamburglar.is-open .burger-bun-top {
				animation: bun-top-out 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-open .burger-bun-bot {
				animation: bun-bot-out 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-closed  .burger-bun-top {
				animation: bun-top-in 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-closed .burger-bun-bot {
				animation: bun-bot-in 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			@keyframes bun-top-out {
				0% {
					left: 0;
					top: 0;
					transform: rotate(0deg);
				}
				20% {
					left: 0;
					top: 0;
					transform: rotate(15deg);
				}
				80% {
					left: -5px;
					top: 0;
					transform: rotate(-60deg);
				}
				100% {
					left: -5px;
					top: 1px;
					transform: rotate(-45deg);
				}
			}
			@keyframes bun-bot-out {
				0% {
					left: 0;
					transform: rotate(0deg);
				}
				20% {
					left: 0;
					transform: rotate(-15deg);
				}
				80% {
					left: -5px;
					transform: rotate(60deg);
				}
				100% {
					left: -5px;
					transform: rotate(45deg);
				}
			}
			@keyframes bun-top-in {
				0% {
					left: -5px;
					bot: 0;
					transform: rotate(-45deg);
				}
				20% {
					left: -5px;
					bot: 0;
					transform: rotate(-60deg);
				}
				80% {
					left: 0;
					bot: 0;
					transform: rotate(15deg);
				}
				100% {
					left: 0;
					bot: 1px;
					transform: rotate(0deg);
				}
			}
			@keyframes bun-bot-in {
				0% {
					left: -5px;
					transform: rotate(45deg);
				}
				20% {
					left: -5px;
					bot: 0;
					transform: rotate(60deg);
				}
				80% {
					left: 0;
					bot: 0;
					transform: rotate(-15deg);
				}
				100% {
					left: 0;
					transform: rotate(0deg);
				}
			}
			header .hamburglar.is-open .burger-filling {
				animation: burger-fill-out 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			header .hamburglar.is-closed .burger-filling {
				animation: burger-fill-in 0.6s linear normal;
				animation-fill-mode:forwards;
			}
			@keyframes burger-fill-in {
				0% {
					width: 0;
					left: 36px;
				}
				40% {
					width: 0;
					left: 40px;
				}
				80% {
					width: 36px;
					left: -6px;
				}
				100% {
					width: 36px;
					left: 0px;
				}
			}
			@keyframes burger-fill-out {
				0% {
					width: 36px;
					left: 0px;
				}
				20% {
					width: 42px;
					left: -6px;
				}
				40% {
					width: 0;
					left: 40px;
				}
				100% {
					width: 0;
					left: 36px;
				}
			}
			header #hamburger_menu{
				width: 100%;
				background-color:#78c2ad;
				position: absolute;
				top:100px;
				display: none;
				padding-right: 5%;
				z-index: 100
			}
			header #hamburger_menu ul#burger_menu{
				color: white;
				height: 100%;
				float: right;
				font-size:1.5rem;
				margin-right: 5%;
				text-align: right;
			}
			header #hamburger_menu ul#burger_menu li{
				float: none;
				border-bottom: 2px dashed #bde0ef7d
			}
			header #hamburger_menu ul#burger_menu li a{
				color: white;
				text-decoration: none;
			}
			
			@media all and ( max-width : 780px ){
				header nav ul#main_menu{
					display: none;
				}
				header .hamburglar{
					display: block;
				}
			}
			@media all and ( max-width : 600px ){
				header nav h1{
					margin-left: 2rem;
				}
				header .hamburglar{
					right:2%
				}
			}
			
			
			
			
			header #contact .modal-body textarea:focus{
				border-color:#e9ecef;
				box-shadow: red
				/* box-shadow: 0 0 0 0.2rem rgba(197, 191, 191, 0.15); */
			}
			.form-control:focus{
				border-color:#e9ecef;
				box-shadow:0 0 0 0.2rem rgba(197, 191, 191, 0.15);
			}
			header #contact_modal .modal-footer p{
				float: left;
				position: absolute;
				left:5%
			}
			header #contact_modal .modal-footer button{
				float: right;
			}
			header #contact_modal .modal-footer button.btn-secondary{
				background-color: #bec2c5;
				border: none;
			}
			
			header #minttown {
				width: 100vw;
				height:85vh;
				overflow: hidden;
			}
			header #minttown .sky {
				position: absolute;
				background: #96dada;
				width: 100%;
				height: 200px;
				z-index: -2;
			}
			header #minttown .deep_sky {
				position: absolute;
				background: #78c7c7;
				width: 100%;
				height: 100px;
			}
			header #minttown .deep_sky:before {
				content: "";
				position: absolute;
				background: #5fb4b4;
				width: 100%;
				height: 30px;
			}
			header #minttown .ground {
				position: absolute;
				background: #a2e6cf;
				width: 100%;
				height: 180px;
				bottom: 0;
			}
			header #minttown .ice {
				position: absolute;
				background: #c7ede0;
				width: 100%;
				height: 40px;
			}
			header #minttown .glare {
				position: absolute;
				background: #ffffff;
				width: 95%;
				height: 10px;
				top: 0;
			}
			header #minttown .glare:before {
				content: "";
				position: absolute;
				background: #c7ede0;
				width: 10px;
				height: 10px;
				bottom: 0;
				left: 40%;
				box-shadow: -10px 0px 0px #e3f7f0, 5px 0px 0px #c7ede0, 10px 0px 0px #c7ede0, 15px 0px 0px #c7ede0, 20px 0px 0px #c7ede0, 25px 0px 0px #c7ede0, 30px 0px 0px #c7ede0, 35px 0px 0px #c7ede0, 40px 0px 0px #c7ede0, -140px 10px 0px #e3f7f0, -150px 10px 0px #ffffff, -155px 10px 0px #ffffff, -160px 10px 0px #ffffff, -165px 10px 0px #ffffff, -170px 10px 0px #ffffff, -175px 10px 0px #ffffff, -180px 10px 0px #ffffff, -185px 10px 0px #ffffff, -190px 10px 0px #ffffff, -195px 10px 0px #ffffff, -200px 10px 0px #ffffff, -180px 20px 0px #e3f7f0, -280px 10px 0px #e3f7f0, -290px 10px 0px #ffffff, -295px 10px 0px #ffffff, -300px 10px 0px #ffffff, -305px 10px 0px #ffffff, -310px 10px 0px #ffffff, -315px 10px 0px #ffffff, -320px 10px 0px #ffffff, -325px 10px 0px #ffffff, -330px 10px 0px #ffffff, -335px 10px 0px #ffffff, -340px 10px 0px #ffffff, -345px 10px 0px #ffffff, -350px 10px 0px #ffffff;
			}
			header #minttown .glare:after {
				content: "";
				position: absolute;
				background: #c7ede0;
				width: 10px;
				height: 10px;
				bottom: 0;
				right: 0;
				box-shadow: -10px 0px 0px #e3f7f0, -200px 0px 0px #c7ede0, -205px 0px 0px #c7ede0, -210px 0px 0px #c7ede0, -215px 0px 0px #c7ede0, -220px 0px 0px #c7ede0, -225px 0px 0px #c7ede0, -230px 0px 0px #c7ede0, -240px 0px 0px #e3f7f0, -250px 0px 0px #c7ede0, -255px 0px 0px #c7ede0, -260px 0px 0px #c7ede0, -270px 0px 0px #e3f7f0, -120px 10px 0px #e3f7f0, -130px 10px 0px #ffffff, -135px 10px 0px #ffffff, -140px 10px 0px #ffffff, -145px 10px 0px #ffffff, -150px 10px 0px #ffffff, -350px 10px 0px #e3f7f0, -360px 10px 0px #ffffff, -365px 10px 0px #ffffff, -370px 10px 0px #ffffff, -375px 10px 0px #ffffff, -380px 10px 0px #ffffff, -385px 10px 0px #ffffff, -390px 10px 0px #ffffff, -395px 10px 0px #ffffff, -400px 10px 0px #ffffff, -405px 10px 0px #ffffff, -410px 10px 0px #ffffff
			}
			header #minttown .ice_shadow {
				position: absolute;
				background: #84bba8;
				width: 100%;
				height: 10px;
				bottom: -10px;
			}
			header #minttown .ice_shadow:before {
				content: "";
				position: absolute;
				background: #a2d1c1;
				width: 10px;
				height: 10px;
				bottom: 0;
				left: 20%;
				box-shadow: 10px 0px 0px #a3e2cd, 95px -10px 0px #84bba8, 100px -10px 0px #84bba8, 105px -10px 0px #84bba8, 110px -10px 0px #84bba8, 115px -10px 0px #84bba8, 120px -10px 0px #84bba8, 125px -10px 0px #84bba8, 130px -10px 0px #84bba8, 135px -10px 0px #a2d1c1, 140px -10px 0px #a2d1c1, 400px 0px 0px #a2d1c1, 410px 0px 0px #a3e2cd;
			}
			header #minttown .ice_shadow:after {
				content: "";
				position: absolute;
				background: #84bba8;
				width: 20px;
				height: 10px;
				bottom: 10px;
				right: 10%;
				box-shadow: 10px 0px 0px #a2d1c1, -20px 0px 0px #84bba8, -140px 0px 0px #84bba8, -160px 0px 0px #84bba8, -170px 0px 0px #84bba8, -180px 0px 0px #84bba8, -190px 0px 0px #84bba8;
			}
			header #minttown .g1 {
				position: absolute;
				background: #72ccad;
				width: 100%;
				height: 20px;
				bottom: 0;
			}
			header #minttown .g2 {
				position: absolute;
				background: #72ccad;
				width: 50px;
				height: 140px;
				right: -30px;
				bottom: 72%;
				box-shadow: -10px 50px 0px #72ccad, -20px 70px 0px #72ccad, -30px 80px 0px #72ccad, -40px 90px 0px #72ccad, -60px 100px 0px #72ccad, -110px 110px 0px #72ccad;
			}
			header #minttown .g3 {
				position: absolute;
				background: #c6feeb;
				width: 180px;
				height: 20px;
				top: 40px;
				box-shadow: -80px 10px 0px #c6feeb, -130px 20px 0px #c6feeb, -150px 30px 0px #c6feeb, -160px 40px 0px #c6feeb, -170px 50px 0px #c6feeb;
			}
			header #minttown .mountain_a {
				position: absolute;
				background: #eeeeee;
				width: 780px;
				height:450px;
				border-radius: 50%;
				bottom:0;
				left: 5%;
				opacity: 0.5
			}
			header #minttown .mountain_b {
				position: absolute;
				background: #e5e5e5;
				width: 620px;
				height:370px;
				border-radius: 50%;
				left: 25%;
				bottom:0
			}
			header #minttown .house {
				position: absolute;
				bottom: 220px;
			}
			header #minttown .house.right {
				right: 10%;
			}
			header #minttown .house.left {
				left: 12%;
			}
			header #minttown .wall {
				position: absolute;
				background: #e2f4f4;
				width: 80px;
				height: 40px;
			}
			header #minttown .wall:before {
				content: "";
				position: absolute;
				background: transparent;
				width: 0;
				height: 0;
				bottom: 40px;
				border-bottom: 80px solid #e2f4f4;
				border-left: 40px solid transparent;
				border-right: 40px solid transparent;
			}
			header #minttown .roof {
				position: absolute;
				background: #ffffff;
				width: 100px;
				height: 10px;
				border-radius: 40px;
			}
			header #minttown .roof.right {
				left: 14px;
				bottom: 30px;
				transform: rotate(58deg);
			}
			header #minttown .roof.left {
				left: -34px;
				bottom: 30px;
				transform: rotate(-58deg);
			}
			header #minttown .door {
				position: absolute;
				background: #9acccb;
				width: 20px;
				height: 30px;
				bottom: -40px;
				left: 16px;
			}
			header #minttown .fence {
				position: absolute;
				background: #ffffff;
				width: 3px;
				height: 30px;
				bottom: -45px;
				left: -20px;
				border-radius: 3px;
				box-shadow: -10px 0px 0px #ffffff, -20px 0px 0px #ffffff, -30px 0px 0px #ffffff, -40px 0px 0px #ffffff, -50px 0px 0px #ffffff, -60px 0px 0px #ffffff, -70px 0px 0px #ffffff;
			}
			header #minttown .fence:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 72px;
				height: 3px;
				bottom: 22px;
				right: 0;
				box-shadow: 0px 14px 0px #ffffff;
			}
			header #minttown .tree_back {
				position: absolute;
				background: #348e8d;
				width: 10px;
				height: 15px;
				bottom: 180px;
				right: 30%;
			}
			header #minttown .tree_back:before {
				content: "";
				position: absolute;
				background: #e2f4f4;
				width: 30px;
				height: 60px;
				border-radius: 50%;
				bottom: 15px;
				right: -10px;
			}
			header #minttown .tree {
				position: absolute;
				background: #348e8d;
				width: 10px;
				height: 40px;
				bottom: 180px;
				right: 28%;
			}
			header #minttown .tree:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 40px;
				height: 80px;
				border-radius: 50%;
				bottom: 25px;
				left: -15px;
			}
			header #minttown .postbox_a {
				position: absolute;
				background: #73fffd;
				width: 20px;
				height: 25px;
				bottom: 190px;
				left: 35%;
				animation-name: upppp;
				animation-duration: 1s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
				animation-direction: alternate;
			}
			header #minttown .postbox_a:after {
				content: "";
				position: absolute;
				background: #76ecea;
				width: 5px;
				height: 20px;
				bottom: -20px;
				left: 8px;
			}
			header #minttown .hole {
				position: absolute;
				background: #ffffff;
				width: 6px;
				height: 2px;
				top: 5px;
				left: 2px;
				box-shadow: 10px 0px 0px rgba(100%, 100%, 100%);
			}
			header #minttown .postbox_b {
				position: absolute;
				background: #2cb7b5;
				width: 20px;
				height: 25px;
				bottom: 190px;
				left: 37%;
				animation-name: upppp;
				animation-duration: 1s;
				animation-delay: 1s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
				animation-direction: alternate;
			}
			header #minttown .postbox_b:after {
				content: "";
				position: absolute;
				background: #348e8d;
				width: 5px;
				height: 20px;
				bottom: -20px;
				left: 8px;
			}
			@keyframes upppp { 
				100% {
					transform: translatey(-10px);
				}
			}
			header #minttown .cloud {
				position: relative;
				background: #ffffff;
				width: 100px;
				height: 40px;
				top: 50px;
				border-radius: 50px;
				z-index: -1;
			}
			header #minttown .cloud:after {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 50px;
				height: 50px;
				border-radius: 50%;
				top: -20px;
				left: 10px;
			}
			header #minttown .cloud:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 40px;
				height: 40px;
				border-radius: 50%;
				top: -15px;
				right: 20px;
			}
			header #minttown .c1 {
				top: 60px;
				opacity: 0.5;
				animation-name: moving;
				animation-duration: 35s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
			}
			header #minttown .c2 {
				top: 80px;
				opacity: 0.8;
				animation-name: moving;
				animation-duration: 25s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
			}
			header #minttown .c3 {
				top: 100px;
				animation-name: moving;
				animation-duration: 18s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
			}
			@keyframes moving { 
				0% {
					margin-left: -200px;
				}
				100% {
					margin-left:105%;
				}
			}
			header #minttown .windmill {
				position: absolute;
				left: 50%;
				bottom: 180px;
			}
			header #minttown .tower {
				position: absolute;
				background: transparent;
				width: 60px;
				height: 0;
				border-top: 0px solid transparent;
				border-bottom: 90px solid #e2f4f4;
				border-right: 20px solid transparent;
				border-left: 20px solid transparent;
				bottom: 0;
			}
			header #minttown .t1 {
				position: absolute;
				background: #2cb7b5;
				width: 90px;
				height: 10px;
				bottom: 40px;
				left: 5px;
			}
			header #minttown .t1:before {
				content: "";
				position: absolute;
				background: #2cb7b5;
				width: 20px;
				height: 20px;
				bottom: -40px;
				right: 35px;
				box-shadow: 0px -54px 0px #2cb7b5;
			}
			header #minttown .t2 {
				position: absolute;
				background: transparent;
				width: 0;
				height: 0;
				border-bottom: 40px solid #2cb7b5;
				border-right: 30px solid transparent;
				border-left: 30px solid transparent;
				bottom: 90px;
				left: 20px;
			}
			header #minttown .t2:after {
				content: "";
				position: absolute;
				background: #2cb7b5;
				width: 70px;
				height: 10px;
				border-radius: 10px;
				bottom: -50px;
				left: -35px;
			}
			header #minttown .blade {
				position: absolute;
				width: 100px;
				height: 200px;
				left: 0;
				bottom: 0;
				animation-name: spin;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			header #minttown .windblade {
				position: absolute;
				background: #ffffff;
				width: 4px;
				height: 76px;
				bottom: 106px;
				left: 46px;
			}
			header #minttown .windblade:before {
				content: "";
				position: absolute;
				background: #e2f4f4;
				opacity: 0.8;
				width: 16px;
				height: 60px;
			}
			header #minttown .windblade2 {
				transform: rotate(90deg);
				bottom: 65px;
				left: 87px;
			}
			header #minttown .windblade3 {
				transform: rotate(180deg);
				bottom: 25px;
			}
			header #minttown .windblade4 {
				transform: rotate(270deg);
				bottom: 65px;
				left: 5px;
			}
			header #minttown .windblade4:after {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				bottom: -8px;
				right: -3px;
			}
			
			@keyframes spin { 
				100% {
					transform: rotate(360deg);
				}
			}
			header #minttown .allsnows {
				position: absolute;
				width: 100%;
				height: 100%;
				left: 0;
				top: 0;
			}
			@keyframes snowing { 
				0% {
					opacity: 0;
				}
				70%{
					opacity:1;
				}
				100%{
					transform:translatey(600px);
				}
			}
			header #minttown .allsnows .snow1 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				left: 5%;
				top: -2%;
			}
			header #minttown .allsnows .snow2 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 3s;
				left: 10%;
				top: -2%;
			}
			header #minttown .allsnows .snow3 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 7s;
				left: 15%;
				top: -2%;
			}
			header #minttown .allsnows .snow4 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 2s;
				left: 20%;
				top: -2%;
			}
			header #minttown .allsnows .snow5 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 5s;
				left: 25%;
				top: -2%;
			}
			header #minttown .allsnows .snow6 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 3s;
				left: 30%;
				top: -2%;
			}
			header #minttown .allsnows .snow7 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 7s;
				left: 35%;
				top: -2%;
			}
			header #minttown .allsnows .snow8 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 4s;
				left: 40%;
				top: -2%;
			}
			header #minttown .allsnows .snow9 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 1s;
				left: 45%;
				top: -2%;
			}
			header #minttown .allsnows .snow10 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 6s;
				left: 50%;
				top: -2%;
			}
			header #minttown .allsnows .snow11 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 5s;
				left: 55%;
				top: -2%;
			}
			header #minttown .allsnows .snow12 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 7s;
				left: 60%;
				top: -2%;
			}
			header #minttown .allsnows .snow13 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 4s;
				left: 65%;
				top: -2%;
			}
			header #minttown .allsnows .snow14 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 6s;
				left: 70%;
				top: -2%;
			}
			header #minttown .allsnows .snow15 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 4s;
				left: 75%;
				top: -2%;
			}
			header #minttown .allsnows .snow16 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 3s;
				left: 80%;
				top: -2%;
			}
			header #minttown .allsnows .snow17 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 6s;
				left: 85%;
				top: -2%;
			}
			header #minttown .allsnows .snow18 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 2s;
				left: 90%;
				top: -2%;
			}
			header #minttown .allsnows .snow19 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 10s;
				animation-iteration-count: infinite;
				animation-delay: 3s;
				left: 95%;
				top: -2%;
			}
			header #minttown .allsnows .snow20 {
				position: absolute;
				background: #ffffff;
				width: 10px;
				height: 10px;
				border-radius: 50%;
				animation-name: snowing;
				animation-duration: 8s;
				animation-iteration-count: infinite;
				animation-delay: 8s;
				left: 45%;
				top: -2%;
			}			
			/* ------------------------------------------------------------------- */ 
			/* header nav ul li:hover::after{
				content: "★";
				color: white;
				position: absolute;
				top:-40%;
				left:-10%;
				font-size:1.5rem;
				opacity:0.5;
				transition:all 1s;
			} */
			
			#wrap{
				width: 60vw;
				margin:15vh auto;
				/* padding-top:10vh; */
				/* height: 90vh */
			}
			
			/* search button */
			#search_section{
				float:right; 
				margin-right:10px;
			}
			.search-form .form-group {
				float: right;
				transition: all 0.35s, border-radius 0s;
				width: 32px;
				height: 32px;
				background-color: #fff;
				box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
				border-radius: 25px;
				border: 1px solid #ccc;
				position: relative;
			}
			.search-form .form-group input.form-control {
				padding-right: 20px;
				border: 0 none;
				background: transparent;
				box-shadow: none;
				display:block;
			}
			.search-form .form-group input.form-control::placeholder{
				color: silver;
			}
			/* .search-form .form-group input.form-control::-webkit-input-placeholder {
				display: none;
			}
			.search-form .form-group input.form-control:-moz-placeholder {
				display: none;
			}
 			.search-form .form-group input.form-control::-moz-placeholder {
				display: none;
			}
			.search-form .form-group input.form-control:-ms-input-placeholder {
				display: none;
			} */
			#search_section:hover .form-group{
				width:300px;
				border-radius: 4px 25px 25px 4px;
			}
			.search-form .form-group i#icon {
				position: absolute;
				top: -1px;
				right: -2px;
				z-index:1;
				display: block;
				width: 34px;
				height: 34px;
				line-height: 34px;
				text-align: center;
				color: #b9dfd4;
				left: initial;
				font-size: 14px;
			}
			
			
			table#board_list thead{
				background-color: #b9dfd4;
			}
			table#board_list tr th {
				text-align: center;
			}
			table#board_list thead tr th{
				color: white;
			}
			table#board_list tbody tr td{
				padding-left:20px
			}
			table#board_list tbody tr td button{
				background-color: transparent;
				cursor: pointer;
				border:none;
			}
			table#board_list tbody tr td .collapse span{
				display: block;
				width: 90%;
				float: left;
				word-wrap: break-word;				
			}
			table#board_list tbody tr td button#setting_btn{
				float: right;
				width: 5%
			}
			table#board_list tbody tr td #button_group{
				float: right;
				/* display: none; */
			}
			table#board_list tbody tr td #button_group button{
				color: #78C2AD;
				border-color: #78C2AD;
			}
			table#board_list tbody tr td #button_group button:hover{
				background-color: #78C2AD;
				color: white;
			}
			#pagination_wrap nav#pagination{
				float: left;
				width: 90%;
			}
			#pagination_wrap nav#pagination ul li a{
				color:#78C2AD
			}
			#pagination_wrap button#write_btn{
				background-color:#78C2AD;
				border-color:#78C2AD;
				float: right;
				margin: 0 auto;
			}
			#pagination_wrap button#write_btn:hover{
				background-color: white;
				color: #78C2AD;
				border-color: #78C2AD
			}
			
			#write_modal .modal-content .modal-body .input-group.flex-nowrap{
				margin-bottom: 10px
			} 
			
			#write_modal .modal-content .modal-body input::placeholder{
				color: #dee2e6
			}
			#write_modal .modal-content .modal-body textarea::placeholder{
				color: #dee2e6
			}
			#write_modal .modal-content .modal-footer button:hover{
				background-color: white;
				color: #78C2AD;
				border-color: #78C2AD
				
			}
			
			p#lorem{
				clear: both;
				color:#78C2AD
			}
			
			button#top_button{
				float: right;
				position: fixed;
				bottom: 10%;
				right:3%;
				display: none;
			}
			button#top_button:hover {
				background-color: #78c2ad;
				border: none;
			}
			footer{
				height: 10vh;
				width: 100vw;
				background-color:#78c2ad;
				text-align: center;
			}
			footer span{
				color: white;
				line-height: 100px
			}
			
			
			@media all and (max-width:900px){
				#wrap{
					width: 70vw
				}
			}
			@media all and (max-width:850px){
				#wrap{
					width: 90vw
				}
			}
			@media all and (max-width:500px){
				#wrap{
					width:99vw
				}
				table#board_list tbody tr td button:first-child{
					width:100px;
					display: inline-block;
					white-space: nowrap;
					overflow: hidden;
					text-overflow: ellipsis;
				}
			}
			
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- Boot strap -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<!-- Vue -->
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		<!-- mousewheel -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
		<script>
			$(function() {

				//mobile version burger menu
				var trigger = $('header #hamburger');
				var isClosed = false;
				
				trigger.click(function () {
					burgerTime();
				});
				
				function burgerTime() {
					if (isClosed == true) {
						trigger.removeClass('is-open');
						trigger.addClass('is-closed');
						isClosed = false;
						$("header #hamburger_menu").slideUp();
					} else {
						trigger.removeClass('is-closed');
						trigger.addClass('is-open');
						isClosed = true;
						$("header #hamburger_menu").slideDown();
					}
				}

				//response th, td display
				/* $(window).on("load", function(){
					response_th_td();
				});
				$(window).resize(function(){
					response_th_td();
				});
				function response_th_td(){
					var brower=$(window).width();
					if(brower < 1200){
						$("table#board_list thead tr th").eq(3).css({display: "none"});
						$("table#board_list tbody tr td").eq(3).css({display: "none"});
					}else{
						$("table#board_list thead tr th").eq(3).css({display: "block"});
						$("table#board_list tbody tr td").eq(3).css({display: "block"});
					}
				} */

				$(document).ready(function() {
					$("table#board_list tbody tr td > button").click(function(){
					});
				});

				var scrollPos = 0;
				$(window).scroll(function(){
					var scroll_position=$(this).scrollTop();
					if( scroll_position >= 10 ){ //header main menu 
						$("header nav").addClass("stuck_menu");
					}else{
						$("header nav").removeClass("stuck_menu");
					}
					
					//스크롤 다운하면 아래로 내려가는 모션
					/* if( 10 <=scroll_position && scroll_position >=100){
						$("html, body").animate({scrollTop:$("#wrap").offset().top});
					} */
					
					//스트룰 다운 && 100보다 높을경우.
					if(scroll_position < scrollPos && 100 < scrollPos){
						$("button#top_button:not(:animated)").fadeIn();
						setTimeout(function(){
							$("button#top_button:not(:animated)").fadeOut();
						}, 4000);
					}else{
						$("button#top_button:not(:animated)").fadeOut();
					}
					scrollPos = $(this).scrollTop(); // 현 위치값 저장
				});
				$("button#top_button").click(function(){ //top button click, position top
					$("html, body").animate({scrollTop:0});
				});
				
				
				/* $(document).ready()는 $(window).load()보다 먼저 실행되지만,
				$(document).ready()는 문서 안의 리소스가 다 로딩되기도 전에 실행되기 때문에, 
				다 로딩이 된 후 작동되어야 하는 UI의 경우에는 문제가 생긴다.
				$(window).on->DOM이 전부 로드된 시점에 실행된다 */
				$(window).on("mousewheel",  function(e, delta){
					var e_pageX=e.pageX;  //e는 마우스 좌표값
					if(delta > 0){  //delta는 휠 방향 1이 up, -1이 down
						$("html:not(:animated), body:not(:animated)").animate({scrollTop: 0});
					}else{
						$("html:not(:animated), body:not(:animated)").animate({scrollTop:$("#wrap").offset().top});
					}
				});
				
			});
			function collapse_hide(){
				$(".collapse").collapse("hide");
			}
		</script>
	</head>
	<body>
		<header>
			<nav>
				<h1>
					<a href="/main">
						<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="100px" viewBox="0 0 315 165" enable-background="new 0 0 315 165" xml:space="preserve">
							<path fill="#FFFFFF" d="M253.563,75.838h-11.194V64.705c0-12.484,12.38-14.98,22.991-15.084c12.601,0,27.18-5.764,27.85-19.896 c-1.664-0.59-3.415-1.019-5.18-1.314c0.003,0.102,0.01,0.197,0.01,0.299c0,12.277-13.42,15.814-22.888,15.814 c-13.42,0-28.297,4.16-28.297,20.286v16.438h16.274v-0.938C253.129,78.7,253.283,77.216,253.563,75.838z"/>
							<path fill="#FFFFFF" d="M293.209,29.725c6.146,2.18,11.104,6.553,11.104,14.483c0,12.276-13.42,15.813-22.888,15.813 c-12.081,0-25.338,3.378-27.863,15.816h5.678c2.588-8.722,13.158-10.628,22.394-10.719c12.9,0,27.882-6.034,27.882-20.911 c-0.075-11.232-7.542-17.249-16.698-19.769c0.266,1.332,0.414,2.752,0.424,4.27C293.241,29.055,293.225,29.39,293.209,29.725z"/>
							<path fill="#FFFFFF" d="M281.426,22.985c-11.66,0-24.627,3.794-27.353,15.54l-11.289-10.752c0-12.068,12.692-15.397,22.367-15.397 c8.416,0,18.898,2.513,21.989,10.958c1.931,0.237,3.837,0.6,5.677,1.105c-2.487-12.451-15.541-16.953-27.666-16.953 c-13.108,0-27.881,4.785-27.881,20.287l16.274,15.498h5.513c0-12.067,12.693-15.396,22.368-15.396c2.12,0,4.372,0.162,6.604,0.535 c-0.03-1.89-0.34-3.578-0.889-5.076C285.242,23.1,283.323,22.985,281.426,22.985z"/>
							<path fill="#FFFFFF" d="M292.513,75.838H259.24c-0.386,1.299-0.598,2.747-0.598,4.366v1.043h33.87l10.594,10.089h-44.464V81.247 h-5.514v15.499h55.658v-5.41L292.513,75.838z"/>
							<polygon fill="#FFFFFF" points="14.924,111.844 13.173,111.844 11.518,111.844 11.518,118.001 13.923,118.001 68.869,118.001 68.869,111.844 "/>
							<polygon fill="#FFFFFF" points="11.518,151.481 11.518,126.014 11.518,118.001 5.484,118.001 5.484,157.515 82.866,157.515 82.866,151.481 "/>
							<polygon fill="#FFFFFF" points="11.518,78.363 82.866,78.363 82.866,72.33 5.484,72.33 5.484,111.844 11.518,111.844 11.518,100.389 "/>
							<path fill="#FFFFFF" d="M145.932,151.357h-43.106c-1.843,0-3.51-0.696-4.823-2.013c-1.331-1.328-2.008-2.951-2.008-4.818V89.672 h-6.157v54.854c0,1.784,0.34,3.476,1.012,5.028c0.68,1.575,1.621,2.97,2.799,4.148c1.178,1.178,2.573,2.119,4.147,2.799 c1.553,0.672,3.245,1.013,5.029,1.013h43.106c1.789,0,3.506-0.343,5.104-1.019c1.611-0.68,3.022-1.619,4.197-2.793 c1.175-1.176,2.116-2.571,2.798-4.148c0.672-1.555,1.013-3.247,1.013-5.028V89.672h-6.156v54.854c0,1.839-0.695,3.506-2.012,4.821 C149.543,150.681,147.879,151.357,145.932,151.357z"/>
							<path fill="#FFFFFF" d="M234.949,97.63c-0.684-1.576-1.625-2.973-2.799-4.148c-1.175-1.174-2.57-2.115-4.148-2.797 c-1.556-0.672-3.248-1.013-5.028-1.013h-50.183v6.157h-6.034v61.686h6.157v-54.855c0-1.839,0.695-3.506,2.01-4.82 c1.334-1.334,2.998-2.011,4.945-2.011h43.104c1.837,0,3.503,0.695,4.819,2.01c1.317,1.318,2.013,2.985,2.013,4.821v54.855h6.156 v-54.855C235.962,100.881,235.621,99.188,234.949,97.63z"/>
						</svg>
					</a>
				</h1>
				<ul id="main_menu">
					<li><a href="profile">Profile</a></li>
					<!-- winni cho랑 about me는 합칠것  -->
					<li><a href="about_me">About me</a></li>
					<li><a href="artwork">Portfolio</a></li>
					<li><a href="board">Board</a></li>
					<li data-toggle="modal" data-target="#contact_modal">Contact</button></li>
				</ul>
				<div id="hamburger" class="hamburglar is-closed">
					<div class="burger-icon">
						<div class="burger-container">
							<span class="burger-bun-top"></span>
							<span class="burger-filling"></span>
							<span class="burger-bun-bot"></span>
						</div>
					</div>
					<!-- svg ring containter -->
					<div class="burger-ring">
						<svg class="svg-ring">
							<path class="path" fill="none" stroke="#fff" stroke-miterlimit="10" stroke-width="2" d="M 34 2 C 16.3 2 2 16.3 2 34 s 14.3 32 32 32 s 32 -14.3 32 -32 S 51.7 2 34 2" />
			      		</svg>
					</div>
					<!-- the masked path that animates the fill to the ring -->
					<svg width="0" height="0">
						<mask id="mask">
							<path xmlns="http://www.w3.org/2000/svg" fill="none" stroke="#ff0000" stroke-miterlimit="10" stroke-width="2" d="M 34 2 c 11.6 0 21.8 6.2 27.4 15.5 c 2.9 4.8 5 16.5 -9.4 16.5 h -4" />
						</mask>
					</svg>
					<div class="path-burger">
						<div class="animate-path">
							<div class="path-rotation"></div>
						</div>
					</div>
				</div> <!-- end hamburglar -->
				<div id="hamburger_menu">
					<ul id="burger_menu">
						<li><a href="profile">Profile</a></li>
						<!-- winni cho랑 about me는 합칠것  -->
						<li><a href="about_me">About me</a></li>
						<li><a href="artwork">Portfolio</a></li>
						<li><a href="board">Board</a></li>
						<li data-toggle="modal" data-target="#contact_modal">Contact</button></li>
					</ul>
				</div>
			</nav>
			<div id="minttown">
				<div class="sky">
					<div class="deep_sky"></div>
				</div>
				<div class="c1">
					<div class="cloud"></div>
				</div>
				<div class="c2">
					<div class="cloud"></div>
				</div>
				<div class="c3">
					<div class="cloud"></div>
				</div>
				<div class="mountain_a"></div>
				<div class="mountain_b"></div>
				<div class="house right">
					<div class="fence"></div>
					<div class="wall"></div>
					<div class="roof left"></div>
					<div class="roof right"></div>
					<div class="door"></div>
				</div>
				<div class="house left">
					<div class="fence"></div>
					<div class="wall"></div>
					<div class="roof left"></div>
					<div class="roof right"></div>
					<div class="door"></div>
				</div>
				<div class="tree_back"></div>
				<div class="tree"></div>
				<div class="postbox_a">
					<div class="hole"></div>
				</div>
				<div class="postbox_b">
					<div class="hole"></div>
				</div>
				<div class="windmill">
					<div class="tower"></div>
					<div class="t1"></div>
					<div class="t2"></div>
					<div class="blade">
						<div class="windblade"></div>
						<div class="windblade windblade2"></div>
						<div class="windblade windblade3"></div>
						<div class="windblade windblade4"></div>
					</div>	
				</div>
				<div class="allsnows">
					<div class="snow1"></div>
					<div class="snow2"></div>
					<div class="snow3"></div>
					<div class="snow4"></div>
					<div class="snow5"></div>
					<div class="snow6"></div>
					<div class="snow7"></div>
					<div class="snow8"></div>
					<div class="snow9"></div>
					<div class="snow10"></div>
					<div class="snow11"></div>
					<div class="snow12"></div>
					<div class="snow13"></div>
					<div class="snow14"></div>
					<div class="snow15"></div>
					<div class="snow16"></div>
					<div class="snow17"></div>
					<div class="snow18"></div>
					<div class="snow19"></div>
					<div class="snow20"></div>
				</div>
				<div class="ground">
					<div class="g1"></div>
					<div class="g2"></div>
					<div class="g3"></div>
					<div class="ice">
						<div class="glare"></div>
						<div class="ice_shadow"></div>
					</div>
				</div>
			
			</div>
			
			<!-- The Modal -->
			<div class="modal fade" id="contact_modal">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
					  
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">Contact me</h4><br />
							
							<button type="button" class="close" data-dismiss="modal" onfocus="this.blur()">&times;</button>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
							<textarea class="form-control" id="exampleTextarea" rows="7" placeholder="If you have any questions, please don’t hesitate to contact using form below…"></textarea>
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<p>* plase leave a message, I will call you later</p>	
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Send</button>
						</div>
					  
					</div>
				</div>
			</div>
		</header>
		<div id="wrap">

			<div id="search_section" class="row">
				<div class="search-form" > <!-- @submit.prevent="board_list(0)" -->
					<div class="form-group has-feedback">
						<label for="search" class="sr-only">Search</label>
						<input v-on:keyup.enter="board_list(0)" type="text" class="form-control" name="search" v-model="search" id="search" placeholder="search">
						<!-- <span class="glyphicon glyphicon-search form-control-feedback"></span> -->
						<i id="icon" style='font-size:18px' class='fas'>&#xf002;</i>
					</div>
				</div>
			</div>
            
			<!--Table-->
			<table id="board_list" class="table table-hover table-sm table-bordered">
				<!--Table head-->
				<thead>
					<tr>
						<th style="width:5%">No.</th>
						<th style="width:55%">Title</th>
						<th style="width:20%">ID</th>
						<th style="width:15%">Date</th>
						<th style="width:5%">Hit</th>
					</tr>
				</thead>
				<!--Table body-->
				<tbody>
					<tr v-for="(value, key) in list">
						<th scope="row">{{list[key].seq_no}}</th>
						<td>
							<button @click="update_hit(list[key].seq_no)" data-toggle="collapse" v-bind:data-target="'#demo'+key" onfocus="this.blur()">
								{{list[key].title}}
							</button>
							<div v-bind:id="'demo'+key" class="panel-collapse collapse" data-parent="#board_list">
								<hr />
								<button @click="set_seq_id(list[key].seq_no, list[key].id, key)" id="setting_btn" data-toggle="modal" data-target="#check_pwd_modal">
									<i class='fas'>	&#xf044;</i>
								</button>
								<span v-html="list[key].content">{{list[key].content}}</span>
								<!-- <button @click="set_seq_id(list[key].seq_no, list[key].id , $event)" id="setting_btn" data-toggle="modal" data-target="#check_pwd_modal">
									<i class='fas'  v-bind:id="'demo'+key">&#xf2fe;</i>
								</button> -->
								<div v-if="is_active[key]" id="button_group" style="border: 1px solid green" data-toggle="modal">
									<button @click="get_modify_data(list[key].seq_no)" type="button" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#modify_modal" onfocus="this.blur()">Modify</button>
									<button @click="delete_data(list[key].seq_no)" type="button" class="btn btn-outline-primary btn-sm" onfocus="this.blur()">Delete</button>
								</div>
							</div>	
						</td>
						<td>{{list[key].id}}</td>
						<td>{{list[key].date}}</td>
						<td>{{list[key].hit}}</td>
					</tr>
					<!-- <tr>
						<th scope="row">5</th>
						<td>
							<button data-toggle="collapse" data-target="#demo1" onfocus="this.blur()">Do you ever feel already buried deep</button>
							<div id="demo1" class="panel-collapse collapse" data-parent="#board_list">
								<hr />
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
							</div>	
						</td>
						<td>Thornton</td>
						<td>2019-05-01</td>
						<td>3</td>
					</tr>
					<tr>
						<th scope="row">6</th>
						<td>
							<button data-toggle="collapse" data-target="#demo2" onfocus="this.blur()">Do you ever feel already buried deep</button>
							<div id="demo2" class="panel-collapse collapse" data-parent="#board_list">
								<hr />
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
							</div>	
						</td>
						<td>the Bird</td>
						<td>2019-03-01</td>
						<td>1</td>
					</tr> -->
				</tbody>
			</table>
			
			<!-- Pagination  -->
			<div id="pagination_wrap">
				<nav id="pagination" aria-label="Pagination alignment">
					<!-- <ul class="pagination justify-content-center pagination-sm">
						<li class="page-item "><a class="page-link" href="#">Prev</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul> -->
					<ul class="pagination justify-content-center pagination-sm">
						<li class="page-item "><a class="page-link" @click="board_list(0)"><i class='fas'>&#xf100;</i></a></li>
						<li class="page-item "><a class="page-link" @click="board_list(page-1)">Prev</a></li>
						<li v-for="num in total_page" class="page-item">
							<a class="page-link" @click="board_list(num-1)">{{num}}</a>
						</li>
						<li class="page-item"><a class="page-link" @click="board_list(page+1)">Next</a></li>
						<li class="page-item"><a class="page-link" @click="board_list(total_page-1)"><i class='fas'>&#xf101;</i></a></li>
						<!-- 맨마지막이랑 맨처음 수정 -->
					</ul>
				</nav>
				<button id="write_btn" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#write_modal">write</button>
			</div>
			
			<p id="lorem"> * 본 게시판은 Vue js로 작업하였으며, 주변 지인들이 내용을 작성하였습니다.</p>
			
			<!-- The insert Modal -->
			<div class="modal" id="write_modal">
				<div class="modal-dialog">
					<div class="modal-content">
					    
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">Write</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
						
							<div class="input-group flex-nowrap">
								<div class="input-group-prepend">
									<span class="input-group-text">ID</span>
								</div>
								<input v-model="id"  type="text" class="form-control input-sm" placeholder="id">
								<div class="input-group-prepend">
									<span class="input-group-text">Password</span>
								</div>
								<input v-model="password" type="text" class="form-control input-sm" placeholder="password">
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">title</span>
								</div>
								<input v-model="title" type="text" class="form-control input-sm" placeholder="title">
							</div>
							
							<label for="content">Content:</label>
							<textarea v-model="content" class="form-control" rows="5" id="content" placeholder="content"></textarea>
						
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<button @click="insert_content()" type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
						</div>
					  
					</div>
				</div>
			</div>
			
			<!-- check password The Modal -->
			<div class="modal fade" id="check_pwd_modal">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
					
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">Check Password</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
							<input v-model="check_pwd" type="text" class="form-control input-sm" placeholder="what is your password?">
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<button @click="check_password()" type="button" class="btn btn-primary" data-dismiss="modal">Check Password</button>
						</div>
					
					</div>
				</div>
			</div>
			
			<!-- The update/modify Modal -->
			<div class="modal" id="modify_modal">
				<div class="modal-dialog">
					<div class="modal-content">
					    
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">Modify</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
						<!-- Modal body -->
						<div class="modal-body">
						
							<div class="input-group flex-nowrap">
								<div class="input-group-prepend">
									<span class="input-group-text">ID</span>
								</div>
								<input v-model="id"  type="text" class="form-control input-sm" placeholder="id">
								<div class="input-group-prepend">
									<span class="input-group-text">Password</span>
								</div>
								<input v-model="password" type="text" class="form-control input-sm" placeholder="password">
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">title</span>
								</div>
								<input v-model="title" type="text" class="form-control input-sm" placeholder="title">
							</div>
							
							<label for="content">Content:</label>
							<textarea v-model="content" class="form-control" rows="5" id="content" placeholder="content"></textarea>
							
						</div>
						
						<!-- Modal footer -->
						<div class="modal-footer">
							<button @click="modify_data()" type="button" class="btn btn-primary" data-dismiss="modal">Update</button>
						</div>
					  
					</div>
				</div>
			</div>
		
		</div>
		<button class="btn btn-primary btn-sm" id="top_button" onfocus="this.blur()"><i class='fas'>&#xf077;</i><br />Top</button>
		<footer><span>@ Copyright 2019 © Whine winni (Euni CHO) All Rights Reserved.</span></footer>
	</body>
	<script>
		new Vue({
			el:"#wrap",
			data:{
				list:[],
				//insert
				id:"",
				password:"",
				title:"",
				content:"",
				
				//check password
				check_pwd:"",
				check_seq:"",
				check_key:"",
				check_id:"",
				is_active:[],

				search:"",
				
				total_page:0,
				page:0
			},
			mounted:function(){
				this.board_list(); 

				var map = new Map();
				map.set("a", "bbbbbbbbbbbbbbbb");
				map.set("b", "cccccccccccccccccc");
				console.log(map.get("a"));
			},
			methods:{
				board_list : function(page){
					var self=this;
					console.log("page = "+page);
					if(page >= this.total_page){ //현재 페이지가 총 페이지보다 넘어가면 리턴
						return;
					}
					$.ajax({
						url:"http://localhost:8080/get_list?page="+page+"&search="+this.search, //size, sort는 contollor에 디폴트로 지정해줌
						method:"post",
						dataType:"json",
						success:function(data){
							self.total_page=data.totalPages;
							self.list=data.content;
							self.page=data.number;
							collapse_hide();
							console.log("total_page ="+self.total_page);


							//is_active
							self.is_active = new Array();
							for(var i=0; i<7; i++){
								self.is_active[i] = false;
							}
							console.log("is_active : " + self.is_active);
							console.log("total " + data.totalElements);
							console.log("is total  "+ self.is_active.length)

						},
						error:function(outcome_msg){
							console.log("ajax error - "+outcome_msg);
						}
					});
				}, //end  board_list
				insert_content: function(){
					var self=this;
					$.ajax({
						url:"http://localhost:8080/save",
						method:"post",
						data:{
							id:this.id, 
							password:this.password, 
							title:this.title, 
							content:this.content
						},
						success:function(data){
							console.log(data);
							self.board_list(self.page);

							self.id="";
							self.password="";
							self.title="";
							self.content="";
						},
						error:function(msg){
							console.log(msg);
						}
					});
				}, //end insert_content 
				set_seq_id : function(seq, id, key){
					check_seq=seq;
					check_id=id;
					check_key=key;
				},
				check_password : function(){
					var self=this;
					/* console.log(check_id);
					console.log(check_seq);
					console.log("===> " + check_key);
					console.log(this.check_pwd); */

					$.ajax({
						url:"http://localhost:8080/check_pwd",
						method:"post",
						data:{
							seq_no:check_seq,
							id:check_id,
							password:this.check_pwd
						},
						success:function(data){
							self.check_pwd="";
							if(data==1){
								self.is_active[check_key]=true;
							}else{
								alert("비밀번호가 틀렸습니다.");
								self.is_active=false;
							}
						},error:function(){
							self.check_pwd="";
							console.log("check_password error");
						}
					});
				},  //end check_password
				delete_data: function(seq){
					var self=this;
					$.ajax({
						url:"http://localhost:8080/delete_data",
						method:"get",
						data:{seq_no: seq},
						success:function(data){
							collapse_hide();
							self.board_list(self.page);
						},
						error:function(msg){
							console.log(msg);
						}
					});
				},  //end delete_data 
				get_modify_data: function(no){
					var self=this;
					console.log("modify seq>>"+no);
					$.ajax({
						url:"http://localhost:8080/get_modify_data",
						method:"get",
						data:{seq_no:no},
						success:function(data){
							//self.total_page=data.totalPages;
							self.id=data.id;
							self.password=data.password;
							self.title=data.title;
							self.content=data.content;
							console.log(data);
							self.board_list(self.page);
						},
						error:function(){
							console.log("에놇ㅣㅓㅠㅁㅇ히ㅓㅗㅎ유리ㅓㅇㅎ류");
						}
					});
				},
				modify_data:function(){
					var self=this;
					console.log("modify seq>>"+check_seq);
					$.ajax({
						url:"http://localhost:8080/save",
						method:"post",
						data:{
							seq_no:check_seq,
							id:this.id, 
							password:this.password, 
							title:this.title, 
							content:this.content
						},
						success:function(data){
							self.id="";
							self.password="";
							self.title="";
							self.content="";
							self.board_list(self.page);
						},error:function(){
							console.log("sdfJKhgxdbfsljzsdfgbljfsbdjhbsdf,hjl");
						}
					});

					
					
				},
				update_hit:function(num){
					var self=this;
					$.ajax({
						url:"http://localhost:8080/update_hit",
						method:"get",
						data:{seq_no: num},
						success:function(data){
							self.board_list(self.page);
						},error:function(){}
					});
				}//end update_hit
			} //end methods
		});
	</script>
</html>


























