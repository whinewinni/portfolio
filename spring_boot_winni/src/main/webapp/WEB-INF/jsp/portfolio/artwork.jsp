<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		<!-- Responsive -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" href="../css/reset.css">
		<!-- bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<!-- Awesome Font -->
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<style>
			body{
                overflow-x:hidden; 
			}
			header{
				width: 100vw;
				height: 100vh;
				position: relative;
				
				background-image:linear-gradient(219deg, #ff3a00, #ff293c, #ea4818, #b3080d);
				background-size: 800% 800%;
				
				animation: background_gradient 3s ease infinite;
			}
			header nav{
				width: 100vw;
				height:100px;
			}
			header nav.stuck_menu{
	            position: fixed;
	            top:0;
	            box-shadow:0px 4px 10px rgba(0, 0, 0, 0.2);
	            z-index: 2;

	            background-image:linear-gradient(219deg, #ff3a00, #ff293c, #ea4818, #b3080d);
				background-size: 800% 800%; 
				
				animation: background_gradient 3s ease infinite;
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
				background-image:linear-gradient(219deg, #ff3a00, #ff293c, #ea4818, #b3080d);
				position: absolute;
				top:100px;
				display: none;
				padding-right: 5%;
				z-index: 10;
				animation: background_gradient 3s ease infinite;
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
				width: 100%;
			}
			header #header_bottom #header_picture{
				width: 95%;
				float:left;
				padding-left:19vw;
				padding-top:18vh;
			}
			header #header_bottom #header_picture img#mobile_version{
				width: 50vw;
				display: none;
				position: absolute;
				bottom: 10%
			} 
			/* header #header_bottom #header_picture #molbars_1{
				margin: 0 auto;
			} */
			/* ----------------------------------------- */
			
			
			header #header_bottom #scroll_side{
				position:absolute;
				right: 5%;
				bottom: 15%;
				color: white;
			}
			header #header_bottom #scroll_side span#scroll{
				writing-mode: vertical-rl;
			}
			header #header_bottom #scroll_side span#scroll::after{
				content: "";
				background-color: white;
				width: 0.5px;
				height:100px;
				display: block;
				animation: scroll_motion 1s infinite;
				position: absolute;
				right: 12px;
				top: 60px
			}
			@keyframes scroll_motion {
				form {
					height:100%;
				}to{
					height:0;
				}
			}
			/* ----------------------------------------- */
			
			
			#admin_btn{
				float: right;
				margin-right:1%;
				position: absolute;
				top: 0;
				right: 0;
				color: white;
				font-size: 0.1rem
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
			#admin_modal #admin_pwd{
			    margin: 1% auto;
			}
			#admin_modal .modal-dialog .modal-footer p{
                position: absolute;
                left:2%;
                color: red
			}
			#admin_modal .modal-dialog .modal-footer button{
                float: right;			 
			}
			nav ul.nav{
				float:right;
				margin-right: 10%;
				height:70px;
				line-height: 70px
			}
			nav ul.nav li.nav-item{
				float: left;
				font-size:1rem;
				color: red
			}
			nav ul.nav li.nav-item a{
				color: red
			}
			nav ul.nav li.nav-item:nth-of-type(2){
				margin-left: 2em;
				margin-right: 2em;
			}
			nav ul.nav > li.nav-item > a:focus, nav ul.nav > li.nav-item > a:hover{
				color: white;
				background-color: red;
				/* font-weight: bold; */
			}
			nav::after{
				content: "";
				clear: both;
				display: block;
			}
			.container #art_work_slide{
				margin-top: 10%
			}
			.carousel-item {
				text-align: center;
			}
			.carousel-control-next-icon, .carousel-control-prev-icon{
				width: 30px;
				height: 30px;
				border-radius: 50%;
				background-color: red;
			}
			
			#show_detail_img{
				margin:3rem auto;
				width:60%;
				text-align: center;
				position:relative;
				overflow:hidden;
				z-index:1;
			}
			#show_detail_img::before{
				content:"";
				background-color: #fff;
				box-shadow: 0 0 15px #222;
				opacity: 0;
				position: absolute;
				left: 0;
				top: 0;
				bottom: 0;
				right: 0;
				z-index: 1;
				transition:all 0.3s;
			}
			#show_detail_img:hover::before{
				opacity: 0.3;
				left: 20px;
				top: 20px;
				bottom: 20px;
				right:20px;
			}
			#show_detail_img img{
				display: none;
				width: 100%;
				height: auto;
				transition:all 0.5s;
			}
			#show_detail_img:hover img{
				filter:grayscale(40%);
			}
			#show_detail_img .box-content{
				text-align: right;
				position: absolute;
				left: 20px;
				bottom: 20px;
				z-index: 1;			
			}
			#show_detail_img .content_title{
				color: #fff;
				background: linear-gradient(#ED213A,#93291E);
			    font-size: 25px;
			    font-weight: 600;
			    text-transform: uppercase;
			    padding: 4px 10px;
			    margin: 0 19px 4px 0;
			    opacity: 0;
			    transform: translateX(-20px);
			 	transition: all 0.5s;
			}
			#show_detail_img:hover .content_title{
				opacity: 1;
    			transform: translateX(0);
			}
			#show_detail_img .post{
				color: #fff;
			    background: linear-gradient(#ED213A,#93291E);
			    font-size: 15px;
			    letter-spacing: 1px;
			    text-transform: capitalize;
			    padding: 3px 10px;
			    margin: 0 0 15px;
			    display: inline-block;
			    opacity: 0;
			    transform: translateX(20px);
			    position: relative;
			    transition: all 0.5s;
			}
			#show_detail_img:hover .post{
				opacity: 1;
    			transform: translateX(0);
			}
			#show_detail_img .post:before{
			    content: '';
			    background: linear-gradient(45deg, #ED213A 49%, transparent 50%);
			    height: 18px;
			    width: 15px;
			    position: absolute;
			    top: -18px;
			    right: 0;
			}
			#show_detail_img .icon{
			    padding: 0;
			    margin: 0;
			    list-style: none;
			    opacity: 0;
			    position: absolute;
			    top: 28px;
			    right: 28px;
			    z-index: 1;
			    transition: all 0.5s;
			}
			#show_detail_img:hover .icon{ opacity: 1; }
			#show_detail_img .icon li a{
			    color: #fff;
			    background-color: #ED213A;
			    font-size: 18px;
			    text-align: center;
			    line-height: 35px;
			    height: 35px;
			    width: 35px;
			    margin: 0 0 5px;
			    border-radius: 10px 0;
			    display: block;
			    transition: all 0.3s;
			}
			#show_detail_img .icon li a:hover{
			    color: #fff;
			    background-color: #ED213A;
			    text-shadow: 0 0 2px #222;
			    box-shadow: 0 0 10px #ED213A;
			}
			@media only screen and (max-width:990px){
			    /*#show_detail_img { margin: 0 0 30px; }*/
			}
			@media only screen and (max-width:479px){
			    #show_detail_img .title{ font-size: 18px; }
			    #show_detail_img .post{ font-size: 12px; }
			}
			
			#renewal {
				width: 70vw;
				margin: 10% auto;
			}
			#renewal::after{
				content: "";
				clear: both;
				display: block;
			}
			#renewal #logo_slide{
				width: 50%;
				background-color: #fbe8e8;
				float: left;
				height:500px;
				overflow: hidden;
			}
			#renewal #logo_slide ul{
			}
			#renewal #logo_slide ul li{
				width: 100%;
				height: 100%;
				line-height: 500px;
				text-align: center;
				display: none;
			}
			#renewal #logo_slide ul li img{
				width: 100px;
			}
			#renewal #logo_slide ul li img:last-child{
				width:200px;
			}
			#renewal #reneal_right{
				width: 50%;
				float: left;
				color: gray;
				position: relative;
				height:500px
			}
			#renewal #reneal_right #spinner_grow{
				float: right;
			}
			#renewal #reneal_right h2{
				margin-top: 20%;
				margin-left: 20%;
				font-size: 1.8rem
			}
			#renewal #reneal_right p{
				margin-left: 20%;
				margin-top: 5%;
				font-size: 1.3rem
			}
			#renewal #reneal_right #logo_btns{
				position:absolute;
				bottom: 0;
				right:0;
				font-size: 1rem;
			}
			#renewal #reneal_right #logo_btns button{
				width:8rem
			}
			#mobile{
				width: 70vw;
				margin:0 auto;
			}
			#mobile h2{
				font-size:2rem
			}
			#mobile #mobile_left{
				float: left;
				width: 50%;
				/* border: 1px solid red; */
			}
			#mobile #mobile_right{
				float: left;
				width: 50%;
				/* border: 1px solid blue; */
			}
			#mobile .card{
				margin: 0 auto;
			}
			
			button#top_button{
				float: right;
				/* margin-right: 5%; */
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
				
				background-image:linear-gradient(219deg, #ff3a00, #ff293c, #ea4818, #b3080d);
				/* background-size: 800% 800%; */
				
				animation: background_gradient 3s ease infinite;
			}
			footer span{
				color: white;
				line-height: 100px
			}
			@keyframes background_gradient { 
				0%{
					background-position:51% 0%;
				}
				50%{
					background-position:50% 100%;
				}
				100%{
					background-position:51% 0%;
				}
			}
			
			
			@media all and (max-width:1400px){
				#mobile #mobile_left, #mobile #mobile_right{
					width: 100%
				}
				#mobile #mobile_right{
					clear: both;
				}
				header #header_bottom #header_picture{
					padding-left: 15vw
				}
			}
			@media all and (max-width:1100px){
				header #header_bottom #header_picture{
					padding-left:10px
				}
				#renewal #reneal_right #logo_btns button{
					width: 6rem
				}
			}
			@media all and (max-width:850px){
				#renewal #reneal_right{
					clear: both;
				}
				#renewal #logo_slide{
					width: 70vw
				}
				#renewal #reneal_right{
					width: 70vw
				}
				#renewal #reneal_right #logo_btns{
					display: none;
				}
			}
 			@media all and (max-width:600px){
				#mobile, #mobile .card, #mobile #mobile_right, #mobile #mobile_left{
					width: 100vw
				}
			}
			@media all and (max-width:550px){
				#renewal{
					width:100%;
					margin-left: 0;
					margin-right: 0
				}
				#renewal #logo_slide{
					width:100vw;
				}
			}
			@media all and (max-width:450px){
				nav ul.nav li.nav-item{
					font-size: 1em;
				}
				#renewal #reneal_right h2{
					font-size: 2rem
				}
				#renewal #reneal_right p{
					font-size: 1.5rem
				}
			}
		</style>
		<!-- jQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- modal? -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<!-- bootstrap -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<!-- PicStrips -->
		<script src="script/picstrips-1.0-min.js"></script>
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
						console.log("up");
						$("button#top_button").fadeIn();
						setTimeout(function(){
							$("button#top_button").fadeOut();
						}, 4000);
					}else{
						console.log("down");
						$("button#top_button").fadeOut();
					}
					scrollPos = $(this).scrollTop(); // 현 위치값 저장
				});

				$("button#top_button").click(function(){ //top button click, position top
					$("html, body").animate({scrollTop:0});
				});

				$("#contact_modal .modal-footer button").click(function(){
					$.ajax({
						url:"http://localhost:8080/send_contact",
						method:"post",
						data:{content:$("#contact_modal .modal-body textarea#textarea").val()},
						dataType:"json",
						success:function(data){
							console.log("sccess =" +data.Result);
						}
					});
				});

				
				$(window).on('load', function(){
					$("header #header_bottom #header_picture img").eq(0).picstrips({
						splits:20, hgutter: '4px', vgutter: '5px', bgcolor:'#ff000000'
					});
					
					get_artwork_mainimg(); ///response version call 
					
					$("header #header_bottom #header_picture #molbars_1 div").hover(function(){
						$(this).css({opacity: "0.3"});
					}, function(){
						$(this).css({opacity:1});
					});
				});

				$(window).resize(function(){
					get_artwork_mainimg(); //response version call  
				});

				function get_artwork_mainimg(){
					var browser = $(window).width(); //browser size
					if(browser <= 950){
						$("header #header_bottom #molbars_1").css({display: "none"});
						$("header #header_bottom #header_picture img#mobile_version").css({display: "block"});
					}else{
						$("header #header_bottom #molbars_1").css({display: "block"});
						$("header #header_bottom #header_picture img#mobile_version").css({display: "none"});
					}

				}

				var focus="html, body"; //sub menu button click event
				$("nav#sub_menu ul.nav li").eq(0).click(function(){
					$(focus).animate({scrollTop:$("nav#sub_menu").offset().top});
				});
				$("nav#sub_menu ul.nav li").eq(1).click(function(){
					$(focus).animate({scrollTop:$("#renewal").offset().top-300});
				});
				$("nav#sub_menu ul.nav li").eq(2).click(function(){
					$(focus).animate({scrollTop:$("#mobile").offset().top-250});
				});

				
				$(".carousel-inner .carousel-item:first-child").addClass("active");

				/* $("#show_detail_img [data-toggle='tooltip']").tooltip({
					animated: 'fade',
					placement: 'right',
					html: true
				}); */
				$(".carousel-inner .carousel-item a").click(function(){
					$("#show_detail_img img").fadeOut();
					var img_name="img/artwork/"+$(this).data("src");
					var img_title=$("img", this).attr("alt");
					var img_description=$(this).data("description");
					
					$("#show_detail_img img").attr("src", img_name);
					//$("#show_detail_img img").attr("title", "Title : "+img_title+" & Description : "+img_description);
					$("#show_detail_img h3.content_title").html(img_title);
					$("#show_detail_img span.post").html(img_description);
					
					$("#show_detail_img img").fadeIn();
				});
				
				$("#renewal #logo_slide ul li").eq(0).fadeIn();
				setInterval(function(){
					$("#renewal #logo_slide ul li").eq(0).fadeOut();
					$("#renewal #logo_slide ul li").eq(0).appendTo("#renewal #logo_slide ul");
					$("#renewal #logo_slide ul li").eq(0).fadeIn();
				}, 3000);


				$("header nav ul li:last-child").click(function(){
					$("#contact_modal .modal-body textarea#textarea").val("");
				});
				
			});

			//브라우저 확인
			var agent = navigator.userAgent.toLowerCase();
			if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {
				//alert("인터넷 익스플로러 브라우저 입니다.");
				//svg바꾸기 익스일 경우 로고와 scoll을 없애기
				//$("header nav h1 a").html();
			}
			
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
				<div id="header_picture">
					<img alt="red bus" src="img/artwork/IMG_0097_small.jpg">
					<img id="mobile_version" alt="red bus" src="img/artwork/IMG_0097_small.jpg">
				</div>
				<div id="scroll_side">
					<span id="scroll">SCROLL</span>
				</div>
			</div>
			
			<!-- contac The Modal -->
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
							<textarea name="content" class="form-control" id="textarea" rows="7" placeholder="If you have any questions, please don’t hesitate to contact using form below…"></textarea>
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
		
		<!-- admin button -->
		<button onfocus="this.blur()" id="admin_btn" type="button" class="btn" data-toggle="modal" data-target="#admin_modal">Admin</button>
		<!-- admin login Modal Start -->
		<div id="admin_modal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Administration </h4>
					</div>
				 	<div class="modal-body">
						<form action="/admin_login" method="post">
							<input  name="id" type="text" class="form-control form-control-sm" id="admin_id" placeholder="Enter Administ id">
							<input  name="pwd" type="password" class="form-control form-control-sm" id="admin_pwd" placeholder="Enter password">
							<button id="check_admin" type="submit" class="btn btn-danger btn-sm">Administration Login</button>
						</form>
					</div>
					<div class="modal-footer">
						<p>* Only administrators are allowed to login.</p> 
						<button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!-- admin login Modal end -->
		
		<nav id="sub_menu">
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link active" href="#">Artwork</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Renewal Site</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Mobile</a>
				</li>
			</ul>
		</nav>
		<div class="container mt-3">
			<div id="art_work_slide">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
					<!-- Indicators -->
					<ul>
						<li data-target="#myCarousel" data-slide-to="0"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ul>
					
					<!-- The slideshow -->
					<div class="carousel-inner">
						<c:forEach items="${artwork_list}" var="artwork_list"> 
							<div id="slide" class="carousel-item">
								<a data-src="${artwork_list.imgfile}" data-description="${artwork_list.description}" href="#slide">
									<img src="img/artwork/${artwork_list.thumbnail}" alt="${artwork_list.title}">
								</a>
							</div>
						</c:forEach>	
					</div>
					
					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#myCarousel" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
		</div>
		
		<div id="show_detail_img">
			<img alt="slide image" src="" title="">
			<div class="box-content">
				<h3 class="content_title">Kristina</h3>
				<span class="post">Web designer</span>
			</div>
			<ul class="icon">
				<li><a href="#"><i class="fa fa-link"></i></a></li>
			</ul>
		</div>			

		<div id="renewal">
			<div id="logo_slide">
				<ul>
					<li>
						<a href="simplxr" target="_blank">
							<svg xmlns="http://www.w3.org/2000/svg" width="77" height="75" xmlns:xlink="http://www.w3.org/1999/xlink">
								<defs>
									<path id="a" d="M0 3.212667V.234333h2.98595v2.978334H0z"/>
									<path id="c" d="M37.403575.063333H.161548v31.584h37.242027v-31.584z"/>
								</defs>
								<g fill="none" fill-rule="evenodd">
									<path fill="#85C5FF" d="M59.61399 15.706417c4.437065 4.185833 7.466054 9.550833 8.758946 15.5125l.022536.109166 1.956448-.421666-.024205-.109167c-1.37469-6.3575-4.604832-12.078333-9.3382-16.544167-4.64573-4.381666-10.41742-7.2675-16.688236-8.343333l-.10934-.019167-.338874 1.970834.110175.019166c5.877692 1.005834 11.289642 3.7125 15.65075 7.825834"/>
									<path fill="#85C5FF" d="M63.257458 32.309583l.022536.1075 1.957283-.423333-.02337-.1075c-1.157677-5.325-3.86532-10.114167-7.8308-13.850833-3.8937-3.668334-8.726394-6.080834-13.979757-6.980834l-.10934-.019166-.337204 1.9725.10934.0175c10.09524 1.7275 18.02119 9.2975 20.191312 19.284166M63.211802 11.92225c5.20078 4.910833 8.751433 11.200833 10.26718 18.19l.022535.109167 1.95478-.423334-.022537-.109166c-1.599212-7.384167-5.35102-14.03-10.848104-19.218334C59.1904 5.376417 52.48723 2.021417 45.2048.76975l-.10934-.020833-.340542 1.970833.110176.018333c6.89264 1.185834 13.23774 4.361667 18.346708 9.184167M16.94673 46.91575c-.45823-.56-1.279537-.6675-1.86881-.2475-.026708.018333-.051748.035833-.075953.056667-.58927.4825-.673572 1.354166-.191138 1.944166.47993.580834 1.354656.675 1.946432.188334.588436-.483334.673572-1.355834.189468-1.941667M17.688494 51.194667c-.025874.016666-.050914.035833-.07512.055-.285454.235-.463237.565-.498293.933333-.03589.365833.072617.724167.307992 1.008333.480765.583334 1.354656.6775 1.944762.1925.285455-.235833.460734-.566666.498294-.9325.035055-.366666-.07345-.724166-.30632-1.009166-.46157-.56-1.282877-.669167-1.871314-.2475M12.418855 56.806667c.274603.333333.67858.524166 1.112604.524166.330526 0 .65354-.115833.90978-.324166.296306-.2425.480766-.585834.519996-.97.036725-.380834-.07679-.755-.32051-1.051667-.272935-.331667-.679416-.5225-1.112605-.5225-.301312 0-.58927.091667-.832992.265833-.025875.019167-.05175.039167-.078458.06-.296305.240834-.47993.585834-.518326.97-.03756.380834.07679.753334.32051 1.048334M10.283288 48.818417c-.300478 0-.587602.090833-.83049.263333-.02504.018333-.050078.035833-.078457.060833-.297973.244167-.482434.5875-.519994.97-.036725.380834.077624.753334.32051 1.05.272935.333334.67858.521667 1.114275.521667.330527 0 .65354-.113333.909783-.323333.610972-.501667.701116-1.408334.197814-2.02-.272934-.333334-.68025-.5225-1.11344-.5225M8.577322 57.988333c-.312998 0-.610973.094167-.86137.273334-.03005.02-.056758.0425-.084302.063333-.30799.2525-.499128.610833-.539192 1.005833-.038394.3975.078458.786667.332196 1.094167.285454.345.706124.541667 1.157676.541667.34388 0 .679415-.118334.945672-.335.30799-.255834.496624-.611667.537523-1.009167.03756-.394167-.080128-.783333-.332196-1.090833-.283786-.346667-.706125-.543334-1.156008-.543334M23.12031 57.119167c.230365-.288334.33303-.6475.29213-1.014167-.042568-.3675-.22536-.695-.514152-.9225-.566735-.450833-1.393885-.385833-1.881328.148333-.020867.024167-.0409.048334-.061765.0725-.227863.288334-.332196.648334-.290463 1.015834.042568.365.227028.693333.514987.923333.59094.47 1.4665.3775 1.94059-.223333M18.837824 59.679417c-.252903-.2-.570074-.310834-.89309-.310834-.40481 0-.792928.170834-1.06169.466667-.024204.025-.045905.049167-.066772.075-.237044.3-.34555.675833-.301313 1.056667.044236.380833.23287.7225.532514.96.252902.200833.570908.310833.893923.310833.443205 0 .85386-.198333 1.127628-.541667.239548-.300833.346385-.675833.302148-1.056666-.044237-.380834-.23287-.7225-.53335-.96M14.786708 64.176417c-.26292-.206667-.593445-.3225-.92898-.3225-.419834 0-.82381.175833-1.102588.485-.024205.025-.045072.050833-.066773.076666-.249564.310834-.360574.703334-.314668 1.098334.04674.395833.242886.750833.55505.998333.262084.208333.59094.320833.92898.320833.458228 0 .883906-.205833 1.16769-.561666.2504-.310834.36141-.701667.31467-1.099167-.045073-.393333-.242053-.748333-.553382-.995833M4.66643 51.241917c-.31133 0-.610974.094166-.863876.275-.027544.02-.055088.039166-.081797.061666-.30799.254167-.498293.6125-.537522 1.005834-.038395.3975.079292.786666.33303 1.0925.283785.346666.70529.543333 1.155172.543333.34388 0 .679415-.118333.945672-.338333.30799-.250834.499962-.6075.53919-1.004167.03756-.399167-.080126-.785833-.332194-1.094167-.285455-.345-.70696-.541666-1.157677-.541666M3.776345 45.459c.038395-.3975-.080127-.784167-.332195-1.0925-.28462-.345-.70529-.543333-1.156007-.543333-.312164 0-.611808.095833-.863876.276666-.029213.018334-.055922.039167-.081796.06-.30799.254167-.499127.610834-.540026 1.0075-.036725.3975.080128.785.3347 1.0925.283785.345.70529.543334 1.156007.543334.343047 0 .67858-.12.944838-.336667.308825-.254167.499963-.61.538357-1.0075M8.265158 45.470417c.33136 0 .654376-.114167.909782-.324167.29714-.244167.4816-.5875.51749-.968333.03756-.3825-.07512-.756667-.318006-1.0525-.27377-.3325-.679415-.5225-1.115108-.5225-.299644 0-.586768.090833-.831324.266666-.025874.0175-.05175.0375-.077623.058334-.296306.240833-.479932.585833-.517492.968333-.03756.3825.07512.754167.319676 1.051667.2721.333333.677745.5225 1.112604.5225M13.482548 41.673167c-.025874.0175-.050914.0375-.07512.056666-.285454.233334-.461568.565-.498293.931667-.03589.365833.072616.725833.30799 1.01.478262.583333 1.352988.674167 1.944763.190833.589272-.483333.674407-1.3525.190303-1.941666-.459898-.558334-1.281205-.6675-1.869642-.2475"/>
									<g transform="translate(0 35.833)">
										<mask id="b" fill="#fff">
											<use xlink:href="#a"/>
										</mask>
										<path fill="#85C5FF" d="M2.439634 2.877667c.308825-.254167.500797-.611667.539192-1.0075.038394-.395834-.079293-.784167-.332196-1.0925-.285454-.345-.706124-.543334-1.156842-.543334-.313832 0-.611807.095834-.86471.275C.597535.529333.57166.550167.544116.571c-.636012.524167-.727825 1.466667-.205327 2.1.28295.343333.70362.541667 1.153502.541667.34555 0 .68192-.12.947342-.335" mask="url(#b)"/>
									</g>
									<path fill="#85C5FF" d="M8.52599 38.665417c.29547-.2425.47993-.5875.518326-.968334.038394-.380833-.075955-.753333-.32051-1.05-.2721-.333333-.677746-.524166-1.11177-.524166-.301314 0-.588437.093333-.829655.264166-.029212.019167-.055087.038334-.081796.06-.296305.244167-.480765.5875-.518325.97-.03756.380834.076788.755.319675 1.05.27377.333334.679415.524167 1.11344.524167.330525 0 .65521-.115833.910615-.325833M12.918567 36.46325c-.024205.0175-.050914.0375-.07512.058333-.588437.481667-.674407 1.350834-.190303 1.94.480766.585 1.352988.6775 1.946433.1925.586767-.481666.672737-1.354166.190302-1.941666-.4599-.56-1.282876-.669167-1.871313-.249167M49.52301 60.234417l-2.014875.831666L52.25319 72.51775l2.015708-.833333-4.704156-11.3475M44.601424 61.9515l-2.143413.395833 2.269448 12.1825 2.142578-.3975L44.62062 62.059M36.947656 74.834l-.00167.1125 2.179303.053333.303816-12.278333.00334-.110833-2.181808-.053334M29.247396 73.7435l2.120877.503333 2.868734-12.059166-2.120877-.503334M22.011794 70.877333l-.047576.099167 1.972307.9275 5.25837-11.101667.04841-.099166-1.970636-.930834M75.64376 39.391333c-.559222-.498333-1.279536-.775-2.029062-.775-.868884 0-1.697703.371667-2.274455 1.0175-.849686.950834-.98991 2.288334-.459064 3.365834L68.539116 44.7705c-.61431-.485-1.331286-.8125-2.094167-.949167l.060096-3.4375c.43319-.128333.82715-.3725 1.13347-.715833.438198-.488333.65855-1.118333.621824-1.7725-.036725-.6575-.327187-1.258333-.817134-1.695833C66.992488 35.798 66.409894 35.578 65.8056 35.578c-.700283 0-1.369682.2975-1.836258.818333-.903105 1.010834-.815465 2.566667.196146 3.468334.299643.269166.661887.4475 1.046666.5425l-.056757 3.3625c-1.187724.110833-2.29866.665833-3.0991 1.560833-.846348.944167-1.272026 2.16-1.200245 3.424167.065104 1.140833.53168 2.199166 1.318766 3.013333l-2.301998 2.874167c-.454056-.2575-.97238-.400834-1.50406-.400834-.867215 0-1.696035.371667-2.274455 1.0175-.541696.605834-.81463 1.386667-.768724 2.1975.046742.81.40648 1.555834 1.01328 2.0975.53335.475834 1.212765.745834 1.9264.768334l.559224 3.319166c-.316337.138334-.602626.343334-.837166.606667-.439032.488333-.658548 1.12-.621823 1.774167.036725.655833.326353 1.258333.817134 1.694166.45155.4025 1.031642.623334 1.637606.623334.700282 0 1.370516-.2975 1.836257-.82.903105-1.010834.815465-2.565-.19698-3.468334-.38144-.338333-.856364-.539166-1.35716-.5975L59.533946 60.093c.41733-.175833.797937-.436667 1.105928-.783333.337203-.3775.570074-.821667.688596-1.3l4.110712.286666c.094317.546667.355566 1.0425.7754 1.4175.452388.403334 1.033313.623334 1.636774.623334.70195 0 1.37135-.298334 1.835422-.820834.439032-.490833.660217-1.120833.622658-1.775-.038395-.656666-.327188-1.256666-.81797-1.691666-.450717-.403334-1.03331-.625-1.637606-.625-.701117 0-1.36968.3-1.836257.820833-.205327.229167-.355566.489167-.461568.7675l-4.197516-.2925c-.082633-.4425-.25958-.855833-.521665-1.215833l2.34874-2.935c.72532.428333 1.554975.660833 2.411338.660833 1.352987 0 2.64421-.5775 3.54481-1.585 1.513243-1.6925 1.583354-4.175.30048-5.9425l2.240232-1.694167c.5442.4475 1.22445.693334 1.930573.693334.867214 0 1.69687-.369167 2.27362-1.015834 1.118447-1.25 1.010776-3.178333-.242887-4.295"/>
									<g transform="translate(2.972)">
										<mask id="d" fill="#fff">
											<use xlink:href="#c"/>
										</mask>
										<path fill="#85C5FF" d="M36.585683.102333c-.09682-.025833-.19698-.039166-.296305-.039166-.49746 0-.93816.335833-1.070872.815833L32.4299 11.020667l-.01586.066666c-.0217.104167-.076788.2525-.22035.3775-.272934.2375-.729494.206667-.962365-.061666-.033386-.0375-.063434-.08-.092647-.128334l-5.09895-8.555c-.097657-.169166-.212006-.3275-.333866-.4675-.510814-.585833-1.218607-.9375-1.99234-.9925-.788754-.054166-1.521588.195-2.110025.706667-.749526.6475-1.112604 1.625833-.971546 2.615l1.516582 9.796667.01252.061666c.052583.244167-.030883.495-.219517.659167-.233705.203333-.59428.22-.843008.045833l-8.074522-5.83c-.5033-.379166-1.106762-.5775-1.744444-.5775-.706123 0-1.385538.25-1.911375.709167-1.075045.934167-1.31209 2.498333-.563397 3.720833l5.439493 8.5675c.14106.275.072617.621667-.160254.825-.126034.109167-.285455.168334-.449883.168334-.028378 0-.05926-.001667-.077623-.001667l-9.925803-2.074167c-.87556-.170833-1.792854.075-2.469765.659167C-.048474 22.363167-.17868 24.199.871324 25.404c.106002.123333.226194.240833.369756.355833L9.73627 31.4565c.183627.124167.396465.190833.616816.190833h.00167c.371424 0 .71781-.185833.924805-.493333.340543-.509167.205328-1.199167-.30465-1.541667l-8.281518-5.54-.067608-.049166c-.02337-.020834-.045906-.043334-.070946-.073334-.247895-.2825-.217847-.714166.065103-.961666.158587-.136667.37727-.195.570076-.159167l9.94333 2.075.055088.011667c.838835.13 1.711892-.1225 2.35458-.679167 1.0258-.891667 1.296232-2.400833.63685-3.596667L10.692793 11.994c-.17528-.283333-.118522-.6525.13438-.8725.238714-.205.613477-.218333.876396-.02l8.098726 5.846667c.498294.353333 1.083392.541666 1.691026.541666.699447 0 1.376358-.253333 1.907203-.7125.790425-.686666 1.151834-1.75.942334-2.768333l-1.509905-9.7525c-.032552-.231667.052583-.460833.228697-.614167.136885-.116666.32051-.1775.49579-.1675.183625.013334.349723.0975.473253.239167.030048.0325.055922.071667.08931.129167l5.103123 8.559166c.094317.159167.202823.310834.325518.454167.551712.633333 1.352153.995833 2.19683.995833.701117 0 1.378028-.253333 1.907204-.710833.474923-.411667.797937-.955833.930648-1.565833l2.78026-10.1075c.16276-.590834-.18613-1.2025-.777905-1.365834z" mask="url(#d)"/>
									</g>
									<path fill="#0000EF" d="M32.563903 42.408268c-2.714434-3.828825-1.804215-9.132313 2.023657-11.845963 3.835557-2.71109 9.13549-1.804262 11.84651 2.026272 2.716994 3.82968 1.806775 9.134875-2.020243 11.848525-3.83385 2.712797-9.138052 1.804262-11.849924-2.028834"/>
								</g>
							</svg>
						</a>
					</li>
					<li><a href="folkmuseum" target="_blank"><img alt="" src="http://adventure.lotteworld.com/common_mus/images/m_logo.png"></a></li>
					<li><a href="daelimcare" target="_blank"><img alt="" src="img/artwork/daelim_logo.png"></a></li>
				</ul>
			</div>
			
			<div id="reneal_right">
				<div id="spinner_grow">
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger fast" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger fast" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
				</div>
			
				<h2>Renewal Site for web Publishing</h2>
				<p>&nbsp;기존의 웹사이트들을 리뉴얼하면서 HTML과 CSS의 재구성하여 구조를 파악하고 jQuery를 활용, 다양한 모션을 구현하여 퍼블리싱을 위한 기초 지식을 탄탄하게 쌓았습니다.</p>
				
				<div id="logo_btns" class="btn-group" role="group" aria-label="Basic example">
					<button onclick="window.open('simplxr')" type="button" class="btn-sm btn btn-outline-danger" onfocus="this.blur()">Simplxr</button>
					<button onclick="window.open('folkmuseum')" type="button" class="btn-sm btn btn-outline-danger" onfocus="this.blur()">FolkMuseum</button>
					<button onclick="window.open('daelimcare')" type="button" class="btn-sm btn btn-outline-danger" onfocus="this.blur()">DaerimCare</button>
				</div>
			</div>
		</div>
		<div id="mobile">
			<h2>Mobile</h2>
			<div id="mobile_card_wrap" style="width: 100%; overflow: hidden;">
				<div id="mobile_left">
					<div class="card">
						<img src="img/artwork/m01.png" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Watch The Font</h5>
							<p class="card-text">Simple and minimal design created for comfortable user experience.</p>
							<a  href="img/artwork/wtf.pdf" class="btn btn-danger"  target="_blank">PDF Download</a>
						</div>
					</div>
				</div>
				<div id="mobile_right">
					<div class="card">
						<img src="img/artwork/m02.png" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Walk around the town</h5>
							<p class="card-text">Simple and minimal design created for comfortable user experience.</p>
							<a href="img/artwork/mockup.pdf" class="btn btn-danger" target="_blank">PDF Download</a>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		<button class="btn btn-danger btn-sm" id="top_button"><i class='fas'>&#xf077;</i><br />Top</button>
		<footer><span>@ Copyright 2019 © Whine winni (Euni CHO) All Rights Reserved.</span></footer>

</body>
</html>