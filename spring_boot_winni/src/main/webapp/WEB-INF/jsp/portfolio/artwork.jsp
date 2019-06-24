<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
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
			header #header_bottom{
				width: 100%;
			}
			header #header_bottom #header_picture{
				width: 95%;
				float:left;
				padding-left:19vw;
				padding-top:18vh;
			}
			/* header #header_bottom #header_picture img{
				width: 40vw;
			} 
			header #header_bottom #header_picture #molbars_1{
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
			/* header button#admin_btn{
                color: white;
                float: right;
				margin-right: 2%
			}
			header p{
				font-size: 6em;
				color: white;
				font-weight: 800;
				position: absolute;
				bottom: 5%;
				left:10%
			}
			header p span{
				font-size: 1.5em;
			} */
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
				nav ul.nav li.nav-item{
					font-size: 2em;
				}
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
					$("header #header_bottom #header_picture img").picstrips({
						splits:20, hgutter: '4px', vgutter: '5px', bgcolor:'#ff000000'
					});
					
					$("header #header_bottom #header_picture #molbars_1 div").hover(function(){
						$(this).css({opacity: "0.3"});
					}, function(){
						$(this).css({opacity:1});
					});
				});

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
				<ul>
					<li><a href="profile">Profile</a></li>
					<!-- winni cho랑 about me는 합칠것  -->
					<li><a href="about_me">About me</a></li>
					<li><a href="artwork">Portfolio</a></li>
					<li><a href="board">Board</a></li>
					<li data-toggle="modal" data-target="#contact_modal">Contact</button></li>
				</ul>
			</nav>
			
			<div id="header_bottom">
				<div id="header_picture">
					<img alt="red bus" src="img/artwork/IMG_0097_small.jpg">
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
					<li><a href="#"><img alt="" src="https://w1ipfd13jz-flywheel.netdna-ssl.com/wp-content/themes/simplxr/dist/images/brand-logo-simplxr_d20f87e7.svg"></a></li>
					<li><a href="#"><img alt="" src="http://adventure.lotteworld.com/common_mus/images/m_logo.png"></a></li>
					<li><a href="#"><img alt="" src="img/artwork/daelim_logo.png"></a></li>
				</ul>
			</div>
			
			<div id="reneal_right">
				<div id="spinner_grow">
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
				</div>
			
				<h2>Renewal Site for web Publishing</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, dolor molestiae distinctio, repellat suscipit in maiores quae eligendi ex minus atque! Animi, fuga ut sed, quasi maiores a tenetur similique:</p>
				
				<div id="logo_btns" class="btn-group" role="group" aria-label="Basic example">
					<button type="button" class="btn-sm btn btn-outline-danger">Simplxr</button>
					<button type="button" class="btn-sm btn btn-outline-danger">FolkMuseum</button>
					<button type="button" class="btn-sm btn btn-outline-danger">DaerimCare</button>
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
							<a href="img/artwork/wtf.pdf" class="btn btn-danger"  target="_blank">PDF Download</a>
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