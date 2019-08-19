<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		
		<!-- Responsive -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		<style>
			*{  margin: 0;  padding: 0; font-family: 'Roboto', sans-serif; }
			a{ text-decoration: none; }
			html, body{ width: 100%; height: 100%;}	
			ul li, ol li{list-style: none;}
			img{ vertical-align: top; }
			
			body{
				overflow-x:hidden
			}
			#one_to_count{
				width: 100%;
				height: 100%;
				background-color: blue;
			}
			#one_to_count #count_text{
				color: white;
				font-size: 200px;
				font-weight:800;
				position: absolute;
				top: 50%;
				left: 50%;
				transform:translate(-50%, -50%);
			}
			header{
				height: 100vh;
				width: 100%;
				background-color: blue;
				color: white;
				font-weight: 400;
			}
			header nav{
				width: 1000px;
				letter-spacing:3px;
				font-size: 13px;
				margin-left: 150px;
				margin-top: 53px;
			}
			header nav, header #header_right_menu, header nav h1, header nav ul li{
				float: left;
			}
			header nav ul li{
				margin-left: 50px;
				line-height: 52px;
				opacity: 0.7;
				transition:all 1s;
				cursor: pointer;
			}
			header nav ul li:first-child{
				font-weight: 600;
				color: white;
				opacity: 1
			}
			header nav ul li:hover{
				color: white;
				font-weight: bold;
				opacity: 1;
				transition:all 1s
			}
			header nav #header_main_text{
				clear: both;
				font-size: 150px;
				font-weight: 800;
				position: absolute;
				bottom: 65px;
				width: 50%
			}
			@media all and (max-width:1000px){
				header nav #header_main_text{
					font-size: 100px;
				}
			}
			@media all and (max-width:480px){
				header nav #header_main_text{
					font-size: 50px;
				}
			}
			header #header_right_menu{
				float: right;
				margin-right: 130px;
				margin-top: 53px
			}
			header #header_right_menu ol li span{
				background-color: white;
				height: 2px;
				display: block;
				opacity: 0.7;
				transition:all 0.5s
			}
			header #header_right_menu ol li{
				position: relative;
			}
			header #header_right_menu ol li span:first-child{
				width: 25px;
			}
			header #header_right_menu ol li span:nth-of-type(2){
				width: 20px;
				transition:all 0.5s
			}
			header #header_right_menu ol li span:last-child{
				width: 15px;
			}
			header #header_right_menu ol li svg:hover #search_icon_circle,
			header #header_right_menu ol li svg:hover #search_icon_line{
				stroke:white;
				stroke-width:2;
				transition:all 1s
			}
			header #header_right_menu ol li svg:last-child{
				transform:all 1s
			}
			header #header_right_menu ol li svg:last-child:hover{
				animation: swing_bell 0.5s infinite alternate;
				/* alternate - 정해진 순서로 진행했다가 반대 순서로 진행 */
				transform-origin: top center;
			}
			@keyframes swing_bell{
				0% { transform: rotate(10deg); }
				100% { transform: rotate(-10deg); }
			}
			header #header_right_menu ol li:last-child::after {
				content: "●";
				color: #ffa196;
				position: absolute;
				font-size: 1px;
				transform:translate(-70%, -20%);
			}
			header #header_right_menu ol li svg:hover #icon_bell {
				fill:white;
			}
			header #header_right_menu ol li:first-child:hover span{
				width: 25px;
				opacity: 1;
				transition:all 0.5s
			}
			header #header_right_menu ol li span:nth-of-type(2){
				margin-top: 5px;
				margin-bottom: 5px
			}
			header #header_right_menu ol{
				height: 25px
			}
			header #header_right_menu span#scroll{
				writing-mode: vertical-rl;
				position: absolute;
				bottom: 100px;
				right: 135px;
				opacity: 0.8
			}
			header #header_right_menu span#scroll::before{
				content: "";
				background-color: white;
				width: 0.5px;
				height:100px;
				display: block;
				position: absolute;
				bottom:80px;
				left: 9px;
				animation: scroll_motion 1.5s infinite;
			}
			@keyframes scroll_motion {
				form {
					height:100%;
				}to{
					height:0;
				}
			}
			header #header_right_menu ol li:nth-of-type(2){
				margin-top: 40px;
				margin-bottom: 23px;
			}
			
			body{
				background:#f2f2f2;
			}
			#body #check_position{
				width: 100%;
				height:705px;
			}
			#body #main_logo{
				width: 634px;
				height: 524px;
				/* position: relative; */
				transform:translate(25%, 0vh);
				/* transform:translate(25%, -3vh); */
				background-color: white;
				float: left;
				text-align: center;
				line-height: 524px;
				transition:all 1s
			}
			#body #main_logo svg{
				vertical-align: middle;
				width: 28%;
				transition:all 2s;
			}
			#body #intro_article{
				width: 475px;
				height: 505px;
				float: left;
				margin-left:17%;
				margin-top: 300px;	
			}
			#body #intro_article h2{
				line-height:45px;			
				color: blue;
				margin-bottom: 62px;
				font-size: 28px
			}
			#body #intro_article p{
				letter-spacing: 1px;
				line-height:30px;
				font-size: 16px;
			}
			article{
				margin-top:100px;
				margin-left:10%;
				background-color: white;
				padding-top: 180px;
				overflow: hidden;
			}
			article #data_needs_care{
				margin-left: 50%;
				width: 500px;
				margin-top: 100px
			}
			article #data_needs_care h2{
				font-size: 28px;
				margin-bottom:140px;
			}
			article #data_needs_care p{
				line-height:32px
			}
			article #slide_dl_dt_dd{
				width: 0
			}
			/* ==========================뀨우======================= */
			/* ==========================뀨우======================= */
			article dl{
				background-color: #cbdff1;
				float:left;
				width:28%;
				height: 525px;
				padding-left:40px;
				position: relative;
				margin-top: 100px;
				color: #000000a8;
			}
			article dl dt{
				text-transform: uppercase;
				margin-top:50px;
			}
			article dl:nth-of-type(2){
				margin-left: 30px;
				margin-right: 30px
			}
			article dl dd{
				position: absolute;
				bottom:50px;
				line-height:28px;
				font-weight:500;
			}
			article dl dd span:nth-of-type(1){
				text-decoration: underline;
				opacity: 0
			}
			article dl dd span:last-child{
				font-size: 300px;
				opacity:0.08;
				position: absolute;
				bottom: 90px;
				left: 0;
				font-weight:600;
			}
			article dl dt, article dl dd{
				/* border: 1px solid red; */
				width: 80%;
				display: none;
				
			}
			#body #visual_sliders{
				background-color: white;
				width:100%;
				margin-top: 300px;
				position:relative;
			}
			#body #visual_sliders #slide_wrap{
				background-color: black;
				width: 92%;
				height: 900px;
				margin-left: 10%;
			}
			#body #visual_sliders #slide_wrap #left_spacing{
				width: 30%;
				float: left;
				height: 130%;
				/* position: relative; */
			}
			#body #visual_sliders #slide_wrap #left_spacing p{
				color: white;
				font-size:20px;
				line-height: 40px;
				font-weight: 600;
				margin-left:10%;
				margin-top:99%;
				width:350px;
				line-height:38px
			}
			#body #visual_sliders #slide_wrap #right_slide{
				width:70%;
				height: 100%;
				float: left;
				position: relative;
				overflow: hidden;
			}
			#body #visual_sliders #slide_wrap ul{
				width:400%;
				height: 100%;
			}
			#body #visual_sliders #slide_wrap #right_slide ul li{
				width: 25%;
				right: 0;
				float: left;
				height: 100%;
			}
			#visual_sliders #slide_wrap #right_slide ul li:first-child {
				background-image: url("img/artwork/mirroring/blue-2375119_1920.jpg");
				background-size: cover;
			}
			#visual_sliders #slide_wrap #right_slide ul li:nth-of-type(2){
				background-image: url("img/artwork/mirroring/amsterdam-1150319_1920.jpg");
				background-size: cover;
			}
			#visual_sliders #slide_wrap #right_slide ul li:nth-of-type(3) {
				background-image: url("img/artwork/mirroring/city-1134141_1920.jpg");
				background-size: cover;
			}
			#visual_sliders #slide_wrap #right_slide ul li:last-child{
				background-image: url("img/artwork/mirroring/blue-2375119_1920.jpg");
				background-size: cover;
			}
			#visual_sliders #slide_wrap #right_slide a,
			#body #last_slide_section a{
				position: absolute;
				width: 239px;
				height: 83px;
				line-height:83px;
				background-color: #cbdff1;
				color: black;
				text-align: center;
				/* transition:all 0.5s; */
			}
			
			#visual_sliders #slide_wrap #right_slide a span:first-child,
			#body #last_slide_section a span:first-child{
				background-color: white;
				position: absolute;
				width: 0;
				height: 83px;
				left: 0;
				transition:all 0.5s;
			}
			#visual_sliders #slide_wrap #right_slide a:hover span:first-child{
				width:239px;
				transition:all 0.5s;
			}
			#body #last_slide_section a:hover span:first-child{
				width: 222px;
				transition:all 0.5s; 
			}
			#visual_sliders #slide_wrap #right_slide a span:last-child,
			#body #last_slide_section a span:last-child{
				position: absolute;
				top:0;
				left:0;
				color: black;
				width: 239px;
				height: 83px;
			}
			
			/* #visual_sliders #slide_wrap #right_slide .a_tag_animation:hover{
				width:239px;
				background-color: white;
				transition:all 1s;
			} */
			#visual_sliders #slide_wrap #right_slide ol{
				width: 228px;
				height: 48px;
			}
			#visual_sliders #slide_wrap #right_slide ol,
			#visual_sliders #logo_slide ol,
			#body #last_slide_section ol{
				position: absolute;
				background-color: black;
				bottom:0;
				right:8%;
			}
			#visual_sliders #slide_wrap #right_slide ol li,
			#visual_sliders #logo_slide ol li,
			#body #last_slide_section ol li{
				float: left;
				line-height:55px
			}
			#visual_sliders #slide_wrap #right_slide ol li button, 
			#visual_sliders #logo_slide ol li button,
			#body #last_slide_section ol li button{
				background-color: transparent;
				border: none;
				width: 111px;
				height:100%;
				transition:all 0.5s;
			}
			
			/*------------------------button motion start ------------------------- */
			#body #last_slide_section ol li:first-child:hover button,
			#visual_sliders #logo_slide ol li:first-child:hover button,			
			#visual_sliders #slide_wrap #right_slide ol li:first-child:hover button{
				margin-left: -15px;
				margin-right: 15px;
				transition:all 0.5s;
			}
			#body #last_slide_section ol li:last-child:hover button,
			#visual_sliders #logo_slide ol li:last-child:hover button,
			#visual_sliders #slide_wrap #right_slide ol li:last-child:hover button{
				margin-left: 15px;
				margin-right: -15px;
				transition:all 0.5s;
			}
			#visual_sliders #slide_wrap #right_slide ol li:first-child:hover #left_btn_path,
			#visual_sliders #slide_wrap #right_slide ol li:first-child:hover #left_btn_line,
			#visual_sliders #slide_wrap #right_slide ol li:last-child:hover #right_btn_path,
			#visual_sliders #slide_wrap #right_slide ol li:last-child:hover #right_btn_line,
			#visual_sliders #logo_slide ol li:first-child:hover #left_btn_path,
			#visual_sliders #logo_slide ol li:first-child:hover #left_btn_line,
			#visual_sliders #logo_slide ol li:last-child:hover #right_btn_path,
			#visual_sliders #logo_slide ol li:last-child:hover #right_btn_line,
			#body #last_slide_section ol li:first-child:hover #left_btn_path,
			#body #last_slide_section ol li:first-child:hover #left_btn_line,
			#body #last_slide_section ol li:last-child:hover #right_btn_path,
			#body #last_slide_section ol li:last-child:hover #right_btn_line{
				fill: white;
				stroke:white;
			}
			/*------------------------button motion end ------------------------- */
			
			
			#visual_sliders #logo_slide {
				width: 100%;
				/* background-color: yellow; */
				overflow: hidden;
				height:665px;
			}
			#visual_sliders #logo_slide #logo_slide_wrap{
				width:634px;
				height: 525px;
				background-color: #cbdff1;
				float: left;
				margin-left: 10%;
				margin-top:141px;
				line-height: 525px;
				text-align: center;
				overflow: hidden;
			}
			#visual_sliders #logo_slide #logo_slide_wrap ul{
				vertical-align: middle;
				width: 6974px;
				height:100%;
				
			}
			#visual_sliders #logo_slide #logo_slide_wrap ul li{
				float: left;
				width: 634px
			}
			#visual_sliders #logo_slide #logo_slide_wrap ul li img{
				vertical-align: middle;				
			}
			#visual_sliders #logo_slide #logo_slide_info{
				width: 476px;
				height: 480px;
				float: left;
				line-height:30px;
				letter-spacing:0.5px;
				color: #0c0c0c;
				margin-left: 10%;
			}
			#visual_sliders #logo_slide #logo_slide_info h2{
				font-weight:800;
				margin-bottom:50px;
				font-size:28px;
			}
			#body #last_slide_section{
				/* width: 1903px; */
				height:700px;
				position: relative;
				margin-top: 220px
			}
			#body #last_slide_section a{
				right:8%;
				width: 222px;
				height: 83px;
				top:-220px
			}
			#body #last_slide_section h2{
				/* margin-top:220px; */
				transform:translateX(60%);
				font-size:35px;
				display: none;
			}
			#body #last_slide_section ul li{
				float: left;
				width: 632px;
				height: 210px;
				margin-left: 160px;
				margin-top: 125px;
				/* margin:100px; */ /* slide만들면서 가로 넓이 수정 */
				/* margin-right: 160px */
			}
			#body #last_slide_section ul li span {
				color: blue;
				text-transform: uppercase;
				font-size: 12px;
				letter-spacing: 2px;
				font-weight: 300
			}
			#body #last_slide_section ul li p{
				margin-top:40px;
				font-size: 34px;
				font-weight: 500;
				width: 410px
			}
			footer{
				width: 100%;
				height: 300px;
				background-color: #cbdff1;
			}
			footer ul{
				text-align: center;
				padding-top:120px
			}
			footer ul > li{
				/* border: 1px solid red; */
				width: 30%; 
				display: inline-block;
				vertical-align: middle;
			}
			footer ul li ol li{
				display: inline-block;
				width:80px;
				height:80px;
				border-top: 1px solid;
				border-bottom: 1px solid;
				cursor: pointer;
				position: relative;
				vertical-align: middle;
				font-size:30px;
				line-height: 80px;
			}
			footer ul li ol li:nth-of-type(2) {
				font-size:30px;
				margin-left:45px
			}
			footer ul li img{
				width: 180px;
			}
			footer ul li ol li span.boder_animation{
				width: 1px;
				height: 0;
				position: absolute;
				transition:all 0.5s
			}
			footer ul li ol li span.boder_animation:first-child {
				left: 0;
				background-color: black;
			}
			footer ul li ol li span.boder_animation:nth-of-type(2) {
				right: 0;
				background-color: black;
				bottom: 0
			}
			footer ul li ol li:hover span.boder_animation{
				height: 100%;
				transition:all 0.5s;
			}
			footer ul li ol li:last-child{
				line-height:85px
			}
			
		</style>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> --> <!-- 이건 ... 쓸까나.. -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
		
		<script>
			$(function() {
				
				//1 to 100 count event
				ont_to_interval();
				
				$("header").hide();
				$("#body").hide();
				$("footer").hide();
				
				var count_num=0;
				function ont_to_interval() {
					var count_interval = setInterval(function() {
						$("#count_text").text(++count_num);
						if (count_num > 100) {
							clearInterval(count_interval);
							$("header").show();
							$("#body").show();
							$("footer").show();
							$("#one_to_count").hide();
						}
					}, 10);
				}
				
				//header load
				//일단 전부 가리기
				$("header nav h1").hide();
				$("header nav ul").hide();
				$("header nav #header_main_text span").hide();
				$("header #header_right_menu ol").hide();
				$("header #header_right_menu span#scroll").hide();
				//하나씩 나타나기
				$("header nav h1").delay(1200).slideDown(300);
				$("header nav ul").delay(1400).slideDown(300);
				$("header #header_right_menu ol").delay(1600).slideDown(500);
				$("header #header_right_menu span#scroll").delay(1900).slideDown(300);
				$("header nav #header_main_text span").eq(1).delay(2500).fadeIn(300);
				
				//, "Process", "Intercept", "programming"
				$("header nav #header_main_text span#motion_text").delay(2500).fadeIn(300);
				
				var main_text =["Algorithm", "Structure", "Process", "Intercept", "Programming"];
				var text_count=0;
				setInterval(function() {
					$("#header_main_text span#motion_text").empty();
					
					//$("#header_main_text #motion_text").html(main_text[text_count++]);
					typing_function(main_text[text_count++]);
					if (text_count==main_text.length) {
						text_count=0;
					}
				}, 5000);
				function typing_function(param) {
					var check_cnt=0;
					var sub_interval=setInterval(function() {
						if ( check_cnt < param.length ) {
							$("#header_main_text span#motion_text").append(param[check_cnt++]);
						}
					}, 200);
				}
				
				
				
				var a = 0;
				var b = 0;
				$("#body").on("mousewheel", function(e, delta) {
					
					if (delta > 0 ) {
						b += 25;
						$("#body #main_logo svg").css({transform:"rotate("+b+"deg)"});
					}else {
						a += 25;
						$("#body #main_logo svg").css({transform:"rotate("+a+"deg)"});
					}
					
					if (a > 100) {
						a=0; 
					}   //너무 많이 돌면 미친듯 돌아감 막아주야함 
					if (b > 100) {
						b=0;
					}
					
				});
				
				$("header").on("mousewheel", function(e, delta) { //header 시간조정으로 바꿔야할듯 
					$("#body #main_logo").css({transform: "translate(25%, -3vh)"});
				});
				$("#body").on("mousewheel", function(e, delta) {
					$("#intro_article h2").animate({marginTop:-150});
					$("#intro_article p").delay(200).animate({marginTop:-20});
				});
				
				$("article").on("mousewheel", function(e, delta){
					$("#data_needs_care").animate({marginTop:-50});
					$("#data_needs_care h2").delay(200).animate({marginBottom:80});
					$("article #slide_dl_dt_dd").animate({width: "100%"}, 500);
					show_dl_dt_dd();
				});
				$("article").hover(function() {
					$("article #slide_dl_dt_dd").animate({width: "100%"}, 500);
					show_dl_dt_dd();
				});
				
				function show_dl_dt_dd() {
					$("article dl dt").fadeIn(1500);
					$("article dl dd").fadeIn(1500);
				}
				

				$("article dl dd").hover(function() {
					$("p", this).animate({height:"+=20"});
					$("span", this).eq(0).animate({opacity:1, height:70});
				}, function() {
					$("p", this).animate({height:"-=20"});
					$("span", this).eq(0).animate({opacity:0, height:0});
				});
				
				
				$("#last_slide_section ul li p.data_lisk_contents").hover(function() {
					$(this).animate({marginLeft:50});
				}, function() {
					$(this).animate({marginLeft:""});
				});
				
				/* --------------------visual slide----------------------- */
				
				var slider_left_btn=$("#visual_sliders #slide_wrap #right_slide ol li button").eq(0);
				var slider_right_btn=$("#visual_sliders #slide_wrap #right_slide ol li button").eq(1);
				
				var slide_page=0;
				var slide=$("#visual_sliders #slide_wrap #right_slide ul");
				var pic_size=$("#visual_sliders #slide_wrap #right_slide ul li").eq(0).width();
				pic_size=($(window).width()*0.92)*0.7;
				slider_right_btn.click(function() {
					++slide_page;
					if (slide_page <= 3) {
						//console.log("pic_size -> "+pic_size);
						slide.animate({marginLeft: -((pic_size)*slide_page)});
					}else {
						//console.log("2");
						slide.css({marginLeft:0});
						slide.animate({marginLeft:-pic_size});
						slide_page=1;
					}
					return false;
				});
				slider_left_btn.click(function() { //왼쪽 버튼
					slide_page=slide_page-1;
					if (slide_page < 0) { //음수
						slide.css({marginLeft:-pic_size*3});
						slide.animate({marginLeft:-pic_size*2});
						slide_page=2;
					}else {
						slide.animate({marginLeft:-pic_size*slide_page});
					}
				});
				
				$("#last_slide_section").on("mousewheel", function(e, delta) {
					$("#last_slide_section h2").slideDown(); 
				});
				$("#logo_slide").on("mousewheel", function(e, delta) {
					$("#last_slide_section h2").slideDown(); //스크롤 탑으로 	변경하여야 하나
				});
				
				
				/* ----------------------logo slide-------------------------- */
				logo_slide_interval();
				
				var logo_slide=$("#visual_sliders #logo_slide #logo_slide_wrap ul");
				var logo_slide_page=0;
				
				function logo_right_move() {
					logo_slide_page++;
					if (logo_slide_page <= 10 ) {
						logo_slide.animate({marginLeft: -634*logo_slide_page});
					}else {
						logo_slide.css({marginLeft:0});
						logo_slide.animate({marginLeft:-634});
						logo_slide_page=1;
					}
				}
				function logo_slide_interval() {
					interval_timer=setInterval(function() {
						logo_right_move();
					}, 1000);
				}
				var logo_left_btn=$("#logo_slide ol li button").eq(0);
				var logo_right_btn=$("#logo_slide ol li button").eq(1);
				
				logo_right_btn.click(function() {
					//console.log("log01");
					logo_right_move();	
				});
				logo_left_btn.click(function() {
					//console.log("log02");
					logo_slide_page=logo_slide_page-1;
					if (logo_slide_page < 0 ) {
						logo_slide.css({marginLeft: -5706});
						logo_slide.animate({marginLeft: -5072});
						logo_slide_page=9;
					}else {
						logo_slide.animate({marginLeft:-634*logo_slide_page});
					}
				});
				
				$("#logo_slide ol li button").hover(function() {
					clearInterval(interval_timer);
				}, function() {
					logo_slide_interval();
				});
				$("#visual_sliders #logo_slide #logo_slide_wrap").hover(function() {
					clearInterval(interval_timer);
				}, function() {
					logo_slide_interval();
				});
				
				
			});
		</script>
	</head>
	<body>
		<div id="one_to_count"><p id="count_text">0</p></div>
		
		<header>
			<nav>
				<h1>
					<svg xmlns="http://www.w3.org/2000/svg" width="162" height="52" viewBox="0 0 162 52" xmlns:xlink="http://www.w3.org/1999/xlink">
						<defs>
							<polygon id="a" points="15.328 .401 15.328 23.115 .484 23.115 .484 .401 15.328 .401"/>
							<polygon id="c" points="26.087 .044 .179 .044 .179 21.942 26.087 21.942 26.087 .044"/>
						</defs>
						<g fill-rule="evenodd" fill="#FFF">
							<g transform="translate(108)" fill="#FFF">
								<path d="M41.7931548,10.8896667 C44.8798645,13.7918444 46.9870258,17.5115778 47.8864452,21.645 L47.9021226,21.7206889 L49.2631548,21.4283333 L49.2463161,21.3526444 C48.2899935,16.9447778 46.0428968,12.9783333 42.7500581,9.88202222 C39.5181871,6.84406667 35.5030258,4.84322222 31.1406387,4.09731111 L31.0645742,4.08402222 L30.8288323,5.45046667 L30.9054774,5.46375556 C34.9943806,6.16113333 38.7592839,8.03775556 41.7931548,10.8896667"/>
								<path d="M44.3277871 22.4012533L44.3434645 22.4757867 45.7050774 22.1822756 45.6888194 22.1077422C44.8834645 18.4157422 42.9998516 15.0952533 40.2412065 12.5044978 37.5324968 9.96112 34.1705613 8.28845333 30.5159806 7.66445333L30.4399161 7.65116444 30.2053355 9.01876444 30.2814 9.03089778C37.3043032 10.2286311 42.8181097 15.4771644 44.3277871 22.4012533M44.2960258 8.26597778C47.9140258 11.6708222 50.3840903 16.0318889 51.4385419 20.8777111L51.4542194 20.9534 52.8140903 20.6598889 52.7984129 20.5842C51.6858968 15.4645111 49.0758968 10.8567333 45.2517677 7.25948889 41.4984774 3.72753333 36.8353161 1.4014 31.7691871.533577778L31.6931226.519133333 31.4562194 1.88557778 31.5328645 1.89828889C36.3278323 2.72046667 40.7418968 4.92237778 44.2960258 8.26597778M12.1110387 32.5281378C11.7922645 32.1398711 11.2209097 32.0653378 10.8109742 32.3565378 10.7923935 32.3692489 10.7749742 32.3813822 10.7581355 32.3958267 10.3482 32.73036 10.2895548 33.3347156 10.6251677 33.7437822 10.9590387 34.1464933 11.5675548 34.2117822 11.9792323 33.87436 12.3885871 33.5392489 12.4478129 32.9343156 12.1110387 32.5281378M12.6270581 35.4949111C12.6090581 35.5064667 12.5916387 35.5197556 12.5748 35.5330444 12.3762194 35.6959778 12.2525419 35.9247778 12.2281548 36.1801556 12.2031871 36.4338 12.278671 36.6822444 12.4424129 36.8792667 12.7768645 37.2837111 13.3848 37.349 13.7953161 37.0127333 13.9938968 36.8492222 14.1158323 36.6198444 14.1419613 36.3662 14.1663484 36.1119778 14.0908645 35.8641111 13.9288645 35.6665111 13.6077677 35.2782444 13.0364129 35.2025556 12.6270581 35.4949111M8.96115484 39.38584C9.1521871 39.6169511 9.43321935 39.7492622 9.73515484 39.7492622 9.96509032 39.7492622 10.1898 39.6689511 10.3680581 39.5245067 10.5741871 39.3563733 10.7025097 39.1183289 10.7298 38.8519733 10.7553484 38.5879289 10.6763806 38.3285067 10.5068323 38.1228178 10.3169613 37.8928622 10.0341871 37.7605511 9.73283226 37.7605511 9.52321935 37.7605511 9.32289677 37.8241067 9.15334839 37.9448622 9.13534839 37.9581511 9.11734839 37.9720178 9.09876774 37.9864622 8.89263871 38.15344 8.76489677 38.39264 8.7381871 38.6589956 8.71205806 38.92304 8.79160645 39.1813067 8.96115484 39.38584M7.47551613 33.84732C7.26648387 33.84732 7.06674194 33.9102978 6.89777419 34.0298978 6.88035484 34.0426089 6.86293548 34.0547422 6.84319355 34.0720756 6.63590323 34.2413644 6.50758065 34.4794089 6.48145161 34.7446089 6.45590323 35.0086533 6.53545161 35.26692 6.70441935 35.4726089 6.89429032 35.70372 7.17648387 35.8342978 7.47958065 35.8342978 7.70951613 35.8342978 7.93422581 35.75572 8.11248387 35.61012 8.53751613 35.2622978 8.60022581 34.6336756 8.25009677 34.2095867 8.06022581 33.9784756 7.77687097 33.84732 7.47551613 33.84732M6.28873548 40.2051289C6.07099355 40.2051289 5.86370323 40.2704178 5.68950968 40.39464 5.66860645 40.4085067 5.65002581 40.4241067 5.63086452 40.4385511 5.41660645 40.6136178 5.28363871 40.8620622 5.25576774 41.1359289 5.22905806 41.4115289 5.31034839 41.6813511 5.48686452 41.8945511 5.68544516 42.1337511 5.97809032 42.2701067 6.29221935 42.2701067 6.53144516 42.2701067 6.76486452 42.1880622 6.95009032 42.03784 7.16434839 41.8604622 7.29557419 41.6137511 7.32402581 41.3381511 7.35015484 41.0648622 7.26828387 40.79504 7.09292903 40.58184 6.89550968 40.3414844 6.60170323 40.2051289 6.28873548 40.2051289M16.4057806 39.6025067C16.5660387 39.4025956 16.6374581 39.1535733 16.6090065 38.8993511 16.5793935 38.6445511 16.4522323 38.4174844 16.251329 38.2597511 15.857071 37.9471733 15.2816516 37.99224 14.9425548 38.3625956 14.9280387 38.3793511 14.9141032 38.3961067 14.8995871 38.4128622 14.741071 38.6127733 14.6684903 38.8623733 14.6975226 39.1171733 14.7271355 39.37024 14.8554581 39.5978844 15.0557806 39.7573511 15.4668774 40.0832178 16.0759742 40.0190844 16.4057806 39.6025067M13.4266065 41.3776133C13.250671 41.2389467 13.0300258 41.1621022 12.8053161 41.1621022 12.5237032 41.1621022 12.2537032 41.2805467 12.0667355 41.4856578 12.0498968 41.5029911 12.0348 41.5197467 12.0202839 41.5376578 11.8553806 41.7456578 11.7798968 42.0062356 11.810671 42.27028 11.8414452 42.5343244 11.972671 42.7712133 12.1811226 42.93588 12.3570581 43.0751244 12.5782839 43.1513911 12.8029935 43.1513911 13.1113161 43.1513911 13.3969935 43.01388 13.5874452 42.7758356 13.7540903 42.5672578 13.8284129 42.3072578 13.7976387 42.0432133 13.7668645 41.7791689 13.6356387 41.54228 13.4266065 41.3776133M10.6083871 44.4955911C10.4254839 44.3523022 10.1955484 44.2719911 9.96212903 44.2719911 9.67006452 44.2719911 9.38903226 44.3939022 9.19509677 44.6082578 9.17825806 44.6255911 9.16374194 44.6435022 9.14864516 44.6614133 8.97503226 44.8769244 8.89780645 45.1490578 8.92974194 45.4229244 8.96225806 45.6973689 9.09870968 45.9435022 9.31587097 46.1151022 9.49819355 46.2595467 9.72696774 46.3375467 9.96212903 46.3375467 10.2809032 46.3375467 10.5770323 46.1948356 10.7744516 45.9481244 10.9486452 45.7326133 11.025871 45.4616356 10.9933548 45.1860356 10.962 44.9133244 10.8249677 44.6671911 10.6083871 44.4955911M3.56806452 35.5276133C3.35148387 35.5276133 3.14303226 35.5929022 2.96709677 35.71828 2.94793548 35.7321467 2.92877419 35.7454356 2.91019355 35.7610356 2.69593548 35.9372578 2.56354839 36.1857022 2.53625806 36.4584133 2.50954839 36.7340133 2.59141935 37.0038356 2.76793548 37.21588 2.96535484 37.4562356 3.25858065 37.5925911 3.57154839 37.5925911 3.81077419 37.5925911 4.04419355 37.5105467 4.22941935 37.3580133 4.44367742 37.1841022 4.57722581 36.9368133 4.60451613 36.6617911 4.63064516 36.3850356 4.54877419 36.1169467 4.37341935 35.9031689 4.17483871 35.6639689 3.8816129 35.5276133 3.56806452 35.5276133M2.94886452 31.5181822C2.97557419 31.2425822 2.89312258 30.9744933 2.71776774 30.7607156 2.51976774 30.5215156 2.22712258 30.3840044 1.91357419 30.3840044 1.6964129 30.3840044 1.48796129 30.4504489 1.31260645 30.5758267 1.29228387 30.5885378 1.27370323 30.6029822 1.25570323 30.6174267 1.04144516 30.7936489.908477419 31.0409378.880025806 31.31596.854477419 31.59156.935767742 31.8602267 1.11286452 32.0734267 1.31028387 32.3126267 1.60350968 32.4501378 1.91705806 32.4501378 2.15570323 32.4501378 2.38912258 32.3669378 2.57434839 32.2167156 2.7891871 32.0404933 2.92215484 31.7937822 2.94886452 31.5181822M6.07157419 31.52604C6.30209032 31.52604 6.5268 31.4468844 6.70447742 31.3012844 6.9111871 31.1319956 7.03950968 30.8939511 7.06447742 30.6299067 7.09060645 30.3647067 7.01221935 30.1052844 6.84325161 29.9001733 6.6528 29.66964 6.37060645 29.5379067 6.06750968 29.5379067 5.85905806 29.5379067 5.65931613 29.6008844 5.4891871 29.7227956 5.4711871 29.7349289 5.4531871 29.7487956 5.4351871 29.76324 5.22905806 29.9302178 5.10131613 30.1694178 5.0751871 30.4346178 5.04905806 30.6998178 5.12744516 30.9575067 5.29757419 31.1637733 5.48686452 31.3948844 5.76905806 31.52604 6.07157419 31.52604M9.70112903 28.8933378C9.68312903 28.9054711 9.66570968 28.9193378 9.64887097 28.9326267 9.45029032 29.0944044 9.32777419 29.32436 9.30222581 29.5785822 9.27725806 29.8322267 9.35274194 30.0818267 9.51648387 30.2788489 9.84919355 30.6832933 10.4577097 30.7462711 10.8693871 30.41116 11.2793226 30.0760489 11.3385484 29.4734267 11.0017742 29.0649378 10.6818387 28.6778267 10.1104839 28.6021378 9.70112903 28.8933378M2.01896129 26.8395111C2.2338 26.6632889 2.36734839 26.4154222 2.39405806 26.1409778 2.42076774 25.8665333 2.33889677 25.5972889 2.16296129 25.3835111 1.96438065 25.1443111 1.67173548 25.0068 1.3581871 25.0068 1.13986452 25.0068.932574194 25.0732444.75663871 25.1974667.737477419 25.2113333.719477419 25.2257778.700316129 25.2402222.257864516 25.6036444.193993548 26.2571111.557477419 26.6962222.754316129 26.9342667 1.04696129 27.0717778 1.35992903 27.0717778 1.60031613 27.0717778 1.83431613 26.9885778 2.01896129 26.8395111M6.25302581 26.8079067C6.45857419 26.6397733 6.58689677 26.4005733 6.61360645 26.1365289 6.64031613 25.8724844 6.56076774 25.6142178 6.39063871 25.4085289 6.20134839 25.1774178 5.91915484 25.0451067 5.61721935 25.0451067 5.40760645 25.0451067 5.20786452 25.1098178 5.04005806 25.2282622 5.01973548 25.2415511 5.00173548 25.25484 4.98315484 25.2698622 4.77702581 25.4391511 4.64870323 25.6771956 4.62257419 25.9423956 4.59644516 26.20644 4.67599355 26.4658622 4.84496129 26.6703956 5.0354129 26.9015067 5.31760645 27.0338178 5.61954194 27.0338178 5.84947742 27.0338178 6.07534839 26.9535067 6.25302581 26.8079067M9.3087871 25.2810711C9.29194839 25.2932044 9.27336774 25.3070711 9.25652903 25.3215156 8.84717419 25.6554711 8.78736774 26.2580933 9.12414194 26.6665822 9.45859355 27.0721822 10.0653677 27.1363156 10.4782065 26.8000489 10.8864 26.4660933 10.9462065 25.86116 10.6105935 25.4538267 10.2906581 25.06556 9.71814194 24.9898711 9.3087871 25.2810711"/>
								<polygon points="34.773 41.762 33.372 42.339 36.673 50.279 38.075 49.701 34.802 41.833"/>
								<polygon points="31.349 42.953 29.858 43.227 31.437 51.674 32.928 51.398 31.363 43.028"/>
								<polygon points="26.025 51.885 26.024 51.963 27.54 52 27.751 43.487 27.754 43.41 26.236 43.373"/>
								<polygon points="20.668 51.129 22.144 51.478 24.139 43.117 22.664 42.768"/>
								<polygon points="15.635 49.142 15.602 49.21 16.974 49.853 20.632 42.156 20.665 42.087 19.294 41.442"/>
								<g transform="translate(38.323 24.267)">
									<mask id="b">
										<use xlink:href="#a"/>
									</mask>
									<path d="M14.6218645,3.04454222 C14.2328323,2.69903111 13.7317355,2.50720889 13.2103161,2.50720889 C12.6058645,2.50720889 12.0292839,2.76489778 11.6280581,3.21267556 C11.0369613,3.87192 10.9394129,4.79925333 11.3087032,5.54632 L9.6794129,6.77409778 C9.25205806,6.43783111 8.75328387,6.21076444 8.22257419,6.11600889 L8.26438065,3.73267556 C8.56573548,3.64369778 8.8398,3.47440889 9.05289677,3.23636444 C9.35773548,2.89778667 9.51102581,2.46098667 9.48547742,2.00743111 C9.45992903,1.55156444 9.25786452,1.13498667 8.91702581,0.831653333 C8.60347742,0.553164444 8.1981871,0.400631111 7.7778,0.400631111 C7.29063871,0.400631111 6.82496129,0.606897778 6.50038065,0.968008889 C5.87212258,1.66885333 5.93309032,2.74756444 6.63683226,3.37272 C6.84528387,3.55934222 7.09728387,3.68298667 7.36496129,3.74885333 L7.32547742,6.08018667 C6.49921935,6.15703111 5.72638065,6.54183111 5.16954194,7.16236444 C4.58076774,7.81698667 4.28463871,8.65996444 4.33457419,9.53645333 C4.37986452,10.3274311 4.70444516,11.0612089 5.25199355,11.6256978 L3.65057419,13.6184533 C3.33470323,13.43992 2.97412258,13.3405422 2.60425161,13.3405422 C2.00096129,13.3405422 1.42438065,13.5982311 1.02199355,14.0460089 C0.645154839,14.4660533 0.455283871,15.0074311 0.487219355,15.5696089 C0.519735484,16.1312089 0.769993548,16.64832 1.19212258,17.0238756 C1.56315484,17.3537867 2.0358,17.5409867 2.53225161,17.5565867 L2.92128387,19.8578756 C2.70121935,19.9537867 2.50205806,20.09592 2.33889677,20.2784978 C2.03347742,20.6170756 1.88076774,21.0550311 1.90631613,21.5085867 C1.93186452,21.9632978 2.13334839,22.3810311 2.47476774,22.6832089 C2.78889677,22.9622756 3.19244516,23.1153867 3.61399355,23.1153867 C4.10115484,23.1153867 4.5674129,22.90912 4.8914129,22.5468533 C5.51967097,21.8460089 5.45870323,20.7684533 4.75438065,20.1421422 C4.48902581,19.9075644 4.15863871,19.76832 3.81025161,19.7278756 L3.41483226,17.3976978 C3.70515484,17.2757867 3.96992903,17.0949422 4.1841871,16.8545867 C4.41876774,16.5928533 4.58076774,16.2848978 4.66321935,15.9532533 L7.52289677,16.1520089 C7.58850968,16.5310311 7.77025161,16.8748089 8.06231613,17.1348089 C8.37702581,17.4144533 8.78115484,17.5669867 9.20096129,17.5669867 C9.68928387,17.5669867 10.1549613,17.3601422 10.4778,16.9978756 C10.7832194,16.6575644 10.9370903,16.2207644 10.9109613,15.7672089 C10.8842516,15.31192 10.6833484,14.89592 10.341929,14.59432 C10.0283806,14.3146756 9.62309032,14.1609867 9.20270323,14.1609867 C8.71496129,14.1609867 8.24986452,14.3689867 7.92528387,14.7300978 C7.78244516,14.8889867 7.67792903,15.0692533 7.6041871,15.2622311 L4.68412258,15.0594311 C4.62663871,14.7526311 4.50354194,14.4660533 4.32121935,14.2164533 L5.95515484,12.18152 C6.45973548,12.4784978 7.03689677,12.6396978 7.63263871,12.6396978 C8.57386452,12.6396978 9.47212258,12.2392978 10.0986387,11.5407644 C11.1513484,10.3672978 11.2001226,8.64609778 10.307671,7.42063111 L11.8661226,6.24600889 C12.2447032,6.55627556 12.717929,6.72672 13.2091548,6.72672 C13.8124452,6.72672 14.3896065,6.47076444 14.7908323,6.02240889 C15.5688968,5.15574222 15.4939935,3.81876444 14.6218645,3.04454222" mask="url(#b)"/>
								</g>
								<g transform="translate(2.323)">
									<mask id="d">
										<use xlink:href="#c"/>
									</mask>
									<path d="M25.5182516,0.0708933333 C25.4508968,0.0529822222 25.3812194,0.0437377778 25.3121226,0.0437377778 C24.9660581,0.0437377778 24.6594774,0.276582222 24.5671548,0.609382222 L22.6272194,7.64093778 L22.6161871,7.68716 C22.6010903,7.75938222 22.5627677,7.86222667 22.4628968,7.94889333 C22.2730258,8.11356 21.9554129,8.09218222 21.7934129,7.90613778 C21.7701871,7.88013778 21.7492839,7.85067111 21.7289613,7.81658222 L18.1818,1.88569333 C18.1138645,1.76840444 18.0343161,1.65862667 17.9495419,1.56156 C17.5941871,1.15538222 17.1018,0.91156 16.5635419,0.873426667 C16.0148323,0.835871111 15.5050258,1.00862667 15.095671,1.36338222 C14.5742516,1.81231556 14.321671,2.49062667 14.4198,3.17644889 L15.4748323,9.96880444 L15.4835419,10.01156 C15.5201226,10.1808489 15.4620581,10.35476 15.3308323,10.4685822 C15.1682516,10.60956 14.9174129,10.6211156 14.7443806,10.50036 L9.12721935,6.45822667 C8.77709032,6.19533778 8.35728387,6.05782667 7.91367097,6.05782667 C7.42244516,6.05782667 6.9498,6.23116 6.58399355,6.54951556 C5.83612258,7.19720444 5.67121935,8.28169333 6.19205806,9.12929333 L9.97612258,15.0694267 C10.0742516,15.2600933 10.0266387,15.5004489 9.86463871,15.6414267 C9.77696129,15.7171156 9.66605806,15.7581378 9.55167097,15.7581378 C9.53192903,15.7581378 9.51044516,15.7569822 9.49767097,15.7569822 L2.59263871,14.3188933 C1.98354194,14.2004489 1.3454129,14.3708933 0.874509677,14.7759156 C0.0331548387,15.5050711 -0.0574258065,16.7779156 0.673025806,17.6133822 C0.746767742,17.6988933 0.830380645,17.78036 0.930251613,17.8600933 L6.84005806,21.8097822 C6.9678,21.8958711 7.11586452,21.9420933 7.26915484,21.9420933 L7.27031613,21.9420933 C7.52870323,21.9420933 7.76967097,21.8132489 7.91367097,21.6000489 C8.15057419,21.2470267 8.05650968,20.7686267 7.70173548,20.53116 L1.94057419,16.6900933 L1.89354194,16.6560044 C1.87728387,16.64156 1.86160645,16.62596 1.8441871,16.60516 C1.67173548,16.4092933 1.69263871,16.1100044 1.88947742,15.9384044 C1.9998,15.8436489 2.15192903,15.8032044 2.28605806,15.8280489 L9.20328387,17.2667156 L9.24160645,17.2748044 C9.82515484,17.3649378 10.4325097,17.1898711 10.8796065,16.8039156 C11.5932194,16.1856933 11.7813484,15.1393378 11.3226387,14.3102267 L7.50547742,8.31578222 C7.38354194,8.11933778 7.42302581,7.86338222 7.59896129,7.71084889 C7.76502581,7.56871556 8.02573548,7.55947111 8.20863871,7.69698222 L13.8426387,11.7506711 C14.1892839,11.9956489 14.5963161,12.1262267 15.0190258,12.1262267 C15.5056065,12.1262267 15.9765097,11.9505822 16.3458,11.6322267 C16.895671,11.1561378 17.1470903,10.4188933 17.0013484,9.71284889 L15.9509613,2.95111556 C15.9283161,2.79049333 15.9875419,2.63160444 16.1100581,2.52529333 C16.2052839,2.44440444 16.3330258,2.40222667 16.4549613,2.40916 C16.5827032,2.41840444 16.6982516,2.47676 16.7841871,2.57498222 C16.8050903,2.59751556 16.8230903,2.62467111 16.8463161,2.66453778 L20.3963806,8.59889333 C20.4619935,8.70924889 20.5374774,8.81440444 20.6228323,8.91378222 C21.0066387,9.35289333 21.5634774,9.60422667 22.1510903,9.60422667 C22.6388323,9.60422667 23.1097355,9.42858222 23.4778645,9.11138222 C23.8082516,8.82596 24.0329613,8.44867111 24.1252839,8.02573778 L26.0594129,1.01787111 C26.1726387,0.608226667 25.929929,0.184137778 25.5182516,0.0708933333 L25.5182516,0.0708933333 Z" mask="url(#d)"/>
								</g>
							</g>
							<g transform="translate(0 14)">
							<path d="M5.06183058 10.2356325C4.05316116 9.8561325 3.3243843 9.5818575 3.3243843 8.8165325 3.3243843 8.3410075 3.70754959 7.8286825 4.5489876 7.8286825 5.15747521 7.8286825 5.7460124 8.0822575 6.31459917 8.3272075 6.78871488 8.5319075 7.2370124 8.7245325 7.60433471 8.7245325 8.28030165 8.7245325 8.80957438 8.1955325 8.80957438 7.5199075 8.80957438 6.4377575 7.16483884 5.2779825 4.71739256 5.2779825 2.17899587 5.2779825.336516529 6.8161075.336516529 8.9344075.336516529 10.7117325 1.47721074 11.4971825 3.72339256 12.4051075L3.96631818 12.5005575C5.2437314 13.0036825 6.0147562 13.3067075 6.0147562 14.0973325 6.0147562 14.7275325 5.40509504 15.2036325 4.59710331 15.2036325 3.92700413 15.2036325 3.29680579 14.9103825 2.68714463 14.6274825 2.1250124 14.3658575 1.59339256 14.1186075 1.08465702 14.1186075.486731405 14.1186075.00029338843 14.7120075.00029338843 15.4411075.00029338843 16.8136325 1.86272314 17.8480575 4.33246694 17.8480575 7.09383884 17.8480575 9.0982686 16.2116075 9.0982686 13.9558825 9.0982686 12.5206825 8.27384711 11.5989575 6.15851653 10.6697575 5.75540083 10.4961075 5.38631818 10.3575325 5.06183058 10.2356325M15.5413132 7.82644L15.5413132 15.299715C15.5413132 17.391565 16.3651479 17.659515 17.0833628 17.659515 17.8338504 17.659515 18.6007678 17.37949 18.6007678 15.299715L18.6007678 7.82644C18.6007678 5.755865 17.7898421 5.49079 17.0833628 5.49079 16.3211397 5.49079 15.5413132 5.76794 15.5413132 7.82644M39.9140289 5.4433525C38.435938 5.4433525 37.4378306 5.8999025 36.3546405 7.0723275L36.0635992 7.3874275 35.8024835 7.0481775C34.9704339 5.9683275 33.8285661 5.4433525 32.3117479 5.4433525 31.1170702 5.4433525 30.2638967 5.7860525 29.545095 6.5554025L29.2094587 6.9136275 28.9671198 6.4892775C28.5786736 5.8079025 28.1051446 5.4905025 27.4761198 5.4905025 26.7133099 5.4905025 25.9340702 5.7676525 25.9340702 7.8267275L25.9340702 15.3000025C25.9340702 17.3912775 26.757905 17.6598025 27.4761198 17.6598025 28.1937479 17.6598025 29.0175826 17.3912775 29.0175826 15.3000025L29.0175826 11.0565025C29.0175826 10.2814025 29.0175826 7.9227525 31.2772603 7.9227525 33.1297149 7.9227525 33.3438884 9.7380275 33.3438884 11.1036525L33.3438884 15.3000025C33.3438884 17.3912775 34.1683099 17.6598025 34.885938 17.6598025 35.6035661 17.6598025 36.4279876 17.3912775 36.4279876 15.3000025L36.4279876 11.0565025C36.4279876 10.2814025 36.4279876 7.9227525 38.6870785 7.9227525 40.7777645 7.9227525 40.7777645 10.3170525 40.7777645 11.1036525L40.7777645 15.3000025C40.7777645 17.3792025 41.5452686 17.6598025 42.2957562 17.6598025 43.0133843 17.6598025 43.8378058 17.3912775 43.8378058 15.3000025L43.8378058 9.9714775C43.8378058 7.0516275 42.4442107 5.4433525 39.9140289 5.4433525M56.8262289 15.1326775C55.1151876 15.1326775 53.9656917 13.7216275 53.9656917 11.6223025 53.9656917 9.5827775 55.1415926 8.1585025 56.8262289 8.1585025 58.4838736 8.1585025 59.6867661 9.6149775 59.6867661 11.6223025 59.6867661 13.6888525 58.5108653 15.1326775 56.8262289 15.1326775M57.4276752 5.3962025C56.2453198 5.3962025 55.282419 5.7860525 54.5647909 6.5548275L54.2297413 6.9142025 53.9874025 6.4892775C53.5989562 5.8079025 53.1248405 5.4905025 52.4958157 5.4905025 51.7335926 5.4905025 50.9537661 5.7676525 50.9537661 7.8261525L50.9537661 20.3214775C50.9537661 22.4127525 51.7776008 22.6807025 52.4958157 22.6807025 53.2134438 22.6807025 54.0378653 22.4127525 54.0378653 20.3214775L54.0378653 16.3959525 54.6305099 16.8956275C55.4385017 17.5775775 56.3122124 17.8949775 57.3795595 17.8949775 60.3920719 17.8949775 62.8430388 15.0602275 62.8430388 11.5751525 62.8430388 8.0527025 60.5147083 5.3962025 57.4276752 5.3962025M70.9963033.209645C70.2780884.209645 69.4542537.477595 69.4542537 2.569445L69.4542537 15.299945C69.4542537 17.39122 70.2780884 17.659745 70.9963033 17.659745 71.7467909 17.659745 72.5137083 17.379145 72.5137083 15.299945L72.5137083 2.569445C72.5137083.477595 71.7027826.209645 70.9963033.209645M86.0777008 11.167535L88.8026926 8.316685C89.2897174 7.79861 89.5478992 7.326535 89.5478992 6.953935 89.5478992 6.14836 88.8202959 5.466985 87.9583207 5.466985 87.639114 5.466985 87.1033868 5.722285 86.6955769 6.21046L84.3091554 9.080285 81.7191223 6.14721C81.3218744 5.699285 80.9111306 5.49056 80.4264529 5.49056 79.6824198 5.49056 79.0046926 6.21046 79.0046926 7.001085 79.0046926 7.397835 79.2317752 7.85956 79.6278496 8.268385L82.5077504 11.14166 79.1279157 14.781985C78.6807917 15.26441 78.4273041 15.56686 78.4273041 16.172335 78.4273041 16.978485 79.1003372 17.65986 79.8971802 17.65986 80.3671884 17.65986 80.7603289 17.41721 81.2555686 16.822085L84.2281802 13.338735 87.2213289 16.81806C87.7770066 17.45631 88.1589983 17.683435 88.6794694 17.683435 89.4240893 17.683435 90.053114 17.045185 90.053114 16.29021 90.053114 15.59676 89.7526843 15.22186 89.2562711 14.687685L86.0777008 11.167535zM101.526421 5.4197775C100.730751 5.4197775 99.9303876 5.8136525 99.2133463 6.5588525L98.8777099 6.9073025 98.6394785 6.4892775C98.2504455 5.8079025 97.7769165 5.4905025 97.1484785 5.4905025 96.3856686 5.4905025 95.6058421 5.7676525 95.6058421 7.8267275L95.6058421 15.3000025C95.6058421 17.3912775 96.4302636 17.6598025 97.1484785 17.6598025 97.8661066 17.6598025 98.6899413 17.3912775 98.6899413 15.3000025L98.6899413 11.4337025C98.6899413 10.1221275 98.8207926 9.4861775 100.072974 8.9002525 100.468462 8.7185525 100.859842 8.5788275 101.239487 8.4437025 102.423016 8.0205025 103.093115 7.7410525 103.093115 6.9073025 103.093115 6.1011525 102.375487 5.4197775 101.526421 5.4197775M130.816561 14.8971575C128.951198 12.3188575 129.576702 8.7475325 132.207222 6.9201825 134.843024 5.0945575 138.485148 5.7052075 140.348164 8.2846575 142.215288 10.8635325 141.589784 14.4360075 138.95985 16.2633575 136.325222 18.0901325 132.680164 17.4783325 130.816561 14.8971575"/>
							</g>
						</g>
					</svg>
				</h1>
				<ul>
					<li>SIMPLXR</li>
					<li>OVER</li>
					<li>DIENSTEN</li>
					<li>CONTACT</li>
				</ul>
				<div id="header_main_text">
					<span id="motion_text">Algorithm</span><br/>
					<span>made simple</span>
				</div>
			</nav>
			<div id="header_right_menu">
				<ol>
					<li>
						<span></span>
						<span></span>
						<span></span>
					</li>
					<li>
						<svg version="1.1" id="search_icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16.747px" height="18.628px" viewBox="-0.583 -0.649 16.747 18.628" enable-background="new -0.583 -0.649 16.747 18.628" xml:space="preserve">
							<circle id="search_icon_circle"  fill="none" stroke="#CCCCCC" stroke-width="2" stroke-miterlimit="10" cx="6.369" cy="6.348" r="5.75"/>
							<line id="search_icon_line" fill="none" stroke="#CCCCCC" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" x1="9.485" y1="11.327" x2="14.958" y2="16.799"/>
						</svg>
					</li>
					<li>
						<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="20px" height="30px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
							<path id="icon_bell" fill="#CCCCCC" d="M376.392,208C314.435,69.413,282.217,16.783,180.957,18.957c-36.065,0.761-27.391-27.152-54.891-16.565 c-27.479,10.609-3.913,26.087-32,50.065c-78.892,67.326-71.609,129.565-35.043,277.913c15.435,62.5-37.152,65.565-16.348,126.152 c15.196,44.152,127.152,62.652,245.261,17.087c118.131-45.543,192.674-135.956,177.5-180.13 C444.631,232.913,402.5,266.348,376.392,208L376.392,208z M271.087,433.479c-104.696,41.043-190.739,16.891-194.37,6.174 c-6.283-18.5,33.783-80.239,153.479-127.174c119.717-46.913,186.522-29.521,193.478-8.848 C427.805,315.848,375.782,392.435,271.087,433.479z M246.435,333.435c-59.152,20.435-100.282,43.826-126.869,64.892 c18.717,15.826,53.804,19.695,88.782,7.608c44.5-15.369,71.848-50.695,61.021-78.869c-0.108-0.349-0.304-0.652-0.435-0.979 C261.631,328.326,254.152,330.761,246.435,333.435z"/>
						</svg>
					</li>
				</ol>
				<span id="scroll">
					SCROLL
				</span>
			</div>
		</header>
		
		<div id="body">
			<div id="check_position">
				<div id="main_logo">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="186px" height="181.168px" viewBox="0 0 186 181.168" enable-background="new 0 0 186 181.168" xml:space="preserve">
						<g>
							<path fill="#85C5FF" d="M143.827,39.434c10.458,9.863,17.597,22.508,20.644,36.557l0.054,0.258l4.609-0.994l-0.056-0.257 c-3.24-14.982-10.854-28.466-22.006-38.989c-10.95-10.326-24.552-17.127-39.331-19.663l-0.258-0.044l-0.796,4.644l0.258,0.045 C120.797,23.36,133.552,29.74,143.827,39.434"/>
							<path fill="#85C5FF" d="M152.416,78.561l0.051,0.254l4.614-0.998l-0.055-0.254c-2.728-12.549-9.109-23.835-18.455-32.642 c-9.176-8.644-20.565-14.33-32.945-16.451l-0.258-0.046l-0.794,4.649l0.258,0.042C128.622,37.186,147.303,55.025,152.416,78.561 M152.308,30.515c12.256,11.573,20.623,26.396,24.195,42.868l0.055,0.256l4.605-0.997l-0.053-0.257 c-3.77-17.402-12.612-33.064-25.564-45.291c-12.715-12.005-28.512-19.912-45.674-22.862l-0.258-0.048l-0.803,4.644l0.26,0.044 C125.314,11.666,140.27,19.15,152.308,30.515 M43.277,112.982c-1.08-1.32-3.016-1.574-4.404-0.584 c-0.063,0.043-0.121,0.086-0.179,0.133c-1.39,1.137-1.587,3.193-0.45,4.582c1.131,1.369,3.192,1.592,4.587,0.445 C44.218,116.42,44.418,114.363,43.277,112.982 M45.025,123.068c-0.061,0.037-0.119,0.082-0.178,0.129 c-0.672,0.551-1.09,1.33-1.174,2.199c-0.084,0.861,0.171,1.705,0.726,2.375c1.134,1.375,3.193,1.598,4.583,0.453 c0.674-0.555,1.086-1.334,1.176-2.197c0.082-0.865-0.174-1.707-0.723-2.377C48.348,122.332,46.412,122.074,45.025,123.068 M32.607,136.291c0.647,0.787,1.6,1.236,2.622,1.236c0.779,0,1.541-0.273,2.145-0.764c0.697-0.574,1.133-1.381,1.226-2.285 c0.087-0.898-0.182-1.781-0.756-2.48c-0.644-0.781-1.601-1.23-2.622-1.23c-0.711,0-1.389,0.217-1.963,0.627 c-0.061,0.045-0.122,0.092-0.185,0.141c-0.699,0.568-1.131,1.381-1.222,2.285C31.762,134.717,32.033,135.596,32.607,136.291 M27.574,117.467c-0.708,0-1.384,0.213-1.958,0.621c-0.059,0.041-0.117,0.082-0.184,0.143c-0.703,0.574-1.137,1.385-1.225,2.287 c-0.088,0.895,0.183,1.771,0.755,2.473c0.643,0.787,1.599,1.229,2.625,1.229c0.779,0,1.541-0.268,2.144-0.76 c1.44-1.184,1.652-3.318,0.466-4.762C29.555,117.912,28.594,117.467,27.574,117.467 M23.553,139.076 c-0.738,0-1.439,0.221-2.03,0.645c-0.07,0.047-0.134,0.102-0.198,0.15c-0.726,0.596-1.177,1.438-1.271,2.369 c-0.089,0.938,0.186,1.854,0.784,2.578c0.672,0.813,1.664,1.277,2.729,1.277c0.81,0,1.601-0.281,2.228-0.789 c0.726-0.604,1.17-1.443,1.267-2.377c0.088-0.93-0.188-1.846-0.782-2.574C25.609,139.541,24.614,139.076,23.553,139.076 M57.826,137.027c0.543-0.678,0.785-1.525,0.689-2.389c-0.101-0.867-0.532-1.639-1.213-2.174c-1.336-1.064-3.285-0.91-4.434,0.35 c-0.049,0.057-0.096,0.113-0.146,0.17c-0.536,0.68-0.782,1.527-0.685,2.395c0.102,0.859,0.535,1.633,1.214,2.174 C54.646,138.662,56.709,138.445,57.826,137.027 M47.734,143.063c-0.596-0.473-1.344-0.732-2.105-0.732 c-0.953,0-1.868,0.4-2.502,1.1c-0.057,0.059-0.108,0.115-0.156,0.176c-0.56,0.709-0.814,1.592-0.711,2.49s0.549,1.703,1.255,2.262 c0.596,0.475,1.345,0.734,2.106,0.734c1.045,0,2.014-0.469,2.657-1.277c0.565-0.709,0.817-1.592,0.712-2.49 C48.887,144.428,48.441,143.621,47.734,143.063 M38.187,153.658c-0.618-0.486-1.398-0.76-2.188-0.76c-0.99,0-1.942,0.414-2.6,1.145 c-0.056,0.057-0.105,0.119-0.156,0.182c-0.588,0.732-0.851,1.656-0.742,2.586c0.11,0.936,0.573,1.77,1.308,2.354 c0.618,0.492,1.393,0.756,2.19,0.756c1.08,0,2.083-0.484,2.752-1.322c0.59-0.732,0.852-1.652,0.74-2.592 C39.385,155.08,38.921,154.242,38.187,153.658 M14.337,123.178c-0.734,0-1.44,0.221-2.036,0.65 c-0.066,0.045-0.13,0.092-0.193,0.143c-0.726,0.6-1.174,1.445-1.267,2.369c-0.09,0.939,0.188,1.855,0.785,2.576 c0.669,0.816,1.663,1.281,2.723,1.281c0.81,0,1.602-0.281,2.229-0.799c0.726-0.592,1.178-1.432,1.271-2.365 c0.088-0.941-0.189-1.854-0.783-2.58C16.393,123.641,15.399,123.178,14.337,123.178 M12.239,109.549 c0.091-0.936-0.188-1.848-0.782-2.572c-0.671-0.814-1.663-1.281-2.725-1.281c-0.735,0-1.442,0.225-2.036,0.65 c-0.069,0.043-0.132,0.092-0.193,0.143c-0.725,0.598-1.176,1.438-1.273,2.375c-0.086,0.934,0.19,1.848,0.79,2.572 c0.668,0.816,1.662,1.281,2.724,1.281c0.809,0,1.6-0.281,2.227-0.793C11.699,111.326,12.148,110.486,12.239,109.549 M22.818,109.576c0.781,0,1.542-0.27,2.144-0.764c0.701-0.574,1.136-1.385,1.22-2.283c0.088-0.902-0.177-1.781-0.75-2.48 c-0.646-0.783-1.602-1.229-2.628-1.229c-0.707,0-1.383,0.211-1.96,0.625c-0.06,0.043-0.121,0.09-0.182,0.139 c-0.698,0.568-1.131,1.381-1.22,2.283s0.177,1.777,0.752,2.477C20.837,109.131,21.792,109.576,22.818,109.576 M35.113,100.629 c-0.061,0.039-0.12,0.088-0.177,0.133c-0.672,0.549-1.087,1.33-1.174,2.195c-0.085,0.861,0.171,1.709,0.726,2.381 c1.126,1.373,3.188,1.588,4.584,0.449c1.387-1.141,1.588-3.188,0.447-4.576C38.436,99.895,36.5,99.637,35.113,100.629"/>
							<g transform="translate(0 35.833)">
								<defs>
									<filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="3.34" y="51.583" width="7.037" height="7.02">
										<feColorMatrix  type="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 1 0"/>
									</filter>
								</defs>
								<mask maskUnits="userSpaceOnUse" x="3.34" y="51.583" width="7.037" height="7.02" id="b">
									<g filter="url(#Adobe_OpacityMaskFilter)">
										<path id="a" fill="#FFFFFF" d="M3.34,58.603v-7.02h7.037v7.02H3.34z"/>
									</g>
								</mask>
								<path mask="url(#b)" fill="#85C5FF" d="M9.089,57.813c0.729-0.598,1.181-1.441,1.271-2.375c0.09-0.934-0.188-1.848-0.784-2.574 c-0.672-0.813-1.664-1.281-2.726-1.281c-0.74,0-1.442,0.227-2.038,0.648c-0.064,0.047-0.125,0.097-0.191,0.145 c-1.498,1.236-1.714,3.457-0.483,4.949c0.666,0.811,1.658,1.277,2.718,1.277C7.671,58.603,8.464,58.319,9.089,57.813"/>
							</g>
							<path fill="#85C5FF" d="M23.433,93.541c0.696-0.574,1.131-1.387,1.222-2.283c0.09-0.898-0.179-1.775-0.756-2.476 c-0.641-0.784-1.597-1.234-2.62-1.234c-0.71,0-1.387,0.22-1.955,0.622c-0.069,0.045-0.129,0.09-0.192,0.143 c-0.698,0.574-1.133,1.384-1.222,2.285c-0.089,0.896,0.181,1.779,0.753,2.473c0.646,0.787,1.601,1.236,2.624,1.236 C22.065,94.307,22.831,94.033,23.433,93.541 M33.784,88.35c-0.057,0.041-0.12,0.089-0.177,0.137 c-1.387,1.137-1.589,3.184-0.448,4.57c1.132,1.381,3.189,1.598,4.587,0.457c1.383-1.137,1.586-3.193,0.449-4.577 C37.111,87.617,35.171,87.36,33.784,88.35 M120.049,144.369l-4.75,1.961l11.186,26.986l4.75-1.963l-11.089-26.742 M108.45,148.416 l-5.052,0.934l5.349,28.709l5.049-0.936l-5.3-28.455 M90.412,178.775l-0.004,0.266l5.136,0.127l0.718-28.938l0.007-0.26 l-5.143-0.129 M72.266,176.207l4.998,1.186l6.76-28.42l-4.997-1.186 M55.214,169.451l-0.112,0.234l4.648,2.186l12.392-26.162 l0.114-0.234l-4.645-2.193 M181.605,95.248c-1.319-1.174-3.016-1.824-4.78-1.824c-2.049,0-4.002,0.877-5.362,2.398 c-2.002,2.238-2.331,5.391-1.082,7.932l-5.519,4.172c-1.447-1.143-3.137-1.914-4.935-2.236l0.141-8.102 c1.021-0.301,1.949-0.875,2.672-1.686c1.031-1.15,1.552-2.635,1.464-4.178c-0.085-1.55-0.769-2.965-1.924-3.996 c-1.063-0.947-2.435-1.465-3.859-1.465c-1.65,0-3.229,0.701-4.329,1.928c-2.127,2.383-1.92,6.049,0.465,8.176 c0.704,0.633,1.558,1.053,2.465,1.277l-0.134,7.924c-2.798,0.262-5.415,1.568-7.302,3.678c-1.996,2.225-2.999,5.09-2.831,8.07 c0.156,2.688,1.254,5.18,3.109,7.1l-5.425,6.775c-1.07-0.607-2.292-0.945-3.544-0.945c-2.044,0-3.998,0.877-5.362,2.398 c-1.275,1.428-1.92,3.268-1.809,5.18c0.11,1.906,0.957,3.664,2.386,4.941c1.257,1.121,2.858,1.758,4.541,1.811l1.316,7.82 c-0.745,0.328-1.42,0.811-1.973,1.432c-1.033,1.15-1.553,2.641-1.466,4.18c0.088,1.547,0.769,2.967,1.927,3.996 c1.065,0.947,2.433,1.467,3.859,1.467c1.65,0,3.231-0.701,4.326-1.932c2.129-2.383,1.924-6.045-0.465-8.176 c-0.897-0.797-2.016-1.27-3.196-1.406l-1.34-7.922c0.983-0.414,1.881-1.027,2.605-1.846c0.794-0.891,1.344-1.936,1.623-3.063 l9.688,0.676c0.221,1.287,0.838,2.457,1.827,3.34c1.065,0.951,2.436,1.469,3.857,1.469c1.652,0,3.231-0.701,4.324-1.936 c1.036-1.156,1.559-2.641,1.469-4.182c-0.09-1.549-0.771-2.963-1.929-3.986c-1.062-0.951-2.436-1.473-3.859-1.473 c-1.652,0-3.227,0.707-4.327,1.936c-0.483,0.539-0.838,1.15-1.086,1.809l-9.894-0.689c-0.196-1.045-0.61-2.018-1.229-2.865 l5.535-6.916c1.71,1.008,3.664,1.555,5.682,1.555c3.188,0,6.232-1.361,8.354-3.734c3.564-3.988,3.73-9.838,0.709-14.004 l5.279-3.994c1.282,1.057,2.884,1.635,4.55,1.635c2.044,0,4-0.869,5.357-2.393C184.813,102.426,184.561,97.881,181.605,95.248"/>
							<g transform="translate(2.972)">
								<defs>
									<filter id="Adobe_OpacityMaskFilter_1_" filterUnits="userSpaceOnUse" x="7.753" y="2.567" width="87.767" height="74.433">
										<feColorMatrix  type="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 1 0"/>
									</filter>
								</defs>
								<mask maskUnits="userSpaceOnUse" x="7.753" y="2.567" width="87.767" height="74.433" id="d">
									<g filter="url(#Adobe_OpacityMaskFilter_1_)">
										<path id="c" fill="#FFFFFF" d="M95.517,2.568H7.753V77h87.764V2.568z"/>
									</g>
								</mask>
								<path mask="url(#d)" fill="#85C5FF" d="M93.591,2.66c-0.229-0.061-0.463-0.093-0.697-0.093c-1.174,0-2.212,0.792-2.524,1.923 l-6.572,23.9l-0.037,0.157c-0.051,0.245-0.182,0.595-0.52,0.89c-0.644,0.559-1.719,0.487-2.268-0.145 c-0.079-0.088-0.15-0.188-0.219-0.303L68.739,8.828c-0.23-0.398-0.5-0.771-0.787-1.101c-1.204-1.381-2.871-2.209-4.695-2.339 c-1.858-0.127-3.586,0.46-4.973,1.665c-1.766,1.527-2.622,3.832-2.289,6.163l3.574,23.087l0.027,0.146 c0.125,0.575-0.072,1.167-0.516,1.554c-0.552,0.479-1.4,0.518-1.988,0.107L38.065,24.371c-1.187-0.894-2.609-1.361-4.111-1.361 c-1.664,0-3.265,0.589-4.504,1.671c-2.534,2.202-3.092,5.888-1.328,8.77L40.94,53.64c0.333,0.647,0.172,1.465-0.377,1.944 c-0.297,0.258-0.673,0.396-1.061,0.396c-0.066,0-0.14-0.004-0.184-0.004l-23.391-4.888c-2.063-0.403-4.225,0.177-5.82,1.554 c-2.851,2.479-3.157,6.805-0.683,9.644c0.25,0.292,0.533,0.568,0.871,0.839l20.02,13.426C30.75,76.843,31.251,77,31.771,77h0.003 c0.875,0,1.691-0.438,2.18-1.163c0.803-1.198,0.484-2.825-0.718-3.633L13.719,59.148l-0.16-0.116 c-0.055-0.048-0.108-0.102-0.167-0.173c-0.584-0.665-0.513-1.682,0.153-2.266c0.374-0.322,0.89-0.461,1.344-0.375l23.433,4.889 l0.13,0.028c1.976,0.308,4.033-0.289,5.549-1.601c2.417-2.102,3.054-5.658,1.501-8.477L32.57,30.685 c-0.413-0.669-0.278-1.539,0.317-2.057c0.563-0.483,1.445-0.514,2.066-0.047L54.04,42.359c1.174,0.833,2.552,1.276,3.984,1.276 c1.648,0,3.244-0.597,4.494-1.679c1.863-1.618,2.715-4.125,2.221-6.525L61.18,12.449c-0.076-0.545,0.125-1.085,0.539-1.446 c0.322-0.275,0.756-0.419,1.168-0.396c0.434,0.032,0.824,0.23,1.117,0.564c0.07,0.077,0.131,0.169,0.209,0.305l12.027,20.171 c0.223,0.375,0.478,0.733,0.767,1.07c1.3,1.493,3.187,2.348,5.177,2.348c1.652,0,3.248-0.597,4.494-1.675 c1.12-0.97,1.882-2.253,2.193-3.69l6.554-23.82C95.807,4.486,94.986,3.044,93.591,2.66z"/>
							</g>
							<path fill="#0000EF" d="M80.082,102.359c-6.396-9.021-4.252-21.521,4.768-27.916c9.041-6.39,21.529-4.253,27.918,4.774 c6.402,9.026,4.258,21.528-4.76,27.925C98.973,113.535,86.473,111.393,80.082,102.359"/>
						</g>
					</svg>
				</div>
				<div id="intro_article">
					<h2>Simplxr brengt data science naar het bedrijfsleven. Data wordt informatie, informatie wordt kennis, kennis wordt wijsheid. Ontdek de kracht van data.</h2>
					<p>Data heeft de potentie om complexe beslissingen te vereenvoudigen. Objectief en feitelijk, als houvast naast ervaring en intuïtie. Maar dat vereist wél een geïntegreerde aanpak op wetenschappelijke basis. Data krijgt pas waarde als het verbonden wordt met andere data, als relaties en effecten worden blootgelegd, als complexe vragen een concreet antwoord krijgen.</p>
				</div>
			
			</div>
			
			<article>
				<div id="data_needs_care">
					<h2>Data needs care</h2>
					<p>Simplxr onderzoekt, analyseert en adviseert. Bij alles wat we doen staat kennisdeling centraal. We vinden het belangrijk dat onze klanten niets zomaar aannemen, maar (zelf)kritisch en datavaardig worden. Data science is vakwerk: er is geen kant-en-klare methode die met een druk op de knop geïmplementeerd wordt. Geïntegreerde ervaring met management, data en data-analyse is een vereiste. Benieuwd hoe data uw organisatie kan verrijken? Maak kennis met onze diensten.</p>
				</div>
				<div id="slide_dl_dt_dd" style="overflow: hidden;">
					<dl>
						<dt>Consulting</dt>
						<dd>
							<p>Van advies tot algoritme, van datamanagement tot dashboard. Simplxr adviseert, realiseert en levert waar nodig capaciteit.</p>
							<br/><span>Lees verder</span>
							<span>1</span>
						</dd>
					</dl>
					<dl>
						<dt>Software</dt>
						<dd>
							<p>Informatie wordt kennis na analyse. Daarvoor is s|drive ontwikkeld: een veilig en intuïtief platform voor datamanagement en <em>data science</em></p>
							<br/><span>Lees verder</span>
							<span>2</span>
						</dd>
					</dl>
					<dl>
						<dt>Training</dt>
						<dd>
							<p>Alle facetten van <em>data science, generiek</em> of on-the-job met eigen data. Vergroot het lerend vermogen van uw organisatie met een training op maat.</p>
							<br/><span>Lees verder</span>
							<span>3</span>
						</dd>
					</dl>
				</div>
			</article>
			
			<div id="visual_sliders">
				<div id="slide_wrap">
					<div id="left_spacing">
						<p>Academisch geschoold, bedrijfsmatig gevormd. Onze data scientists helpen bij het identificeren van mogelijkheden, leggen relaties bloot, stellen effecten vast, signaleren patronen en voorspellen waar mogelijk gedrag. Met onze messcherpe analyses dragen we bij aan een soepele besluitvorming.</p>
					</div>
					<div id="right_slide">
						<a href="#">
							<span></span>
							<span>Meet Simplxr</span>
						</a>
						
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<ol>
							<li>
								<button onfocus="this.blur()">
									<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
										<g>
											<path id="left_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M7.246,1l0.412,0.527L2.055,6.933l5.604,5.405l-0.412,0.527 L1,6.933L7.246,1z"/>
										</g>
										<line id="left_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="1.599" y1="6.952" x2="24.765" y2="6.952"/>
									</svg>
								</button>
							</li>
							<li>
								<button onfocus="this.blur()">
									<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
										<g>
											<path id="right_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M23.765,6.933l-6.246,5.933l-0.412-0.527l5.604-5.405 l-5.604-5.405L17.519,1L23.765,6.933z"/>
										</g>
										<line id="right_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="23.167" y1="6.952" x2="0" y2="6.952"/>
									</svg>
								</button>
							</li>
						</ol>
					</div> <!-- end of right_slide -->
				</div> <!-- end of slide_wrap -->
				<div id="logo_slide">
					<div id="logo_slide_wrap">
						<ul>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo01.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo02.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo03.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo04.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo05.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo06.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo07.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo08.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo09.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo10.png"></li>
							<li id="logo01" class="logo_slides"><img src="img/artwork/mirroring/simplxr_logo01.png"></li>
							<!-- <li id="logo02" class="logo_slides"><img src="img/logo02.png"></li>
							<li id="logo03" class="logo_slides"><img src="img/logo03.png"></li>
							<li id="logo04" class="logo_slides"><img src="img/logo04.png"></li>
							<li id="logo05" class="logo_slides"><img src="img/logo05.png"></li>
							<li id="logo06" class="logo_slides"><img src="img/logo06.png"></li>
							<li id="logo07" class="logo_slides"><img src="img/logo07.png"></li>
							<li id="logo08" class="logo_slides"><img src="img/logo08.png"></li>
							<li id="logo09" class="logo_slides"><img src="img/logo09.png"></li>
							<li id="logo10" class="logo_slides"><img src="img/logo10.png"></li>
							<li id="logo00" class="logo_slides"><img src="img/logo01.png"></li> -->
						</ul>
					</div>
					<div id="logo_slide_info">
						<h2>Meet our customers</h2>
						<p>Data is grenzeloos en dat geldt ook voor onze klanten en klussen. Een greep uit onze projecten: ontwikkelen en implementeren supply chain planning en forecasting algoritmes, ontwerp en realisatie analytisch platform voor trading- en portefeuillemanagement, personalisatie in e-commerce met dynamische netwerkanalyse en recommender systems, diverse transformaties middels real-time dynamische dashboarding. Simplxr levert maatwerk in data science. Maak kennis met onze klanten.</p>
					</div>
					<ol>
						<li>
							<button onfocus="this.blur()">
								<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
									<g>
										<path id="left_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M7.246,1l0.412,0.527L2.055,6.933l5.604,5.405l-0.412,0.527 L1,6.933L7.246,1z"/>
									</g>
									<line id="left_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="1.599" y1="6.952" x2="24.765" y2="6.952"/>
								</svg>
							</button>
						</li>
						<li>
							<button onfocus="this.blur()">
								<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
									<g>
										<path id="right_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M23.765,6.933l-6.246,5.933l-0.412-0.527l5.604-5.405 l-5.604-5.405L17.519,1L23.765,6.933z"/>
									</g>
									<line id="right_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="23.167" y1="6.952" x2="0" y2="6.952"/>
								</svg>
							</button>
						</li>
					</ol>
				</div>
			</div> <!-- end of visual_sliders -->
			<div id="last_slide_section">
				<a href="#">
					<span></span>
					<span>Alle artikelen</span>
				</a>
				<h2>Articles</h2>
				<ul>
					<li>
						<span class="data_lisk_title">Data science ─ 12/06/2018</span>
						<p class="data_lisk_contents">
							Wat kan ik met: agent-based modeling?
						</p>
					</li>
					<li>
						<span class="data_lisk_title">Implementatie ─ 23/01/2018</span>
						<p class="data_lisk_contents">
							Wat kan ik met: agent-based modeling?
						</p>
					</li>
				</ul>
				<ol style="visibility: hidden;">
					<li>
						<button>
							<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
								<g>
									<path id="left_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M7.246,1l0.412,0.527L2.055,6.933l5.604,5.405l-0.412,0.527 L1,6.933L7.246,1z"/>
								</g>
								<line id="left_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="1.599" y1="6.952" x2="24.765" y2="6.952"/>
							</svg>
						</button>
					</li>
					<li>
						<button>
							<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24.765px" height="14.167px" viewBox="0 0 24.765 14.167" enable-background="new 0 0 24.765 14.167" xml:space="preserve">
								<g>
									<path id="right_btn_path" fill="#FFFFFF" stroke="#BCBEC0" stroke-miterlimit="10" d="M23.765,6.933l-6.246,5.933l-0.412-0.527l5.604-5.405 l-5.604-5.405L17.519,1L23.765,6.933z"/>
								</g>
								<line id="right_btn_line" fill="none" stroke="#BCBEC0" stroke-miterlimit="10" x1="23.167" y1="6.952" x2="0" y2="6.952"/>
							</svg>
						</button>
					</li>
				</ol>
			</div>
		</div> <!-- end of #body -->
		
		<footer>
			<ul>
				<li >
					<ol>
						<li>
							<!-- <span> -->
								&#9742;
								<span class="boder_animation"></span>
								<span class="boder_animation"></span>
							<!-- </span> -->
						</li> <!-- 전화 -->
						<li>
							<!-- <span> -->
								&#9993;
								<span class="boder_animation"></span>
								<span class="boder_animation"></span>
							<!-- </span> -->
						</li> <!-- 이멜 -->
					</ol>
				</li>
				<li>
					<svg xmlns="http://www.w3.org/2000/svg" width="146" height="47" xmlns:xlink="http://www.w3.org/1999/xlink">
						<defs>
							<path id="a" d="M13.823818.36211v20.530643H.436272V.36211h13.387546z"/>
							<path id="c" d="M23.52652.03969H.161665v19.792587H23.52652V.03969z"/>
						</defs>
						<g fill="none" fill-rule="evenodd">
							<path fill="#0C0C0C" d="M135.089532 9.842583c2.78372 2.623123 4.684043 5.98519 5.495176 9.721167l.01414.06841 1.227433-.264243-.015185-.06841c-.86245-3.984035-2.888973-7.56909-5.85859-10.36768-2.91463-2.745844-6.535666-4.5543-10.469843-5.228488l-.068598-.012012-.212602 1.235055.069122.01201c3.687538.630324 7.08288 2.3265 9.818948 4.90419"/>
							<path fill="#0C0C0C" d="M137.375366 20.247287l.01414.067366 1.227956-.26529-.014662-.067365c-.7263-3.337-2.42502-6.33821-4.912878-8.679856-2.442824-2.298822-5.474753-3.810655-8.770602-4.374655l-.068598-.01201-.211554 1.2361.068598.010965c6.333538 1.082567 11.306112 5.826434 12.6676 12.084745M137.346723 7.471172c3.26286 3.077456 5.490463 7.01919 6.44141 11.399067l.014138.06841 1.226388-.26529-.014138-.06841c-1.003312-4.62741-3.357116-8.792133-6.80587-12.04349-3.38487-3.192343-7.590297-5.29481-12.159138-6.079188l-.068598-.013055-.21365 1.235055.069123.01149c4.324296.74312 8.305078 2.73331 11.510336 5.75541M108.320998 29.400432c-.287483-.350933-.802754-.4183-1.17245-.1551-.016758.01149-.032467.022456-.047653.03551-.369696.302368-.422585.848612-.119916 1.218346.301098.36399.849882.423 1.22115.118022.369173-.30289.422585-.849656.118868-1.216778M108.786365 32.08194c-.016233.010443-.031942.022454-.047128.034466-.179088.147266-.290626.354066-.31262.584888-.022516.229256.04556.453812.193228.63189.301622.365555.849883.424566 1.220103.120633.179088-.14779.289054-.35511.312618-.584367.021994-.229778-.04608-.45381-.19218-.63241-.289577-.350934-.804848-.419346-1.17402-.1551M105.480305 35.59874c.17228.20889.425727.328478.698025.328478.207365 0 .410017-.07259.570778-.203145.185895-.151966.301622-.367122.326233-.607866.023042-.238656-.048175-.473134-.20108-.659045-.171234-.207844-.42625-.327433-.698025-.327433-.189037 0-.369696.057443-.522602.166588-.016233.01201-.032466.024544-.049223.0376-.185895.150922-.301098.367122-.325186.607866-.023564.238656.048176.47209.20108.656956M104.140496 30.59277c-.188514 0-.36865.056922-.52103.165022-.01571.01149-.03142.022456-.049224.038122-.186943.153012-.30267.368167-.326233.607867-.023042.238657.048698.47209.20108.658.171233.20889.425727.326912.699072.326912.207365 0 .410017-.071022.570777-.202622.38331-.314378.439865-.882556.124104-1.265867-.171233-.20889-.426774-.327433-.698548-.327433M103.07021 36.33925c-.19637 0-.383312.059012-.540407.17129-.01885.012533-.035608.026633-.052888.03969-.193227.158232-.313143.382788-.338278.63032-.024088.2491.049223.49298.208413.68568.179088.2162.443007.339443.7263.339443.215745 0 .426252-.074155.593296-.209933.193226-.160322.31157-.38331.33723-.63241.023564-.247012-.05027-.49089-.208412-.68359-.17804-.217244-.443008-.34049-.725255-.34049M112.19417 35.794573c.144528-.18069.208936-.405766.183278-.635544-.026707-.2303-.141386-.435534-.322568-.5781-.355558-.282523-.874495-.24179-1.180306.092954-.01309.015145-.02566.03029-.03875.045434-.142956.18069-.208412.40629-.18223.63659.026706.228732.142433.434488.323092.57862.370743.294534.920052.236568 1.217484-.139955M109.50743 37.398997c-.158665-.125334-.357652-.19479-.560304-.19479-.25397 0-.497467.107056-.666082.292445-.015186.015667-.0288.03081-.041892.047-.148717.188-.21679.423522-.189038.662178.027754.238656.1461.452767.33409.6016.158664.125856.358175.19479.560827.19479.27806 0 .535694-.12429.70745-.339446.15029-.188522.217316-.423522.189562-.662177-.027753-.238656-.146098-.452767-.334612-.6016M106.965846 40.21717c-.16495-.129512-.372315-.2021-.582822-.2021-.263395 0-.516842.110188-.69174.303932-.015186.015667-.028277.031856-.041892.048045-.15657.19479-.226217.440755-.197416.68829.029324.248054.152382.47052.348227.62562.164426.130556.370743.201056.58282.201056.287485 0 .554546-.12899.732587-.351977.157095-.19479.22674-.439712.197416-.688812-.028278-.246488-.15186-.468955-.34718-.624055M100.616598 32.111497c-.19532 0-.38331.05901-.541977.172333-.01728.012533-.03456.024544-.051317.038644-.193226.159278-.312618.383834-.33723.630323-.024088.2491.049747.492977.208936.684633.17804.217244.442483.34049.72473.34049.215743 0 .42625-.074157.593295-.212023.193226-.15719.313666-.3807.338277-.629278.023564-.250146-.05027-.492457-.208412-.68568-.179088-.2162-.44353-.339443-.726302-.339443M100.058178 28.487588c.024088-.2491-.05027-.49141-.208412-.684634-.178564-.2162-.442484-.340488-.725254-.340488-.195845 0-.383835.060055-.541977.173377-.018328.01149-.035085.024545-.051318.0376-.193227.159278-.313142.38279-.3388.631367-.023042.2491.05027.491933.209982.684633.17804.2162.442483.34049.725254.34049.21522 0 .425726-.0752.59277-.21098.19375-.159276.313667-.382265.337754-.631365M102.874364 28.49469c.20789 0 .410542-.071544.570778-.203144.18642-.153012.302146-.368167.324663-.606823.023564-.2397-.04713-.474177-.19951-.659566-.171758-.208367-.42625-.327434-.699596-.327434-.18799 0-.368127.056923-.521556.16711-.016233.010968-.032466.0235-.0487.036557-.185895.150922-.301098.367122-.324662.606822-.023564.2397.04713.47261.200558.659045.17071.20889.425203.327433.698024.327433M106.147644 26.115132c-.016233.010967-.031943.0235-.047128.03551-.17909.146224-.28958.354068-.31262.583846-.022516.229255.045558.454855.193227.632933.300052.365557.848836.42248 1.220103.11959.369697-.30289.42311-.847567.119392-1.216778-.28853-.34989-.8038-.4183-1.172974-.1551M99.219554 24.25879c.19375-.15928.31419-.383312.338278-.631368.024087-.248055-.049747-.49141-.208413-.684633-.17909-.2162-.443008-.34049-.72578-.34049-.19689 0-.383834.060056-.5425.172333-.01728.012534-.033513.02559-.050794.038645-.39902.328478-.456622.91911-.128817 1.316.177516.215155.441435.339444.723682.339444.21679 0 .427822-.0752.594342-.209933M103.038005 24.230223c.185372-.151966.301098-.368166.325186-.606822.02409-.238654-.04765-.472088-.20108-.658-.17071-.208888-.425203-.328477-.6975-.328477-.18904 0-.369174.05849-.52051.165545-.018326.01201-.03456.024022-.051316.0376-.185896.15301-.301622.368166-.325186.607866-.023565.238656.048175.473134.200557.658.171757.20889.42625.328478.698548.328478.207366 0 .411065-.07259.571302-.20419M105.793814 22.8502c-.015186.010966-.031942.0235-.047128.036554-.369173.301845-.42311.846523-.119392 1.215734.301622.3666.848835.424566 1.22115.120633.368125-.301843.42206-.84861.119392-1.216777-.28853-.350933-.80485-.419344-1.174022-.156144M128.758664 37.746797l-1.26409.521177 2.976947 7.176378 1.264614-.522222-2.951287-7.1111M125.670966 38.822888l-1.34473.248055 1.4238 7.634367 1.34421-.2491-1.411236-7.565956M120.869154 46.89592l-.001047.0705 1.367248.033423.19061-7.694422.002093-.069454-1.36882-.033423M116.038175 46.21254l1.330593.315423 1.799783-7.557077-1.330592-.315423M111.498712 44.416358l-.029848.062144 1.237383.581234 3.29899-6.957045.030372-.062143-1.236337-.583323"/>
							<g transform="translate(131.96 21.933)">
							<mask id="b" fill="#fff">
								<use xlink:href="#a"/>
							</mask>
							<path fill="#0C0C0C" d="M13.18659 2.751798c-.350846-.31229-.802755-.485667-1.272992-.485667-.54512 0-1.065103.232912-1.426944.637634-.533075.595856-.62105 1.434023-.288007 2.109256l-1.46936 1.109722c-.385406-.303933-.83522-.509166-1.313837-.59481l.037703-2.154168c.271774-.080422.518937-.233433.711116-.448588.274915-.306023.413158-.700823.390118-1.110767-.02304-.412034-.20527-.788557-.512653-1.062723-.28277-.25171-.648278-.389578-1.0274-.389578-.439342 0-.85931.186432-1.15203.51282-.566587.633457-.511604 1.608446.12306 2.17349.18799.168678.415253.280433.656655.339967l-.035608 2.107166c-.745153.069456-1.44213.417256-1.94431.978123-.53098.591677-.79804 1.3536-.753007 2.14581.040844.714923.333564 1.378145.827365 1.888356l-1.444224 1.801145c-.284866-.161367-.610052-.25119-.943616-.25119-.544072 0-1.064056.232912-1.426945.637634-.339848.379657-.511082.86898-.48228 1.3771.029324.5076.255016.97499.63571 1.314434.33461.29819.760862.46739 1.208582.48149l.350845 2.08001c-.198463.08669-.378075.215156-.52522.380178-.27544.306022-.41316.701867-.39012 1.11181.023042.41099.204748.788557.512654 1.06168.283294.252232.64723.39062 1.0274.39062.43934 0 .859832-.186432 1.152028-.513865.56659-.633456.511606-1.6074-.12358-2.17349-.23931-.21202-.537265-.337877-.851455-.374433l-.356606-2.106122c.261825-.11019.50061-.273644.693835-.49089.211554-.236565.357652-.51491.43201-.814665l2.578973.179644c.059172.34258.223075.6533.48647.8883.283818.252757.648278.390623 1.026876.390623.44039 0 .860355-.186955 1.151504-.51439.27544-.307587.414207-.702387.390643-1.112332-.024088-.41151-.20527-.78751-.513177-1.06011-.28277-.252756-.648277-.391667-1.0274-.391667-.439865 0-.859308.188-1.152028.51439-.128818.14361-.223075.306544-.289578.480966l-2.633433-.1833c-.05184-.2773-.162854-.536323-.32728-.761923L5.3706 11.01022c.45505.268422.975558.414122 1.512823.414122.848835 0 1.65892-.3619 2.223938-.993266.949378-1.060634.993364-2.616334.188515-3.723967l1.405475-1.06168c.34142.280434.768193.43449 1.2112.43449.544072 0 1.06458-.231344 1.42642-.63659.701692-.783332.63414-1.991754-.15238-2.691532" mask="url(#b)"/>
							</g>
							<g transform="translate(99.493)">
								<mask id="d" fill="#fff">
									<use xlink:href="#c"/>
								</mask>
								<path fill="#0C0C0C" d="M23.013393.064077c-.060744-.01619-.123582-.024545-.185896-.024545-.312095 0-.588582.210456-.671842.511256l-1.749512 6.355444-.00995.041778c-.013615.065278-.048175.158233-.138243.236567-.171233.148833-.45767.12951-.603768-.038645-.020946-.0235-.039797-.050133-.058125-.080944l-3.198974-5.36061c-.061266-.106012-.133006-.205235-.20946-.292968-.320473-.367122-.764527-.5875-1.24995-.621967-.49485-.033944-.954613.1222-1.323786.442845-.470237.405766-.698024 1.018855-.609528 1.638733l.95147 6.139246.007855.038644c.03299.15301-.019375.3102-.13772.413078-.146622.127422-.372838.137866-.528885.028722L8.231296 5.837243c-.31576-.23761-.69436-.3619-1.094427-.3619-.443008 0-.86926.156667-1.199158.44441-.67446.585413-.823177 1.565624-.353463 2.331724l3.41262 5.368966c.088498.172334.04556.389578-.10054.517-.07907.06841-.179087.10549-.282246.10549-.017804 0-.03718-.001045-.0487-.001045l-6.227237-1.29981c-.54931-.107057-1.1248.047-1.54948.413076-.758767.659045-.840456 1.8095-.181705 2.564634.066503.07729.14191.150922.231977.22299l5.3297 3.56991c.115204.07781.248735.11959.386978.11959h.001047c.233024 0 .45034-.116457.580204-.309157.213648-.319077.128817-.751477-.191133-.96611l-5.19565-3.471733-.042414-.03081c-.014662-.013057-.0288-.027157-.04451-.045957-.155524-.177033-.136673-.447544.040844-.602644.099494-.085645.23669-.1222.357653-.099745l6.238234 1.300334.03456.007312c.526268.081466 1.074006-.076767 1.477216-.425612.643565-.558777.813227-1.504522.399544-2.25391l-3.44247-5.418056c-.109967-.177556-.07436-.4089.084307-.546767.149765-.128466.384883-.13682.549833-.012532l5.08097 3.66391c.312618.221423.679696.339445 1.060913.339445.438818 0 .863497-.158755 1.196538-.4465.495896-.43031.722636-1.096666.5912-1.734822l-.94728-6.111566c-.020424-.145177.03299-.288788.14348-.384877.085877-.07311.20108-.111234.311046-.104967.115203.008356.21941.0611.29691.149878.01885.020366.035084.04491.05603.080944l3.201592 5.363745c.059172.099744.127247.19479.204223.28461.346132.39689.848312.624056 1.378245.624056.439866 0 .864545-.158755 1.19654-.445455.297955-.257978.500608-.59899.583868-.981256L23.501434.92c.10211-.370257-.116774-.753568-.48804-.855923z" mask="url(#d)"/>
							</g>
							<g fill="#0C0C0C">
								<path d="M4.564964 21.905283c-.90966-.34301-1.5669-.590912-1.5669-1.282648 0-.4298.345554-.892864 1.104397-.892864.54876 0 1.079527.229193 1.5923.45059.427578.185018.83187.35912 1.163137.35912.609614 0 1.086934-.478133 1.086934-1.088795 0-.978097-1.483288-2.026355-3.690494-2.026355-2.28923 0-3.950852 1.39023-3.950852 3.304846 0 1.606428 1.028724 2.316354 3.054422 3.13698l.21908.08627c1.152023.454748 1.847365.728636 1.847365 1.44324 0 .569604-.549816.999925-1.278496.999925-.604323 0-1.17266-.265052-1.722478-.52075-.506954-.23647-.98639-.459945-1.445188-.459945-.539234 0-.977923.536342-.977923 1.195337 0 1.24055 1.679614 2.175512 3.90693 2.175512 2.490316 0 4.297992-1.4791 4.297992-3.517927 0-1.2972-.743497-2.130298-2.651187-2.970152-.363546-.156953-.6964-.282203-.989036-.392382M14.015785 19.727744v6.75469c0 1.89071.742968 2.132897 1.390683 2.132897.67682 0 1.368457-.2531 1.368457-2.132895v-6.75469c0-1.871483-.731325-2.11107-1.368457-2.11107-.687403 0-1.390683.2505-1.390683 2.11107M35.996087 17.5738c-1.333002 0-2.233136.41265-3.21 1.472342l-.262473.284802-.235485-.30663c-.750377-.976018-1.78016-1.450515-3.148087-1.450515-1.07741 0-1.846836.309747-2.49508 1.00512l-.30269.323782-.21855-.383547c-.350318-.61586-.777366-.90274-1.344646-.90274-.687933 0-1.390682.250502-1.390682 2.11159v6.75469c0 1.89019.742967 2.132896 1.390682 2.132896.647187 0 1.390154-.242705 1.390154-2.132896v-3.83547c0-.700572 0-2.83243 2.03787-2.83243 1.670618 0 1.86377 1.64073 1.86377 2.875046v3.792854c0 1.89019.743495 2.132897 1.39068 2.132897.647187 0 1.390684-.242705 1.390684-2.132896v-3.83547c0-.700572 0-2.83243 2.03734-2.83243 1.885465 0 1.885465 2.16408 1.885465 2.875046v3.792854c0 1.879277.692165 2.132897 1.368986 2.132897.647186 0 1.390682-.242705 1.390682-2.132896v-4.816166c0-2.639096-1.2568-4.09273-3.53862-4.09273M51.248194 26.331458c-1.543086 0-2.579748-1.275372-2.579748-3.17284 0-1.843415 1.060475-3.13074 2.579748-3.13074 1.49493 0 2.579748 1.316428 2.579748 3.13074 0 1.867845-1.060474 3.17284-2.579748 3.17284m.54241-8.800275c-1.066297 0-1.93468.352364-2.581866 1.04722l-.30216.324818-.218553-.384065c-.350316-.61586-.777893-.90274-1.345173-.90274-.687404 0-1.390683.250502-1.390683 2.11107v11.29385c0 1.89019.742967 2.132377 1.390682 2.132377.647186 0 1.390683-.242186 1.390683-2.132377v-3.54807l.53447.45163c.72868.616377 1.516628.903258 2.479205.903258 2.716806 0 4.927187-2.562178 4.927187-5.71215 0-3.183753-2.099783-5.58482-4.883794-5.58482M64.02734 12.843333c-.647714 0-1.390682.242185-1.390682 2.132896V26.48264c0 1.89019.742968 2.132897 1.390683 2.132897.67682 0 1.368458-.25362 1.368458-2.132898V14.97623c0-1.890712-.731325-2.132897-1.368457-2.132897M77.628356 22.74758l2.457508-2.57673c.439218-.46826.672057-.894944.672057-1.231717 0-.728115-.65618-1.343974-1.433545-1.343974-.287873 0-.771014.23075-1.138793.671986l-2.152172 2.59388-2.335797-2.651048c-.358254-.404855-.72868-.59351-1.16578-.59351-.671 0-1.282202.650678-1.282202 1.365282 0 .3586.204793.77593.56199 1.145444l2.59721 2.597-3.048072 3.290292c-.403234.436038-.63184.709407-.63184 1.256663 0 .728634.60697 1.344493 1.325594 1.344493.423873 0 .778423-.21932 1.22505-.75722l2.68082-3.148413 2.699344 3.144775c.501133.57688.845628.782166 1.31501.782166.67153 0 1.23881-.57688 1.23881-1.25926 0-.626772-.27094-.965624-.718627-1.448436l-2.866564-3.181674zM91.560637 17.55249c-.717567 0-1.439367.356003-2.086024 1.02955l-.30269.314945-.214847-.37783c-.350846-.61586-.777894-.90274-1.344645-.90274-.68793 0-1.39121.250502-1.39121 2.11159v6.75469c0 1.89019.743496 2.132896 1.39121 2.132896.647188 0 1.390155-.242705 1.390155-2.132896v-3.49454c0-1.185462.118007-1.760263 1.247275-2.28985.356667-.164228.70963-.290518 1.052008-.41265 1.067355-.382508 1.671677-.635087 1.671677-1.38867 0-.728635-.647186-1.344493-1.412908-1.344493M117.975672 26.118584c-1.68226-2.330386-1.118156-5.558314 1.254154-7.209958 2.377073-1.650084 5.661688-1.09815 7.341832 1.233276 1.683848 2.330906 1.119743 5.559874-1.252038 7.211517-2.376015 1.651123-5.663275 1.09815-7.343948-1.234836"/>
							</g>
						</g>
					</svg>
				</li>
				<li>
					<ol>
						<li class="fab">
							<!-- <span class='fab'> -->
								&#xf0e1;
								<span class="boder_animation"></span>
								<span class="boder_animation"></span>
							<!-- </span> -->
						</li><!-- 인별 -->
					</ol>
				</li>
			</ul>
		</footer>
	</body>
</html>















