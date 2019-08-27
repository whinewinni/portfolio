<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>한국민속박물관</title>
		
		<!-- favicon -->
		<link rel="shortcut icon" href="http://adventure.lotteworld.com/common/images/favicon.ico">
		<!-- css -->
		<link rel="stylesheet" href="css/reset.css">
		<!-- jQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- google font -->
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700" rel="stylesheet">
		
		
		<style>
		
			body{
				font-family: 'Noto Sans KR', sans-serif;
			}
			/* 상단 ux 부분 시작 */
			header{
				height: 120px;
				padding-top: 14px;
				box-sizing: border-box;
			}
			header nav{
				width: 1175px;
				margin: 0 auto;
			}
			header nav h1{
				float: left;
			}
			header nav ol{
				float: right;
			}
			header nav ol li{
				float:left;
				font-weight: 100;
			}
			header nav ol li:first-child::after{
				content: "|";
				margin-left: 12px;
				margin-right: 12px;
				color: silver;
				font-size:5px;
				position: relative;
				top: -3px;
			}
			header nav ol li:last-child{
				margin-left: 30px;
				font-weight: 300;
			}
			header nav > ul{
				float: left;
				clear:right; 
				/* float의 흐름을 깸 , 이 전에 float left로 가로 정렬한것들의 줄을 바꿀 경우 사용함. */
				margin-left: 217px;
				margin-top:20px ;
				font-size: 18px;
			}
			header nav > ul > li{
				float: left;
				margin-left: 120px;
				width: 100px;
			}
			header nav > ul > li:first-child{
				margin-left: 0;
			}
			
			
			header nav ul.submenu{
				margin-top: 50px;
				display: none;
				/* width: 90px; */
				position: absolute;
				z-index: 11;
				font-weight:200
			}
			header nav ul#submenu01.view::before, header nav ul#submenu04.view::before{
				content:"▲";
				color: green;
				position: absolute;
				top: -35px;
				left: 25px;
			}
			header nav ul#submenu02.view::before{
				content:"▲";
				color: green;
				position: absolute;
				top: -35px;
				left: 8px;
			}
			header nav ul#submenu03.view::before{
				content:"▲";
				color: green;
				position: absolute;
				top: -35px;
				left: 44px;
			}
			/* header nav ul li:nth-child(1):hover #submenu01::before{ opacity:1 } */
			
			header nav ul.submenu li{
				margin-top: 15px;
			}
			/* header nav > ul:hover ul.submenu{
				display: block;
			} */
			
			
			header nav a{
				color: black;
			}
			header nav > ul > li > a{
				/* font-weight: bold; */
			}
			/* 상단 ux 부분 끝 */
			
			#lnb_box{
				position: absolute;
				height:337px;
				background-color: white;
				top: 120px;
				width: 100%;
				left: 0;
				z-index: 10;
				border-top:1px solid green;	
				display: none;			
			}
			#lnb_box #lnb_open{
				width: 1200px;
				margin: 0 auto;
			}
			#lnb_box #lnb_open dl{
				width: 300px;
				border-right: 1px solid gray;
				float: left;
				font-size: 18px;
			}
			#lnb_box #lnb_open dl dt{
				margin-top: 18px;
			}
			#lnb_box #lnb_open dl dt:first-child{
				margin-top: 40px;
			}
			#lnb_box #lnb_open dl dt:nth-of-type(2){
				margin-bottom: 15px;
				font-size: 20px
			}
			#lnb_box #lnb_open dl dt, #lnb_box #lnb_open dl dd{
				margin: 5px
			} 
			#lnb_box #lnb_open dl dd{
				font-weight: 400;
				font-size: 30px;
				margin-top: -14px
			}
			
			
			
			/* 상단 slider 부분 시작 */
			#visual{
				overflow: hidden;
				clear: both;
				position: relative;
			}
			#visual #slider{
				width: 200%;
			}
			#visual #slider .slideItem{
				width: 50%;
				height: 710px;
				float: left;
				background: no-repeat center cover;
			}
			#visual #slider #slider01{
				background-image:url("http://adventure.lotteworld.com/image/2018/7/201807230523524390.jpg");
				background-position: center;
			}
			#visual #slider #slider02{
				background-image:url("http://adventure.lotteworld.com/image/2019/2/201902220557216490.jpg");
				background-position: center;
			}
			
			#visual button{
				position: absolute;
				/* width: 60px;
				height: 60px; */
				border-radius: 60px;
				top: 50%;
				transform:translateY(-50%);
				background-color:transparent;
				border: none;
			}
			#visual button#btn_left{
				left: 3%
			}
			#visual button#btn_Right{
				right: 3%;
			}
			/* $("#visual ol li").css({backgroundColor: "red"}); */
			#visual ol li.color_yellow{
				background-color: white;
			}
			#visual ol{
				position:absolute;
				bottom: 10px;
				left: 50%;
				transform:translateX(-50%);
				background-color: rgba(0,0,0,0.5);
				border-radius: 10px;
				padding:5px 10px;
			}
			#visual ol li{
				float: left;
				width: 15px;
				height: 15px;
				border-radius: 12px;
				background-color: transparent;
				border: 2px solid white;
				/* margin-left: 5px; */
				margin: 3px;
			}
			#visual ol li:first-child{
				background-color: white;
			}
			/* 상단 slider 부분 끝 */
			
			
			dl#openingtime{
				width: 500px;
				margin:20px auto;
				height: 80px;
				line-height: 80px;
				/* border: 1px solid red; */
			}
			dl#openingtime dt{
				float: left;
				width: 146px;
				text-align: right;
				padding-right: 30px;
				box-sizing: border-box;
				background: url("http://adventure.lotteworld.com/common_mus/images/icon/time_icon.png") no-repeat 20px 25px;
			}
			dl#openingtime dd{
				float: left;
				
			}
			dl#openingtime dd:nth-of-type(1)::after{
				content: "|";
				margin-left: 20px;
				margin-right: 20px;
				color: gray;
			}
			dl#openingtime dd span{
				font-weight: 100px;
				color: gray;
			}
			
			section#gallery{
				height: 874px;
				background: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon1_bg.jpg") center no-repeat;
				padding-top: 110px;
				box-sizing: border-box;
				background-size: cover;
				transition:all 0.5s;
				
			}
			section#gallery.veiw01 {
				background-image: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon1Bg_t1_img.jpg");
				transition:all 0.5s;
			}
			section#gallery.veiw02{
				background-image: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon1Bg_t2_img.jpg");
				transition:all 0.5s;
			}
			section h2{
				font-size: 37px;
				letter-spacing: 0.7px;
				color: white;
				text-align: center;
				font-weight: 300;
			}
			section h3{
				font-weight: 100;
				text-align: center;
				color: white;
				margin-top: 30px
			}
			section#gallery div{
				width: 1180px;
				margin: 60px auto 0;
				overflow: hidden;
			}
			section#gallery dl{
				float: left;
				width: 574px;
				float: left;
				overflow: hidden;
				color: white;
				text-align: center;
				font-size: 22px;
				/* border: 1px solid red; */
				cursor: pointer;
				position: relative;
			}
			section#gallery dl:first-child{
				margin-right: 22px;
			}
			/* section#gallery dl:hover {
				border: 1px solid white;
				box-sizing: border-box;
			} */
			section#gallery dl span{
				position: absolute;
				border: 2px solid white;
				width: 100%;
				top: 0;
				left: 0;
				height: 100%;
				box-sizing: border-box;
				opacity:0; 
			}
			section#gallery dl:hover span{
				opacity: 1;
				transition:all 1s;
			}
			section#gallery dl dt{
				height: 60px;
				line-height: 60px
			}
			section#gallery dl dd{
				/* border: 1px solid red; */
			}
			section#program{
				height: 730px;
				background-image: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon2_bg.jpg");
				color: black;
				background-size: cover; /* 브라우저가 커져도 가로 기준으로 맞춰줌 */
				padding-top: 120px
			}
			section#program h2, section#program h3{
				color: black;
			}
			section#program div{
				width: 1200px;
				overflow: hidden;
				margin: 60px auto;
				padding-bottom: 30px;
				padding-right: 30px;
				box-sizing: border-box;
			}
			section#program dl{
				width: 375px;
				float: left;
				font-size: 20px;
				text-align: center;
				cursor: pointer;
			}
			section#program dl:nth-of-type(2){
				margin: 0 22px;
			}
			section#program dl dt{
				height: 60px;
				line-height: 60px;
				background-color: white;
				
			}
			section#program dl:hover dt{
				background-color: #13885f;
				color: white;
			}
			section#program dl:hover{
				box-shadow: 20px 20px 20px rgba(0, 0, 0, 0.1);
			}
			section#news{
				height: 790px;
				/* border: 1px solid red; */
				margin-top: 120px
			}
			section#news h2, section#news h3{
				color: black;
			}
			section#news #wrap{
				width: 1200px;
				overflow: hidden;
				margin: 60px auto;
			}
			section#news #wrap article{
				width: 574px;
				height: 400px;
				border: 1px solid #d9d9d9;
				float: left;
				padding: 40px;
				box-sizing: border-box;
				margin-right: 20px;
			}
			section#news #wrap article dl dt{
				margin-top: 30px
			}
			section#news #wrap article dl dd{
				color: #888;
				margin-top: 10px;
				line-height: 26px;
				font-weight: 200
			}
			section#news #wrap .qmenu{
				float: left;
				width: 276px;
				height: 188px;
				border: 1px solid #d9d9d9; 
			}
			section#news #wrap #quik_menu01, section#news #wrap #quik_menu02{
				font-weight: 500;
				font-size: 16px;
				/* padding: 128px 40px 40px 40px; */
				text-align: center;
				line-height: 300px
			}
			section#news #wrap #quik_menu01{
				margin-right: 20px;
				background: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon3_util1_img1.png") no-repeat center;
			}
			section#news #wrap #quik_menu02{
				background: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon3_util1_img2.png") no-repeat center;
			}
			section#news #wrap #quik_menu03{
				width: 574px;
				height: 192px;
				border: 1px solid #d9d9d9;
				margin-top: 18px;
				background-image: url("http://adventure.lotteworld.com/common_mus/images/icon/mainCon3_banner.jpg");
				border: none;
			}
			section#news #wrap #quik_menu03 p{
				color: white;
				font-size: 28px;
				margin: 40px 40px 10px;
				line-height: 35px;
			}
			section#news #wrap #quik_menu03 a{
				color: white;
				font-size: 16px;
				margin-left: 40px;
				
			}
			section#news #wrap article h4{
				float: left;
			}
			section#news #wrap article button{
				float: right;
				background: transparent; /* 투명하게 만들어줌 */
				border: none;
				background: url("http://adventure.lotteworld.com/common_mus/images/btn/newsMoreBt_icon.png") no-repeat right;
				width: 100px;
				height: 20px;
			}
			section#news #wrap article dl{
				float: left;
				clear: left;
				border-bottom: 1px solid #d9d9d9;
			}
			section#news #wrap article dl dd{
				height: 52px;
				width: 492px;
				/* border: 1px solid red; */
				
				overflow: hidden;
				text-overflow:ellipsis;
				
				word-break:break-word; /* word-break는 줄바꿈을 할 때 단어 기준으로 할 지 글자 기준으로 할 지 정하는 속성 */
				-webkit-line-clamp:2;
				line-height: 26px;
				-webkit-box-orient:vertical; /* 박스를 수직방향으로 배치 */
				display: -webkit-box;
			}
			section#news #wrap article table{
				border-top: 1px solid silver;
				padding-top: 30px
				
			}
			section#news #wrap article table td:first-child {
				width: 400px;
				margin-top: 10px
			}
			footer{
				margin-top: 100px;
				border-top: 1px solid #e0e0e0;
				font-weight: 200;
				position: relative;
			}
			footer #foot_guide{
				width: 1200px;
				margin: 0 auto;
				padding: 50px 0 130px
			}
			footer #foot_guide ul li{
				float: left;
				margin-left: 20px;
				padding-bottom: 30px;
				font-size: 15px;
			}
			
			footer #foot_guide ul li:nth-of-type(4) a{
				color: red;
			}
			footer #foot_guide ul li:first-child{
				margin-left: 0;
			}
			footer #foot_guide hr{
				clear: both;
				border:none;
				border-top: 1px solid #e0e0e0;
			}
			footer #foot_guide address{
				float: left;
				font-style: normal;
				width: 500px;
				margin-top: 30px;
				font-size: 15px
			}
			footer #foot_guide ol li{
				float: left;
			}
			footer #foot_guide ol li::before{
				content: "|";
				margin-left: 10px;
				margin-right: 10px;
				color: silver;
			}
			footer #foot_guide ol li:first-child::before, footer #foot_guide ol li:nth-of-type(3)::before, footer #foot_guide ol li:last-of-type::before{
				content: none;
				margin: 0;
			}
			footer #foot_guide address p{
				font-size: 12px;
				color: #777;
				margin-top: 90px;
				clear: both;
			}
			footer #foot_guide #family_site{
				float: right;
				/* width: 210px;
				height: 45px; */
				border: 1px solid silver;
				text-align: center;
			}
			footer #foot_guide #family_site select{
				border: none;
				width: 210px;
				height: 45px;
				font-size: 14px;
				padding-left: 20px
			}
			footer select {
				-webkit-appearance: none; 
				background: no-repeat 95% 50% url("http://adventure.lotteworld.com/common_mus/images/icon/sel_icon.png");
			}
			footer #btn_top{
				position: absolute;
				right: 100px;
				top:-50px;
				z-index:200;
				width: 50px;
				height: 50px;
				/* border: 1px solid red; */
				display: none;
				background-color: transparent;
				border: none;
			}
		</style>
		<script>
			$(function() {
				//마우스오버 테두리 효과				
				$("section#gallery dl").eq(0).hover(function() {
					$("section#gallery").addClass("veiw01");
				}, function() {
					$("section#gallery").removeClass("veiw01");
				});
				$("section#gallery dl").eq(1).hover(function() {
					$("section#gallery").addClass("veiw02");
				}, function() {
					$("section#gallery").removeClass("veiw02");
				}); //마우스 오버 효과를 줄때 이미지를 주면 이미지 로드 시킬때 로딩하면서 튀는 형상이 나타날 수 있어서 이 현상을 없애려면 dom에 숨겨놓는 방법이 있거나 아니면 처음에 불러올때 
				
				
				$("header nav > ul > li").mouseenter(function() {
					$(".submenu").slideDown(300);
					$("#lnb_box").slideDown(300);
				});
				$("#visual").mouseenter(function() {
					$(".submenu").slideUp(300);
					$("#lnb_box").hide();
				});
				
				$("#visual button#btn_left").click(function() {
					$("#visual #slider:not(:animated)").animate({marginLeft:0});
					/* $("#visual ol li").css({backgroundColor: "red"});
					$("#visual ol li").eq(0).css({backgroundColor: "yellow"}); */
					$("#visual ol li").removeClass("color_yellow").eq(0).addClass("color_yellow");
				});  /* not(:animated) 움직이 않을 경우에만 움직이게 함.
				$("selector:not(:animated)") -> 선택자의 버퍼링이 쌓여 있으면 버퍼링을 다 없애고 ~ 해라 
				.stop() 움직이고 있는걸 중간에 멈춤 stop은 버퍼링을 없애지 않음  */
 				$("#visual button#btn_Right").click(function() {
					$("#visual #slider:not(:animated)").animate({marginLeft:"-100%"});
					/* $("#visual ol li").css({backgroundColor: "red"});
					$("#visual ol li").eq(1).css({backgroundColor: "yellow"}); */
					$("#visual ol li").removeClass("color_yellow").eq(1).addClass("color_yellow");
				});
				
				$("header nav ul#main_menu > li").mouseenter(function() {
					$("header nav ul").removeClass("view");
					var ul_index="header nav ul#submenu0"+($(this).index()+1);
					$(ul_index).addClass("view");
				});
				
				$(window).scroll(function() {
					var scr_position=$(this).scrollTop();
					if (scr_position >= 2600) {
						$("#btn_top:not(:animated)").fadeIn();
					}else {
						$("#btn_top:not(:animated)").fadeOut();
					}
				});
				
				$("#btn_top").click(function() {
					$("html, body").animate({scrollTop:0});
				});
				
				
				
			});
		</script>
	</head>
	<body>
	
		<!-- Main menu->GNB    Sub menu->LNB -->
		
		
		<!-- 상단 ux 시작 -->
		<header>
			<nav>
				<h1><img src="http://adventure.lotteworld.com/common_mus/images/logo.png" alt="민속박물관로고"></h1>
				<ol>
					<li><a href="#">롯데월드 어드벤처</a></li>
					<li><a href="#">아이스링크</a></li>
					<li><a href="#">Login</a></li>
				</ol>
				<ul id="main_menu">
					<li>
						<a href="#">이용안내</a>
						<ul class="submenu" id="submenu01">
							<li><a href="#">박물관소개</a></li>
							<li><a href="#">관람안내</a></li>
							<li><a href="#">대관안내</a></li>
							<li><a href="#">오시는길</a></li>
							<li><a href="#">부대시설</a></li>
						</ul>
					</li>
					<li>
						<a href="#">전시</a>
						<ul class="submenu" id="submenu02">
							<li><a href="#">상설전시</a></li>
							<li><a href="#">특별전시</a></li>
						</ul>
					</li>
					<li>
						<a href="#">교육프로그램</a>
						<ul class="submenu" id="submenu03">
							<li><a href="#">전통문화/역사교육</a></li>
							<li><a href="#">전통공예체험</a></li>
						</ul>
					</li>
					<li>
						<a href="#">소통·소식</a>
						<ul class="submenu" id="submenu04">
							<li><a href="#">새소식</a></li>
							<li><a href="#">교육후기</a></li>
							<li><a href="#">포토갤러리</a></li>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">이용문의</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</header>
		<div id="lnb_box"> 
			<div id="lnb_open">
				<dl>
					<dt><img src="http://adventure.lotteworld.com/common_mus/images/icon/gnb_time_icon.png"></dt>
					<dt>운영시간</dt>
					<dt>평일</dt>
					<dd>09:30 - 20:00</dd>
					<dt>주말/공휴일</dt>
					<dd>09:30 - 21:00</dd>
				</dl>
			</div>
		</div>
		<!-- 상단 ux 끝 -->
		
		<!-- 상단 slider 부분 시작-->
		<div id="visual">
			<div id="slider">
				<div id="slider01" class="slideItem"></div>
				<div id="slider02" class="slideItem"></div>
			</div>
			
			<ol>
				<li></li>
				<li></li>
			</ol>
			
			<button id="btn_left" onfocus="this.blur();"><img src="http://adventure.lotteworld.com/common_mus/images/btn/imgRoll_prev.png"></button>
			<button id="btn_Right" onfocus="this.blur();"><img src="http://adventure.lotteworld.com/common_mus/images/btn/imgRoll_next.png"></button>
		</div> 
		<!-- 상단 slider 부분 끝-->
		<dl id="openingtime">
			<dt>운영시간</dt>
			<dd><span>평일</span> 09:30 - 20:00</dd>
			<dd><span>주말/공휴일</span> 09:30 - 21:00</dd>
		</dl>
		
		<!-- section 시작-->
		<section id="gallery">
			<h2>시대별 문화를 즐길 수 있는 전시</h2>
			<h3>현재 진행 중인 전시를 알아보세요.</h3>
			<div>
				<dl>
					<dd><img alt="불국사 섯가상" src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon1_img1.jpg"></dd>
					<dt>상설전시</dt>
					<span></span>
				</dl>
				<dl>
					<dd><img alt="국보 범종" src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon1_img2.jpg"></dd>
					<dt>특별전시</dt>
					<span></span>
				</dl>
			</div>
		</section>
		<!-- section 끝-->
		
		<section id="program">
			<h2>민속박물관의 즐겁고 다양한 프로그램</h2>
			<h3>다양한 프로그램을 확인해보세요.</h3>
			<div> <!-- 좌우 중앙 div -->
				<dl>
					<dd><img src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon2_img1.jpg"></dd>
					<dt>전통문화/역사교육</dt>
				</dl>
				<dl>
					<dd><img src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon2_img2.jpg"></dd>
					<dt>전통문화/역사교육</dt>
				</dl>
				<dl>
					<dd><img src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon2_img3.jpg"></dd>
					<dt>전통문화/역사교육</dt>
				</dl>
			</div>
		</section>
		
		<section id="news">
			<h2>민속박물관 소식을 한눈에!</h2>
			<h3>오늘의 민속박물관 소식을 만나보세요.</h3>
			<div id="wrap">
				<article>
					<h4>민속박물관 소식</h4>
					<button>더보기 </button>
					<dl>
						<dt>김홍도 단원풍속도첩 전시</dt>
						<dd>롯데월드 민속박물관에서는 새롭게 김홍도의 풍속화를 전시하고 있습니다. 풍속화 속 사람들이 움직이는 모습도 함께 관람하실 수 있어요. 예쁜 색을 입힐 수 있는 체험 공간이 함께 준비되어 있으니 롯데월드 민속박물관에 오셔서 즐거운 추억 쌓으시길 바랍니다.</dd>
						<dd>2019.01.29</dd>
					</dl>
					
					<table>
						<tr>
							<td>2월 문화공연 안내 '소리 + 공감'</td>
							<td>2019.01.29</td>
						</tr>
						<tr>
							<td>개관 30주년 기념 상설전시 개편</td>
							<td>2019.01.14</td>
						</tr>
						<tr>
							<td>송파구 박물관 나들이 20th</td>
							<td>2018.12.19</td>
						</tr>
					</table>
				</article>
				
				<div id="quik_menu01" class="qmenu">이용 문의</div>				
				<div id="quik_menu02" class="qmenu">오시는 길</div>				
				<div id="quik_menu03" class="qmenu">
					<p>우리 고유의 옛멋과<br>품격을 선도합니다</p>
					<a>전통혼례 바로가기 →</a>
				</div>				
				
			</div>
		</section>
	
		<footer>
			<div id="foot_guide">
				<ul>
					<li><a href="#">롯데월드 소개</a></li>
					<li><a href="#">기업 제휴 및 입점</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">사이트맵</a></li>
				</ul>
				<hr/>
				<address>
					<ol>
						<li>서울특별시 송파구 올림픽로 240 호텔롯데</li>
						<li>롯데월드대표자 : 박동기</li>
						<li>사업자등록번호 : 219-85-00014</li>
						<li>통신판매업신고번호 : 송파 제5513호</li>
						<li>전화 : 1661-2000</li>
					</ol>
					<p>COPYRIGHT 2018 LOTTEWORLD. ALL RIGHTS RESERVED.</p>
				</address>
				<!-- <div id="family_site2">
					family Site<span></span>
					<div>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
					</div>
				</div> -->
 				<div id="family_site">
					<select>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
						<option>롯데그룹</option>
						<option>L.POINT</option>
						<option>롯데채용센터</option>
						<option>롯데제과</option>
						<option>빼빼로</option>
						<option>롯데칠성음료</option>
					</select>
				</div>
			</div>
			<button id="btn_top" onfocus="this.blur();">
				<!-- onfocus="this.blur();" 버튼 뒤에 남는 파란색을 없애기 위한 함수 -->
				<img alt="Going Up" src="http://adventure.lotteworld.com/common_mus/images/btn/top_btn.png">
			</button>
		</footer>
		
		
		<!-- 
		<div style="display: none;">
			<img alt="" src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon1Bg_t2_img.jpg">
			<img alt="" src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon1Bg_t1_img.jpg">
			<img alt="" src="http://adventure.lotteworld.com/common_mus/images/icon/mainCon1_bg.jpg">
		</div> -->
	
	</body>
</html>

