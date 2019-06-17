<!DOCTYPE>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>winni's</title>
		
		<style>
			body {
				background: #ade3e3;
				margin: 0;
				overflow: hidden;
			}
			.sky {
				position: absolute;
				background: #96dada;
				width: 100%;
				height: 200px;
				z-index: -2;
			}
			.deep_sky {
				position: absolute;
				background: #78c7c7;
				width: 100%;
				height: 100px;
			}
			.deep_sky:before {
				content: "";
				position: absolute;
				background: #5fb4b4;
				width: 100%;
				height: 30px;
			}
			.ground {
				position: absolute;
				background: #a2e6cf;
				width: 100%;
				height: 180px;
				bottom: 0;
			}
			.ice {
				position: absolute;
				background: #c7ede0;
				width: 100%;
				height: 40px;
			}
			.glare {
				position: absolute;
				background: #ffffff;
				width: 95%;
				height: 10px;
				top: 0;
			}
			.glare:before {
				content: "";
				position: absolute;
				background: #c7ede0;
				width: 10px;
				height: 10px;
				bottom: 0;
				left: 40%;
				box-shadow: -10px 0px 0px #e3f7f0, 5px 0px 0px #c7ede0, 10px 0px 0px #c7ede0, 15px 0px 0px #c7ede0, 20px 0px 0px #c7ede0, 25px 0px 0px #c7ede0, 30px 0px 0px #c7ede0, 35px 0px 0px #c7ede0, 40px 0px 0px #c7ede0, -140px 10px 0px #e3f7f0, -150px 10px 0px #ffffff, -155px 10px 0px #ffffff, -160px 10px 0px #ffffff, -165px 10px 0px #ffffff, -170px 10px 0px #ffffff, -175px 10px 0px #ffffff, -180px 10px 0px #ffffff, -185px 10px 0px #ffffff, -190px 10px 0px #ffffff, -195px 10px 0px #ffffff, -200px 10px 0px #ffffff, -180px 20px 0px #e3f7f0, -280px 10px 0px #e3f7f0, -290px 10px 0px #ffffff, -295px 10px 0px #ffffff, -300px 10px 0px #ffffff, -305px 10px 0px #ffffff, -310px 10px 0px #ffffff, -315px 10px 0px #ffffff, -320px 10px 0px #ffffff, -325px 10px 0px #ffffff, -330px 10px 0px #ffffff, -335px 10px 0px #ffffff, -340px 10px 0px #ffffff, -345px 10px 0px #ffffff, -350px 10px 0px #ffffff;
			}
			.glare:after {
				content: "";
				position: absolute;
				background: #c7ede0;
				width: 10px;
				height: 10px;
				bottom: 0;
				right: 0;
				box-shadow: -10px 0px 0px #e3f7f0, -200px 0px 0px #c7ede0, -205px 0px 0px #c7ede0, -210px 0px 0px #c7ede0, -215px 0px 0px #c7ede0, -220px 0px 0px #c7ede0, -225px 0px 0px #c7ede0, -230px 0px 0px #c7ede0, -240px 0px 0px #e3f7f0, -250px 0px 0px #c7ede0, -255px 0px 0px #c7ede0, -260px 0px 0px #c7ede0, -270px 0px 0px #e3f7f0, -120px 10px 0px #e3f7f0, -130px 10px 0px #ffffff, -135px 10px 0px #ffffff, -140px 10px 0px #ffffff, -145px 10px 0px #ffffff, -150px 10px 0px #ffffff, -350px 10px 0px #e3f7f0, -360px 10px 0px #ffffff, -365px 10px 0px #ffffff, -370px 10px 0px #ffffff, -375px 10px 0px #ffffff, -380px 10px 0px #ffffff, -385px 10px 0px #ffffff, -390px 10px 0px #ffffff, -395px 10px 0px #ffffff, -400px 10px 0px #ffffff, -405px 10px 0px #ffffff, -410px 10px 0px #ffffff
			}
			.ice_shadow {
				position: absolute;
				background: #84bba8;
				width: 100%;
				height: 10px;
				bottom: -10px;
			}
			.ice_shadow:before {
				content: "";
				position: absolute;
				background: #a2d1c1;
				width: 10px;
				height: 10px;
				bottom: 0;
				left: 20%;
				box-shadow: 10px 0px 0px #a3e2cd, 95px -10px 0px #84bba8, 100px -10px 0px #84bba8, 105px -10px 0px #84bba8, 110px -10px 0px #84bba8, 115px -10px 0px #84bba8, 120px -10px 0px #84bba8, 125px -10px 0px #84bba8, 130px -10px 0px #84bba8, 135px -10px 0px #a2d1c1, 140px -10px 0px #a2d1c1, 400px 0px 0px #a2d1c1, 410px 0px 0px #a3e2cd;
			}
			.ice_shadow:after {
				content: "";
				position: absolute;
				background: #84bba8;
				width: 20px;
				height: 10px;
				bottom: 10px;
				right: 10%;
				box-shadow: 10px 0px 0px #a2d1c1, -20px 0px 0px #84bba8, -140px 0px 0px #84bba8, -160px 0px 0px #84bba8, -170px 0px 0px #84bba8, -180px 0px 0px #84bba8, -190px 0px 0px #84bba8;
			}
			.g1 {
				position: absolute;
				background: #72ccad;
				width: 100%;
				height: 20px;
				bottom: 0;
			}
			.g2 {
				position: absolute;
				background: #72ccad;
				width: 50px;
				height: 140px;
				right: -30px;
				bottom: 0;
				box-shadow: -10px 50px 0px #72ccad, -20px 70px 0px #72ccad, -30px 80px 0px #72ccad, -40px 90px 0px #72ccad, -60px 100px 0px #72ccad, -110px 110px 0px #72ccad;
			}
			.g3 {
				position: absolute;
				background: #c6feeb;
				width: 180px;
				height: 20px;
				top: 40px;
				box-shadow: -80px 10px 0px #c6feeb, -130px 20px 0px #c6feeb, -150px 30px 0px #c6feeb, -160px 40px 0px #c6feeb, -170px 50px 0px #c6feeb;
			}
			.mountain_a {
				position: absolute;
				background: #eeeeee;
				width: 780px;
				height: 660px;
				border-radius: 50%;
				bottom: -240px;
				left: 5%;
			}
			.mountain_b {
				position: absolute;
				background: #e5e5e5;
				width: 620px;
				height: 460px;
				border-radius: 50%;
				left: 25%;
				bottom: -80px;
			}
			.house {
				position: absolute;
				bottom: 220px;
			}
			.house.right {
				right: 10%;
			}
			.house.left {
				left: 12%;
			}
			.wall {
				position: absolute;
				background: #e2f4f4;
				width: 80px;
				height: 40px;
			}
			.wall:before {
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
			.roof {
				position: absolute;
				background: #ffffff;
				width: 100px;
				height: 10px;
				border-radius: 40px;
			}
			.roof.right {
				left: 14px;
				bottom: 30px;
				transform: rotate(58deg);
			}
			.roof.left {
				left: -34px;
				bottom: 30px;
				transform: rotate(-58deg);
			}
			.door {
				position: absolute;
				background: #9acccb;
				width: 20px;
				height: 30px;
				bottom: -40px;
				left: 16px;
			}
			.fence {
				position: absolute;
				background: #ffffff;
				width: 3px;
				height: 30px;
				bottom: -45px;
				left: -20px;
				border-radius: 3px;
				box-shadow: -10px 0px 0px #ffffff, -20px 0px 0px #ffffff, -30px 0px 0px #ffffff, -40px 0px 0px #ffffff, -50px 0px 0px #ffffff, -60px 0px 0px #ffffff, -70px 0px 0px #ffffff;
			}
			.fence:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 72px;
				height: 3px;
				bottom: 22px;
				right: 0;
				box-shadow: 0px 14px 0px #ffffff;
			}
			.tree_back {
				position: absolute;
				background: #348e8d;
				width: 10px;
				height: 15px;
				bottom: 180px;
				right: 30%;
			}
			.tree_back:before {
				content: "";
				position: absolute;
				background: #e2f4f4;
				width: 30px;
				height: 60px;
				border-radius: 50%;
				bottom: 15px;
				right: -10px;
			}
			.tree {
				position: absolute;
				background: #348e8d;
				width: 10px;
				height: 40px;
				bottom: 180px;
				right: 28%;
			}
			.tree:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 40px;
				height: 80px;
				border-radius: 50%;
				bottom: 25px;
				left: -15px;
			}
			.postbox_a {
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
			.postbox_a:after {
				content: "";
				position: absolute;
				background: #76ecea;
				width: 5px;
				height: 20px;
				bottom: -20px;
				left: 8px;
			}
			.hole {
				position: absolute;
				background: #ffffff;
				width: 6px;
				height: 2px;
				top: 5px;
				left: 2px;
				box-shadow: 10px 0px 0px rgba(100%, 100%, 100%);
			}
			.postbox_b {
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
			.postbox_b:after {
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
			.cloud {
				position: relative;
				background: #ffffff;
				width: 100px;
				height: 40px;
				top: 50px;
				border-radius: 50px;
				z-index: -1;
			}
			.cloud:after {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 50px;
				height: 50px;
				border-radius: 50%;
				top: -20px;
				left: 10px;
			}
			.cloud:before {
				content: "";
				position: absolute;
				background: #ffffff;
				width: 40px;
				height: 40px;
				border-radius: 50%;
				top: -15px;
				right: 20px;
			}
			.c1 {
				top: 60px;
				opacity: 0.5;
				animation-name: moving;
				animation-duration: 35s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
			}
			.c2 {
				top: 80px;
				opacity: 0.8;
				animation-name: moving;
				animation-duration: 25s;
				animation-iteration-count: infinite;
				animation-timing-function: ease-in-out;
			}
			.c3 {
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
			.windmill {
				position: absolute;
				left: 50%;
				bottom: 180px;
			}
			.tower {
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
			.t1 {
				position: absolute;
				background: #2cb7b5;
				width: 90px;
				height: 10px;
				bottom: 40px;
				left: 5px;
			}
			.t1:before {
				content: "";
				position: absolute;
				background: #2cb7b5;
				width: 20px;
				height: 20px;
				bottom: -40px;
				right: 35px;
				box-shadow: 0px -54px 0px #2cb7b5;
			}
			.t2 {
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
			.t2:after {
				content: "";
				position: absolute;
				background: #2cb7b5;
				width: 70px;
				height: 10px;
				border-radius: 10px;
				bottom: -50px;
				left: -35px;
			}
			.blade {
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
			.windblade {
				position: absolute;
				background: #ffffff;
				width: 4px;
				height: 76px;
				bottom: 106px;
				left: 46px;
			}
			.windblade:before {
				content: "";
				position: absolute;
				background: #e2f4f4;
				opacity: 0.8;
				width: 16px;
				height: 60px;
			}
			.windblade2 {
				transform: rotate(90deg);
				bottom: 65px;
				left: 87px;
			}
			.windblade3 {
				transform: rotate(180deg);
				bottom: 25px;
			}
			.windblade4 {
				transform: rotate(270deg);
				bottom: 65px;
				left: 5px;
			}
			.windblade4:after {
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
			.allsnows {
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
			.allsnows .snow1 {
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
			.allsnows .snow2 {
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
			.allsnows .snow3 {
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
			.allsnows .snow4 {
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
			.allsnows .snow5 {
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
			.allsnows .snow6 {
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
			.allsnows .snow7 {
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
			.allsnows .snow8 {
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
			.allsnows .snow9 {
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
			.allsnows .snow10 {
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
			.allsnows .snow11 {
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
			.allsnows .snow12 {
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
			.allsnows .snow13 {
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
			.allsnows .snow14 {
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
			.allsnows .snow15 {
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
			.allsnows .snow16 {
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
			.allsnows .snow17 {
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
			.allsnows .snow18 {
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
			.allsnows .snow19 {
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
			.allsnows .snow20 {
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
</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
			$(function() {
			});
		</script>
	</head>
	<body>
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
	</body>
</html>