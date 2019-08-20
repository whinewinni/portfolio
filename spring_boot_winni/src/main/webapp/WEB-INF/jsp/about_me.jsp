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
		<!--  accordion font  -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Awesome Font -->
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<!-- Nanum pen google font -->
		<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
		<style>
			body{
				color: #212529;
				overflow-x: hidden;
			}
			header{
				height: 100vh;
				background-color: BLUE;
				z-index:-1
			}
			header nav{
				width: 100vw;
				height:100px;
				background-color: blue;
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
			header nav ul li:hover::after{
				content: "★";
				color: white;
				position: absolute;
				top:-40%;
				left:-10%;
				font-size:1.5rem;
				opacity:0.5;
				/* font-weight: bolder; */
				transition:all 1s;
			}
			
			/*-------------------------------------------------*/
			
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
				background-color:blue;
				position: absolute;
				top:100px;
				display: none;
				padding-right: 5%;
				z-index: 10
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
			
			/*-------------------------------------------------*/
			
			
			
			
			
			
			header #header_bottom{
				width: 60vw;
				background-color: blue;
				height: 100%
			}
			header #header_bottom svg#svg{
				position: absolute;
				z-index: 1;
				bottom: 0;
			}
			header #header_bottom svg mask#mask_layer rect{
				width: 100%;
				height: 100%;
				fill:#fff;
			}
			header #header_bottom #bg_video{
				position: absolute;
				left:0;
				bottom: 0;
				width: 65vw
			}
			header #header_bottom #text{
				font-size:1rem;
				fill:#000;
				font-family: 'Nanum Pen Script', cursive;
				font-weight: bolder;
				letter-spacing: -1px
			}
			header #header_bottom #masked{
				mask:url("#mask_layer");
				width:100%;
				height:100%;
				fill:blue;
			}
			
			nav#sub_menu{
				width: 100%;
				overflow: hidden;
			}
			nav#sub_menu ol.nav{
				float: right;
				margin-right:10%;
				font-size: 1rem;
				color: blue;
			}
			nav#sub_menu ol.nav li{
				float: left;
				line-height: 70px
			}
			nav#sub_menu ol.nav li:hover{
				background-color: blue;
			}
			nav#sub_menu ol.nav li:hover a{
				color: white;
			}
			nav#sub_menu ol.nav li:nth-child(2) {
				margin-left: 2em;
				margin-right: 2em;
			}


			#interest_img{
				width: 70vw;
				display: flex;
				margin: 100px auto 0;
			}
			#interest_img #gallery_wrap .gallery_box{
				float: left;
				width: 24.5%;
			}
			#interest_img #gallery_wrap .gallery_box .gallery_box01,
			#interest_img #gallery_wrap .gallery_box .gallery_box02,
			#interest_img #gallery_wrap .gallery_box .gallery_box03,
			#interest_img #gallery_wrap .gallery_box .gallery_box04{
				position: relative;
				margin-left: 2%;
			}
			#interest_img #gallery_wrap .gallery_box img{
				width:100%;
				margin:2.5%;
				transition:all 1s
			}
			#interest_img #gallery_wrap .gallery_box div:hover img{
				transition:all 1s;
				filter: brightness(50%);
			}
			#interest_img #gallery_wrap .gallery_box img ~ span{
				display: none;
				border: 1px solid white;
				width:80%;
				height:80%;
				position: absolute;
				top:50%;
				left:50%;
				transform:translate(-50%, -50%);
				transition:all 1s;
			}
			#interest_img #gallery_wrap .gallery_box div:hover span{
				display: block;
				transition:all 1s;
			}
			#interest_img #gallery_wrap .gallery_box img ~ span p{
				color: white;
				text-align: right;
				margin-right: 1%;
				transition:all 1s;
			}
			#interest_img #gallery_wrap .gallery_box img ~ span p:last-child {
				font-family: 'Nanum Pen Script', cursive;
				font-size: 2rem;
				line-height: 1.5rem
			}
			
			@media all and ( max-width:900px ){
				#interest_img{
					width: 100vw;
				}
			}
			@media all and ( max-width:600px ){
				#interest_img #gallery_wrap{
					display: grid;
				}
				#interest_img #gallery_wrap .gallery_box{
					float: none;
					width: 100%;
					clear: both;
				}
				#interest_img #gallery_wrap .gallery_box img{
					margin: 0;
				}
				#interest_img #gallery_wrap .gallery_box .gallery_box01,
				#interest_img #gallery_wrap .gallery_box .gallery_box02,
				#interest_img #gallery_wrap .gallery_box .gallery_box03,
				#interest_img #gallery_wrap .gallery_box .gallery_box04{
					height: 250px;
					overflow: hidden;
				}
			}

			#motive_wrap{
				margin:20vh auto 5vh!important;
				width:70vw;
				position: relative;
			}
			#motive_wrap h2{
				font-size: 3rem
			}
			#motive_wrap .row .card{
				margin: 5%;
				z-index: 1wkrlwjsdp Ehgkwk
				
			}
			#motive_wrap .row div h3{
				position: relative;
				margin-top:15%;
				font-size: 1.9rem
			}
			#motive_wrap .row div h3::after{
				content: "";
				width:100%;
				height:6rem;
				background-color: #85c6f7;
				position: absolute;
				bottom: -33%;
				left:3%;
				display: inline;
				z-index: -1
			}
			#motive_wrap .row div p{
				padding: 3% 5%;
				text-align: justify;
			}
			#motive_wrap .row #motive_text ul li:nth-of-type(2){
				margin:10% 0;
				float: right;
			}
			#motive_wrap .row #motive_text{
				text-align: center;
				font-family: 'Nanum Pen Script', cursive;
				color: gray;
				z-index: 1
			}
			#motive_wrap .row #motive_text ul{
				width:90%;
				display: inline-block;
				margin-top: 20%
			}
			#motive_wrap .row #motive_text ul li{
				clear: both;
				z-index: 1;
				/* text-indent:10px; */
				font-size:3rem
			}
			#motive_wrap .row #motive_text ul li h4{
				display: inline-block;
				position: relative;
				z-index: 1;
				font-size: 4.5rem
			}
			#motive_wrap .row #motive_text ul li h4:after {
				content:"";
				width:100%;
				height:5rem;
				display: inline-block;
				background-color: #c1edfd7d;
				position: absolute;
				left: -10%;
				bottom: 0;
				z-index: -1
			}
			
			#motive_wrap #circle{
				position: absolute;
				top: 45%;
				left: -33%
			}
			#motive_wrap #circle #box01{
				width: 400px;
				height: 400px;
				border-radius: 50%;
				background-image:linear-gradient(90deg, #9fb8ad 0%, #1fc8db 51%, #2cb5e8 75%);
				animation: turn01 2s infinite;
				transition:all 2s;
				z-index: -1
			}
			#motive_wrap #circle #box02{
				width: 600px;
				height: 600px;
				border-radius: 50%;
				background-image:linear-gradient(141deg, #79ecf975 0%, #1fc8db7a 51%);
				animation: turn01 2s infinite;
				transition:all 2s;
				position: absolute;
				top:50%;
				z-index: -2
			}
			#motive_wrap #circle #box02:hover, #motive_wrap #circle #box01:hover{
				animation: turn02 2s infinite linear;
				transition:all 2s;
			}
			@keyframes turn01{
				from {
						transform: rotate(0deg);
				}
				to {
						transform: rotate(359deg);
				}
			}
			@keyframes turn02{
				from {
						transform: rotate(359deg);
				}
				to {
						transform: rotate(0deg);
				}
			}
			@media all and ( max-width:1400px ){
				#motive_wrap .row div h3{
					margin-top: 10%;
					font-size: 1.5rem
				}
			}
			@media all and ( max-width:700px ){
				#motive_wrap .row #motive_text ul li{
					font-size: 1.5rem
				}
				#motive_wrap .row #motive_text ul li h4{
					font-size: 3.5rem
				}
			}
			
			@media all and (max-width:680px){
				#motive_wrap .row #motive_text ul li{
					font-size: 2rem
				}
				#motive_wrap .row #motive_text ul li h4{
					font-size: 3.5rem
				}
			}
			@media all and (max-width:500px){
				#motive_wrap .row div h3{
					font-size: 1.4rem
				}
				#motive_wrap .row div h3::after{
					height: 5rem
				}
			
			}
			
			
			

			/***************** Accordion ********************/
			/***********************************************/
			@import url('https://fonts.googleapis.com/css?family=Tajawal');
			@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

			section{
				padding: 60px 0;
			}

			#accordion-style-1 h1, #accordion-style-1 a{
				color:#256ad6;
			}
			#accordion-style-1 .btn-link {
				font-weight: 400;
				color: #256ad6;
				background-color: transparent;
				text-decoration: none !important;
				font-size: 16px;
				font-weight: bold;
				padding-left: 25px;
			}

			#accordion-style-1 .card-body {
				border-top: 2px solid #007b5e;
			}

			#accordion-style-1 .card-header .btn.collapsed .fa.main{
				display:none;
			}

			#accordion-style-1 .card-header .btn .fa.main{
				background: #256ad6;
				padding: 13px 11px;
				color: #ffffff;
				width: 35px;
				height: 41px;
				position: absolute;
				left: -1px;
				top: 10px;
				border-top-right-radius: 7px;
				border-bottom-right-radius: 7px;
				display:block;
			}
			button#top_button{
				float: right;
				position: fixed;
				bottom: 10%;
				right:3%;
				display: none; 
			}
			
			footer{
				width: 100vw;
				background-color: blue;
				height: 100px;
			}
			footer span{
				margin:0 auto;
				display: table;
				color: #ffffff8a;
				line-height: 100px
			}



			@media (max-width:1550px){
				.gallery{
					height: 35rem
				}
			}
			@media (max-width:1300px){
				.gallery{
					height: 27rem
				}
			}
			@media (max-width:1200px){
				.gallery{
					/* height: 30rem */
					height: 23rem
				}
			}

			@media (max-width: 450px) {
				.gallery {
					-webkit-column-count: 1;
					-moz-column-count: 1;
					column-count: 1;
					-webkit-column-width: 100%;
					-moz-column-width: 100%;
					column-width: 100%;
				}
			}
			@media (max-width: 400px) {
				.btn.filter {
					padding-left: 1.1rem;
					padding-right: 1.1rem;
				}
			}
		</style>
		<!-- jQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- Boot strap -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script>
			$(function() {

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
				

				var focus="html, body"; //sub menu button click event
				$("nav#sub_menu ol.nav li").eq(0).click(function(){
					$(focus).animate({scrollTop:$("#gallery").offset().top-200});
				});
				$("nav#sub_menu ol.nav li").eq(1).click(function(){
					$(focus).animate({scrollTop:$("#motive_wrap").offset().top-200});
				});
				$("nav#sub_menu ol.nav li").eq(2).click(function(){
					$(focus).animate({scrollTop:$("#accordion-style-1").offset().top-250});
				});


				var scrollPos = 0;
				$(window).scroll(function(){
					var scroll_position=$(this).scrollTop();
					if( scroll_position >= 10 ){ //header main menu 
						$("header nav").addClass("stuck_menu");
					}else{
						$("header nav").removeClass("stuck_menu");
					}

					//스트룰 다운 && 서브 메뉴 위치보다 높을경우.
					if(scroll_position < scrollPos && $("#sub_menu").offset().top < scrollPos){
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

				
				
			});
		</script>
	</head>
	<body>
		<header>
			<nav>
				<h1>
					<a href="main">
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
			                                                                                                                                                                                                                                                                                           
			<div id="header_bottom">
				<svg id="svg" viewBox="0 0 50 20">
					<mask id="mask_layer">
						<rect></rect>
						<text x="1%" y="80%" id="text">WHINE</text>
					</mask>
					<rect id="masked"></rect>
				</svg>
				<video id="bg_video" src="img/aboutme/under_the_sea.mp4" autoplay loop muted></video>
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
		<nav id="sub_menu">
			<ol class="nav">
				<li class="nav-item">
					<a class="nav-link active">Interest</a>
				</li>
				<li class="nav-item">
					<a class="nav-link">Motive</a>
				</li>
				<li class="nav-item">
					<a class="nav-link">And so on</a>
				</li>
			</ol>
		</nav>

		<div id="interest_img">
			<div id="gallery_wrap">
				<div class="gallery_box" id="gallery_box01">
					<div class="gallery_box01" id="box01_pic01">
						<img src="img/aboutme/interest_img01.png" alt="gallery image">
						<span><p>July 31st, 2017</p><p>Beijing, China</p></span>
					</div>
					<div class="gallery_box01" id="box01_pic02">
						<img src="img/aboutme/interest_img02.jpg" alt="gallery image">
						<span><p>May 4th, 2014</p><p>Yongma Land</p></span>
					</div>
				</div>
				<div class="gallery_box" id="gallery_box02">
					<div class="gallery_box02" id="box02_pic01">
						<img src="img/aboutme/interest_img03.png" alt="gallery image">
						<span><p>July 2nd, 2017</p><p>Mui Ne, Vietnam</p></span>
					</div>
					<div class="gallery_box02" id="box02_pic02">
						<img src="img/aboutme/interest_img04.png" alt="gallery image">
						<span><p>May 3rd, 2017</p><p>Abu Dhabi, United Arab Emirates</p></span>
					</div>
				</div>
				<div class="gallery_box" id="gallery_box03">
					<div class="gallery_box03" id="box03_pic01">
						<img src="img/aboutme/interest_img05.jpg" alt="gallery image">
						<span><p>May 3rd, 2019</p><p>Areum's wedding</p></span>
					</div>
					<div class="gallery_box03" id="box03_pic02">
						<img src="img/aboutme/interest_img06.png" alt="gallery image">
						<span><p>May 27th, 2018</p><p>Dubai, United Arab Emirates</p></span>
					</div>
				</div>
				<div class="gallery_box" id="gallery_box04">
					<div class="gallery_box04" id="box04_pic01">
						<img src="img/aboutme/interest_img07.jpg" alt="gallery image">
						<span><p>October 21st, 2017</p><p>Busan</p></span>
					</div>
					<div class="gallery_box04" id="box04_pic02">
						<img src="img/aboutme/interest_img08.jpg" alt="gallery image">
						<span><p>Sepember 1st, 2014</p><p>Kota Kinabalum, Malaysia</p></span>
					</div>
					<div class="gallery_box04" id="box04_pic02">
						<img src="img/aboutme/interest_img09.jpg" alt="gallery image">
						<span><p>July 10th, 2013</p><p>Vang Vieng, Laos</p></span>
					</div>
				</div>
			</div>
		</div>

		<article id="motive_wrap" class="flex-column">
			<h2>Motive</h2>
			<div class="row">
				<div class="col-md-6">
					<div class="card">
						<img id="board" src="img/aboutme/KakaoTalk_20190603_154438254.gif">
					</div>
				</div>
				<div class="col-md-6">
					<h3>why do you wanna be a developer</h3>
					<p>&nbsp;printf(“Hello World”);를 쓰니 까만화면에 “Hello World”가 출력되었습니다. 시간이 지나갈 수록 흑백에서 컬러로, char에서 string으로, cmd에서 gui를 더하고, 조금씩 움직이는 모션까지 넣으니 무에서 유를 창조하는 예술가가 된 것 같았습니다. 아무것도 없는 화면에 글자 몇 백 줄, 몇 천 줄을 타이핑하여 사람들이 사용할 수 있는 프로그램으로 만들어 갑니다. 알면 알수록, 배우면 배울수록 더 많은 것을 만들 수 있고, 더 유용한 것들을 만들 수 있었습니다. 그것이 프로그래밍의 매력이었고, 그 매력을 알았을 때, front-end developer가 되기로 결심했습니다.</p>
				</div>
			</div>
			<div class="row">
				<div id="motive_text" class="col-md-9">
					<ul>
						<li><h4>웹디자이너</h4>로 시작해서</li>
						<li><h4>구매전문가</h4>를 돌아</li>
						<li><h4>프로그래밍</h4>으로 종지부를 찍다.</li>
					</ul>
				</div>
				<div class="col-md-3">
					<div class="card">
						<img src="img/aboutme/blah02.gif">
					</div>
				</div>
			</div>
			<div id="circle">
				<div id="box01" class="boxes"></div>
				<div id="box02" class="boxes"></div>
			</div>
		</article>

		<div class="container-fluid bg-gray" id="accordion-style-1">
			<div id="q_and_a" class="container">
				<section>
					<div class="row">
						<div class="col-12">
							<h1 class="text-green mb-4 text-center">Winni's Self Interview</h1>
						</div>
						<div class="col-10 mx-auto">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-header" id="headingOne">
										<h5 class="mb-0">
											<button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
												<i class="fa fa-drivers-license main"></i><i class="fa fa-angle-double-right mr-3"></i>This is Winni.
											</button>
										</h5>
									</div>
									<div id="collapseOne" class="collapse show fade" aria-labelledby="headingOne" data-parent="#accordionExample">
										<div class="card-body">
											I am doing my best for having the challenging mind actively, and I am always doing the bes. I strongly believe that my experiences in the previous works and my character are suitable for front-end developer.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="headingTwo">
										<h5 class="mb-0">
											<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
												<i class="fa fa-address-book main"></i><i class="fa fa-angle-double-right mr-3"></i>What are your strong points?
											</button>
										</h5>
									</div>
									<div id="collapseTwo" class="collapse fade" aria-labelledby="headingTwo" data-parent="#accordionExample">
										<div class="card-body">
											I’m a challenging person. Sometimes I do something without considering. It could be my week points however I think challenging to new purpose is important things. And I’m very flexible person if you need leader or team member I could be both of them.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="headingThree">
										<h5 class="mb-0">
											<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
												<i class="fa fa-group main"></i><i class="fa fa-angle-double-right mr-3"></i>Why should we hire you?
											</button>
										</h5>
									</div>
									<div id="collapseThree" class="collapse fade" aria-labelledby="headingThree" data-parent="#accordionExample">
										<div class="card-body">
											I am always trying to take the top and I’m a challenging person. Group project or get new experience, I lead other people if I need to. Therefore I strongly believe that my experiences in the previous works and my character are suitable.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="headingFour">
										<h5 class="mb-0">
											<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
												<i class="fa fa-leaf main"></i><i class="fa fa-angle-double-right mr-3"></i>Why did you study ITC?
											</button>
										</h5>
									</div>
									<div id="collapseFour" class="collapse fade" aria-labelledby="headingFour" data-parent="#accordionExample">
										<div class="card-body">
											&nbsp;When I applied to university. I could not get into the university that I wanted to go because I could not pass the entrance exam. Therefore I could not have any chance to go to other universities at that time, so I chose ITC. It was difficult deal with my major but I am always doing my best even I did not want to study my major, because I really want to get a great job after graduating and I love it nowadays. I think I am a really hard worker style person.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<button class="btn btn-primary btn-sm" id="top_button"><i class='fas'>&#xf077;</i><br />Top</button>
		<footer>
			<span>@ Copyright 2019 © Whine winni (Euni CHO) All Rights Reserved.</span>
		</footer>

	</body>
</html>
