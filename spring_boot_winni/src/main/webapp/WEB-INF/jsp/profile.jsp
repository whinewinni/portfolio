<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="setting_src.jsp" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
		<!-- awesome font -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- new skill graph "https://cdn.jsdelivr.net/npm/apexcharts" -->
		<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
		<style>
			*{
				font-size: 16px;
			}
			body{
				overflow-x: hidden;
			}
			header{
				height: 100vh;
				background-color: BLUE; /* #50c7e0 */
				/* position: relative; */
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
			header nav ul#main_menu{
				float: left;
				color: white;
				margin-top: 2.8rem
			}
			header nav ul#main_menu li{
				float: left;
				margin-left:2rem;
				font-size:1.5rem;
				position: relative;
				z-index: 1;
				transition:all 1s;
			}
			header nav ul#main_menu li a,
			header nav ul#main_menu li a:active,
			header nav ul#main_menu li a:visited,
			header nav ul#main_menu li a:hover{
				text-decoration: none;
				color: white;	
			}
			header nav ul#main_menu li:hover::after{
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
				padding-right: 5%
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
			
			header .alert{
				position: absolute;
				width: 50vw;
				top: 30%;
				left: 50%;
				transform:translate(-50%, -50%);
				display: none;
			}
			
			
			/* --------------------------------------- */
			header #header_bottom{
				position: absolute;
				bottom:10%;
				width: 100%
			}
			header #header_bottom #header_text{
				float: left;
				width: 95%;
				padding-left: 5%;
			}
			header #header_bottom #header_text h2{
				text-align: center;
			  	font-size: 11vw;
				position: relative;
				font-weight: 900;
				text-transform: uppercase;
				line-height: 1;
				color: transparent;
				margin: 0 auto;
			}
			header #header_bottom #header_text h2::before, 
			header #header_bottom #header_text h2::after {
				content: attr(data-heading);
				position: absolute;
				top: 0;
				left: 0;	
			}
			header #header_bottom #header_text h2::before {
				color: #77c5ff;
				clip-path: polygon(0% 100%, 100% 100%, 100% 40%, 0 60%)
			}
			header #header_bottom #header_text h2::after {
				color: white;
				clip-path: polygon(0 0, 100% 0%, 100% 36%, 0 56%);
				animation: text_motion 5s infinite;
			}
			@keyframes text_motion {
				0% {
					transform: translateX(0);
				}
				50% {
					transform: translate(-20px, 2%);
				}
			}
			header #header_bottom #scroll_side{
				float: right;
				color: white;
				position: relative;
				right: 5%;
				height: 100px;
				background-color:orange;
			}
			header #header_bottom #scroll_side span#scroll{
				writing-mode: vertical-rl;
				position: absolute;
			}
			header #header_bottom #scroll_side span#scroll::before{
				content: "";
				background-color: white;
				width: 0.5px;
				height:100px;
				display: block;
				animation: scroll_motion 1.5s infinite;
				position: absolute;
				right:10px;
				top: 110%
			}
			@keyframes scroll_motion {
				from {
					height:100%;
				}to{
					height:0;
				}
			}
			/* ---------------------------------------- */
			
			
			
			nav#sub_menu{
				width: 100%;
				overflow: hidden;
			}
			nav#sub_menu ol.nav{
				float: right;
				margin-right:10%;
				font-size: 1rem;
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
			
			#profile{
				margin: 10% auto;
				width:50vw;
			}
			#profile .row{
				flex-direction:row;
				justify-content:center;
			}
			#profile .row #selfie img{
				border-radius: 50%;
				width: 260px;
				height: 260px
			}
			#profile #profile_detail{
				padding-left:1%
			}
			#profile #profile_detail small button{
				color: silver;
			}
			#profile #profile_detail p i{
				margin-right: 2%;
			}
			#profile #profile_detail p a{
				vertical-align: top;
				text-decoration: none;
			}
			#profile #profile_detail p a, #profile #profile_detail p a:active, #profile #profile_detail p a:visited, #profile #profile_detail p a:hover{
				color: skyblue;
			}
			#profile #profile_detail p i.fa{
				font-size:1.5em
			}
			#skill_wrap #skill_graph{
				margin: 5% auto 0;
				width:70%
			}
			#skill_wrap #chart{
				width: 70%;
				margin: 0 auto;
			}
			#skill_wrap #chart .apexcharts-toolbar {
				z-index: 1
			}
			
			/*---------------------------------------------------------------------------*/
			/* .imageDiv{
				width:100%;
				height:100%;
			}
			.Kool__Main{
				margin-top:2%
			} */
			/*---------------------------------------------------------------------------*/
			#skill_wrap{
				overflow: hidden;
			}
			#skill_wrap #skill_tables{
				margin:2% auto 0;
				width: 70%;
			}
			#skill_wrap #skill_tables .half_card{
				width:23%;
				float: left;
				margin: 1%;
				font-size:0.8rem
			}
			#skill_wrap #skill_tables .half_card .card-body{
				padding: 0.5rem;
				padding-left: 1.25rem
			}
			#skill_wrap #skill_tables .half_card:last-child{
				width: 98%;
			}
			@media all and ( max-width:900px ){
				#skill_wrap #chart{
					width: 100%
				}
				#skill_wrap #skill_tables{
					width: 100%
				}
			}
			
			
			#timeline .row .col-md-12 h2{
				margin: 10% 0 5% 15%
			}
			.main-timeline{
				margin: 20px 0;
				position: relative;
			}
			.main-timeline:before{
				content: "";
				display: block;
				width: 2px;
				height: 100%;
				background: #3399CC;
				margin: 0 auto;
				position: absolute;
				top: 0;
				left: 0;
				right: 0;
			}
			.main-timeline .timeline{
				/* margin-bottom:5px; */
				position: relative;
			}
			.main-timeline .timeline:after{
				content: "";
				display: block;
				clear: both;
			}
			.main-timeline .icon{
				width: 18px;
				height: 18px;
				line-height: 18px;
				margin: auto;
				position: absolute;
				top: 0;
				left: 0;
				bottom: 0;
				right: 0;
			}
			.main-timeline .icon:before, .main-timeline .icon:after{
				content: "";
				width: 100%;
				height: 100%;
				border-radius: 50%;
				position: absolute;
				top: 0;
				left: 0;
				transition: all 0.33s ease-out 0s;
			}
			.main-timeline .icon:before{
				background: #fff;
				border: 2px solid #00a79c;
				left: -3px;
			}
			.main-timeline .icon:after{
				border: 2px solid #3399CC;
				left: 3px;
			}
			.main-timeline .timeline:hover .icon:before{
				left: 3px;
			}
			.main-timeline .timeline:hover .icon:after{
				left: -3px;
			}
			.main-timeline .date-content{
				width: 50%;
				float: left;
				position: relative;
			}
			.main-timeline .date-content:before{
				content: "";
				width: 40.5%;
				height: 2px;
				background: #3399CC;
				margin: auto 0;
				position: absolute;
				top: 0;
				right: 10px;
				bottom: 0;
			}
			.main-timeline .date-outer{
				width: 175px;
				height: 110px;
				font-size: 16px;
				color: #000;
				text-align: center;
				margin: auto;
				z-index: 1;
			}
			.main-timeline .date-outer:before, .main-timeline .date-outer:after{
				content: "";
				width: 150px;
				height: 150px;
				margin: 0 auto;
				border-radius: 50%;
				position: absolute;
				top: 0;
				left: 0;
				right: 0;
				transition: all 0.33s ease-out 0s;
			}
			.main-timeline .date-outer:before{
				background: #fff;
				border: 2px solid #00a79c;
				left: -15px;
			}
			.main-timeline .date-outer:after{
				border: 2px solid #3399CC;
				left: 15px;
			}
			.main-timeline .timeline:hover .date-outer:before{
				left: 15px;
			}
			.main-timeline .timeline:hover .date-outer:after{
				left: -15px;
			}
			.main-timeline .date{
				width: 100%;
				margin: auto;
				position: absolute;
				top:50%;
				left: 0;
			}
			.main-timeline .month{
				font-size: 18px;
				font-weight: 700;
				color: #111;
			}
			.main-timeline .year{
				display: block;
				font-size: 36px;
				font-weight: 700;
				color: #111;
				line-height: 36px;
			}
			.main-timeline .timeline-content{
				width: 50%;
				padding: 20px 0 20px 50px;
				float: right;
			}
			.main-timeline .title{
				font-size: 15px;
				font-weight: 700;
				color: #111;
				line-height:20px;
				margin: 0 0 2px 0;
			}
			.main-timeline .description{
				font-size: 14px;
				color: #787878;
				margin-bottom: 0;
				line-height: 14px
			}
			.main-timeline .timeline:nth-child(2n) .date-content{
				float: right;
			}
			.main-timeline .timeline:nth-child(2n) .date-content:before{
				left: 10px;
			}
			.main-timeline .timeline:nth-child(2n) .timeline-content{
				padding: 20px 50px 20px 0;
				text-align: right;
			}
			@media only screen and (max-width: 990px){
				.main-timeline .date-content:before{
					width: 22.5%;
				}
				.main-timeline .timeline-content{
					padding: 10px 0 10px 30px;
				}
				.main-timeline .title{ font-size: 17px; }
				.main-timeline .timeline:nth-child(2n) .timeline-content{
					padding: 10px 30px 10px 0;
				}
			}
			@media only screen and (max-width: 767px){
				.main-timeline:before{
					margin: 0;
					left: 7px;
				}
				.main-timeline .timeline{
					margin-bottom: 20px;
				}
				.main-timeline .icon{
					margin: auto 0;
				}
				.main-timeline .date-content{
					width: 95%;
					float: right;
				}
				.main-timeline .date-content:before{
					display: none;
				}
				.main-timeline .date-outer, .main-timeline .date-outer:before, .main-timeline .date-outer:after{
					width: 130px;
					height: 130px;
				}
				.main-timeline .date{
					top: 30%;
				}
				.main-timeline .year{
					font-size: 26px;
				}
				.main-timeline .timeline-content, .main-timeline .timeline:nth-child(2n) .timeline-content{
					width: 95%;
					text-align: center;
					padding: 10px 0;
				}
				.main-timeline .title{
					margin-bottom: 10px;
				}
			}
			@media all and ( max-width:1670px ){
				#profile{
					width: 100vw;
				}
				#profile .row{
					display: block;
					text-align: center;
				}
				#profile .row #selfie{
					margin: 0 auto;
				}
				#profile #profile_detail{
					margin: 0 auto;
				}
			}
			/*---------------------------------------------------------------------------*/
			
			button#top_button{
				position: fixed;
				bottom: 10%;
				right:3%;
				display: none;
			}
			footer{
				width: 100vw;
				height: 100px;
				text-align: center;
				margin-top: 10vh;
				background:blue;
			}
			footer span{
				color: white;
				line-height: 100px
			}
			
		</style>
		<!--  Kakao map -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=975e05e62b559d98a1720c6e79f79e4e"></script>
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
				
				var focus="html, body";
				
				$("nav#sub_menu ol.nav li").eq(0).click(function(){
					$(focus).animate({scrollTop:$("#sub_menu").offset().top});
				});
				$("nav#sub_menu ol.nav li").eq(1).click(function(){
					$(focus).animate({scrollTop:$("#skill_wrap #skill_graph").offset().top-150});
				});
				$("nav#sub_menu ol.nav li").eq(2).click(function(){
					$(focus).animate({scrollTop:$("#timeline .main-timeline").offset().top-250});
				});

				var scrollPos = 0;
				//var nav_height = $("header nav").height();
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

				//send_contact
				$("#contact_modal .modal-footer button").click(function(){
					$.ajax({
						url:"http://localhost:8080/send_contact",
						method:"post",
						data:{content:$("#contact_modal .modal-body textarea#send_contact").val()},
						dataType:"text",
						success:function(data){
							alert("Message sent successfully");
							$("#contact_modal .modal-body textarea#send_contact").val("");
						},error:function(e){
							console.log(e);
						}
					});
				});
 
				var h2_text = document.querySelector("header #header_bottom h2");

				h2_text.addEventListener("input", function() {
				    this.setAttribute("data-heading", this.innerText);
				});


				var map;
			    $(window).on("load", function(e){
			    //$(document).on('ready', function(){
			    	
					// map 
					var container = document.getElementById("map"); //지도를 담을 영역의 DOM 레퍼런스
					var options = { //지도를 생성할 때 필요한 기본 옵션
						center: new kakao.maps.LatLng(37.597545, 127.079950), //지도의 중심좌표
						level: 3 //지도의 레벨(확대, 축소 정도)
					};					
					map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

			    });
			    function relayout() {    
			        // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
			        // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다
			        // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
			        //map.relayout();
			    }
			    function resizeMap() {
			        //var mapContainer = document.getElementById('map');
			        //mapContainer.style.width = '650px';
			        //mapContainer.style.height = '650px'; 
			    }

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
				<div id="header_text">
					<h2 data-heading="whinewinni">whinewinni</h2>
				</div>
				<div id="scroll_side">
					<span id="scroll">SCROLL</span>
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
							<textarea class="form-control" id="send_contact" name="send_contact" placeholder="If you have any questions, please don’t hesitate to contact using form below…" rows="7"></textarea>
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
					<a class="nav-link active" href="#" onclick="return false;">Profile</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" onclick="return false;">skill</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" onclick="return false;">Time life</a>
				</li>
			</ol>
		</nav>
		
		<div id="profile" class="container-fluid">
			<div class="row">
				<div id="selfie" class="col-sm-4">
					<img alt="" src="img/aboutme/selfie01.png">
				</div>
				<div id="profile_detail" class="col-sm-8"> 
					<h2>Winni CHO</h2>
					<small>
						<button type="button" class="btn" data-toggle="collapse" data-target="#map_collapse" onfocus="this.blur()">
								<cite title="you can see where I live when u click!">Seoul, Republic of Korea <i class="material-icons">&#xe568;</i></cite>
						</button>
					</small>
					<div id="map_collapse" class="collapse" style="height:350px;">
						<div id="map" style="height:350px;"></div>
					</div>
					<p>
						<i class="material-icons">&#xe0e1;</i>forhwtkj@gmail.com <br />
						<i class="material-icons">&#xe31f;</i><a href="#">http://forhwtkj.cafe24.com</a> <br />
						<i class="fa">&#xf1fd;</i>June 16, 1989
					</p>
					<p>
						Computer engineering - bachelor's degree<br />
						Myongji College, information Technology communication -associate’s degree<br />
						Seoil Information Industry High School, Cyber ITC
					</p>
				</div>
			</div>
		</div>
		
		<div id="skill_wrap">
			<div id="skill_graph">
				<h2>Skills</h2>
			</div>
			
			<!-- new skill graph -->
			<div id="chart"></div>
			
			<div id="skill_tables">
				<div class="card half_card">
					<div class="card-header bg-primary text-white">Technology</div>
					<div class="card-body">Java, PHP, C, HTML5, JavaScript & Ajax, Json, Vue, Bootstrap, CSS3, Servlet3.0/JSP</div> 
				</div>
				<div class="card half_card">
					<div class="card-header bg-primary text-white">DataBase</div>
					<div class="card-body">Oracle, MySQL</div> 
				</div>
				<div class="card half_card">
					<div class="card-header bg-primary text-white">Framework</div>
					<div class="card-body">Spring4, MyBatis, Tiles3, jQuery, Hibernate, JPA, struts2</div> 
				</div>
				<div class="card half_card">
					<div class="card-header bg-primary text-white">Server</div>
					<div class="card-body">Apache Tomcat</div> 
				</div>
				<div class="card half_card">
					<div class="card-header bg-primary text-white">Tools</div>
					<div class="card-body">Intelij, jdk, Eclipse Luna/Mars, NetBeans IDE 8.02, STS, Maven, Gradle, Git, AndroidStudio, sql Developer, MySQL Workbench, VisualStudio2012, Edit plus, Photoshop, Illustrator, Atom, Bracket</div> 
				</div>
			</div>
		</div>
		
		<div id="timeline">
			<div class="row">
				<div class="col-md-12">
					<h2>TimeLine</h2>
					<div class="main-timeline">
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2008</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Myongji College</h3>
								<p class="description">Information Technology Communication</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2009</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Time off</h3>
								<p class="description">apply for a leave of absence</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2010</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Working Holiday</h3>
								<p class="description">Going to Australia</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2011</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Australia</h3>
								<p class="description">Leave on a trip around Australia</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2012</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Back to school & Language training</h3>
								<p class="description">going back to school<br /> and going to Singapore for a short language training course.</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2013</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Job trainee & Volunteer in Laos</h3>
								<p class="description">Practicing field education in Kernel link from school.<br>And meeting the purest children in Laos.</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2014</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Doosan Heavy Industries & Graduation</h3>
								<p class="description">working as an intern, and graduate from school.</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2015</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">get CRS, DCS & studying programming</h3>
								<p class="description">get CRS, DCS certificate<br /> trying to study programming</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2016</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Biddingo Korea & get bachelor's degree</h3>
								<p class="description">Work as a programmer in Biddingo Korea and get bachelor's degree</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2017</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Left Biddingo & taking a rest</h3>
								<p class="description">Left Biddingo cause close business <br /> and taking a rest </p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="year">2018</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">Part timer & start studying again</h3>
								<p class="description">work as a part timer and start publishing study again</p>
							</div>
						</div>
						<div class="timeline">
							<div class="icon"></div>
							<div class="date-content">
								<div class="date-outer">
									<span class="date">
                                    	<span class="month">From now on</span>
                                	</span>
								</div>
							</div>
							<div class="timeline-content">
								<h3 class="title">trying to get a new job</h3>
								<p class="description">I'll start fresh new again and getting to know who I am.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button class="btn btn-primary btn-sm" id="top_button" onfocus="this.blur()"><i class='fas'>&#xf077;</i><br />Top</button>
		<footer><span>@ Copyright 2019 © Whine winni (Euni CHO) All Rights Reserved.</span></footer>
	
	</body>
	<script>

		//----------new graph start------------------------//
		var options = {
		      chart: {
		        height: 500,
		        type: 'line',
		      },
		      series: [{
		        name: 'Result Score',
		        type: 'column',
		        data: [70, 60, 40, 95, 90, 90, 60, 80, 50, 60]
		      }, {
		        name: 'Target Score',
		        type: 'line',
		        data: [95, 65, 90, 90, 80, 90, 70, 80, 60, 80]
		      }],
		      stroke: {
		        width: [0, 2]
		      },
		      title: {
		        text: 'Always trying to take a top position',
				align: 'center'
		      },
		      xaxis: {
		        categories: ['Java', 'PHP', 'C', 'HTML', 'CSS', 'jQuery', 'Vue', 'Ajax/json', 'java script', 'oracle']
		      },
		      yaxis: [{
		        title: {
		          text: 'Result Score',
		        },
		      }, {
		        opposite: true,
		        title: {
		          text: 'Target Score'
		        }
		      }]
		    }

		    var chart = new ApexCharts(
		      document.querySelector("#chart"),
		      options
		    );

		    chart.render();
		//----------new graph end ------------------------//

		var map;
	    $(window).on("load", function(e){
	    //$(document).on('ready', function(){
	    	
			// map 
			var container = document.getElementById("map"); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(37.597545, 127.079950), //지도의 중심좌표
				level: 3 //지도의 레벨(확대, 축소 정도)
			};					
			map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

	    });
	    function relayout() {    
	        // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
	        // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다
	        // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
	        map.relayout();
	    }
	    function resizeMap() {
	        var mapContainer = document.getElementById('map');
	        mapContainer.style.width = '650px';
	        mapContainer.style.height = '650px'; 
	    }
	</script>
</html>
















