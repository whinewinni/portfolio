<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="utf-8">   
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
      <title>Winni's</title>
      
      <link rel="stylesheet" href="css/reset.css">
      <!-- icon -->
      <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!-- font -->
      <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
      
      
      <style>
         *{
            font-family: 'Noto Sans KR', sans-serif;
         }
         @import url('//fonts.googleapis.com/earlyaccess/notosanskr.css'); 
         .notosanskr *{ font-family: 'Noto Sans KR', sans-serif; }
         
         body{
            width:100vw;
            overflow-x:hidden;
            border: 1px solid green;
         }
         a:link, a:active, a:hover, a:visited{
            text-decoration: none;
            color: #333;
         }
         header #header_banner{
            height: 160px;
            background-image: url("https://www.daelimcare.com/images/img/nanocare_bnr_pc.jpg");
            background-repeat: no-repeat;
            background-position: center;
            display: block;
            cursor: default;
            }
         header #header_banner button:first-child{
            background-color: transparent;
            border: none;
            position: absolute;
            top:13px;      
            right:19%;
            cursor: pointer;
         }
         header #header_top_menu button:first-child {
            position: absolute;
            left: 50%;
             top: -30px ;
            background-color: transparent;
            border: none;
            margin-left: -15px;
            /* display: none; */
         }
         header #header_top_menu {
            height: 39px;
            margin: 0 auto;
            width: 75%;
            line-height: 39px;
            /* border: 1px solid yellow; */
         }
         header #header_top_menu > ul:first-child{
            color: #a3a3a3;
            float: left;
            font-size: 13px
         }
         header #header_top_menu > ul li{
            float: left;
            width: 118px;
            text-align: center;
            font-size: 13px;
         }
         /* header #header_top_menu ul:first-child li:first-child{ */
         header #header_top_menu > ul li:first-child{
            border-left: 1px solid #e8e8e8;
            border-right: 1px solid #e8e8e8;
            color: black;
            font-weight: bold;
         }
         header #header_top_menu > ul li {
            color: #a3a3a3;
            background-color:#f3f2f2db
         }
         header #header_top_menu > ul li:first-child{
            background-color: white;
         }
         header #header_top_menu #header_top_menu_right{
            float: right;
            font-size: 12px;
            color: #666;
            height: 38px
         }
         header #header_top_menu #header_top_menu_right > ol{
            float: left;
            /* border: 1px solid blue; */
            margin-right: 30px
         }
         header #header_top_menu #header_top_menu_right > ol li{
            float: left;
            margin-left: 15px;
         }
         header #header_top_menu #header_top_menu_right > ol li i{
            margin-right: 5px
         }
         header #header_top_menu #header_top_menu_right > ul{
            float: left;
            /* border: 1px solid red; */
            line-height: 39px
         } 
         header #header_top_menu #header_top_menu_right > ul li{
            float: left;
         } 
         header #header_top_menu #header_top_menu_right > ul li i.material-icons{
            margin-left: 10px;
            margin-right: 10px;
            font-size:19px;
            line-height:41px;
         }
         header nav#header_bottom_menu button#burger_btn{
            display: none;
         }
         header hr{
            margin:0;
            padding-top:0;
            border-top: 0.5px solid #e8e8e8;
            width: 100%;
         }
         header #header_bottom_menu_wrap{
            width: 100%;
            background-color: white;
            height:94px;
            z-index: 10;
         }
         header #header_bottom_menu_wrap.stuck_menu{
            position: fixed;
            top:0;
            box-shadow:0px 4px 10px rgba(0, 0, 0, 0.2);
         }
         header nav#header_bottom_menu{
            width: 75%;
            margin: 0 auto;
            /* overflow: hidden; */
            height:94px;
         }
         
         header nav#header_bottom_menu h1{
            float: left;
            
         }
         header nav#header_bottom_menu > ol{
            float: right;
            height: 94px;
            padding-left: 10px
         }
         header nav#header_bottom_menu > ol > li{
            float: left;
            font-size: 18px;
            font-weight: 600;
            line-height: 94px;
            color: #222;
            text-align: center;
            width:8.5rem;
            position: relative;
         }
         
         header #sub_menu{
            width: 100%;
            background-color: #e8e6e6;
             display: none;
             position: absolute;
             z-index: 1
         }
		header #sub_menu #sub_menu_banner{
			width:75%;
			margin: 0 auto;
			padding: 20px 0;
		}
		/* @media all and (max-width:1830px){
			header #sub_menu #sub_menu_banner img{
				width:500px
			}
		} */
         header nav#header_bottom_menu ol li ul{
            display: none;
            margin-top: 10px;
            position: absolute;
            z-index: 2;
            text-align: center;
         }
         header nav#header_bottom_menu ol li ul li{
            font-size:0.9rem;
            color: #888;
            line-height: 34px;
            font-weight: 100;
            width:8.5rem;
         }
         header nav#header_bottom_menu ol li ul li:hover{
            color: #547bbd
         }
         
         #main_visual{
            width: 75%;
            margin: 0 auto;
            position: relative; 
         }
         #main_visual #visual_section_text {
            writing-mode: vertical-lr; 
            font-weight:lighter;
            color: #444;
            margin-top:4%;
            /* margin-left:5%; */
            height: 620px;
         }
         #main_visual #visual_section_text h3{
            font-size: 30px;
            margin-right:50px;
            margin-top:2%;
            margin-left:5%;
            opacity: 0;
            height: 620px;
         }
         #main_visual #visual_section_text h2{
            font-size: 90px;
            margin-top:2%;
            margin-left:5%;
            opacity: 0;
            height: 620px;
         }
         #main_visual #visual_section_text h3 em{
            writing-mode: rl-tb;
         }
         #main_visual #visual_section_img{
            position: absolute;
            right:10%;
            width:65%;
            top:20%;
         }
         #main_visual #visual_section_img span img{
            left:46%;
            top:-30%;
            position: absolute;
            opacity: 0
         }
         #banner{
            margin-top:20%;
            text-align: center;
            overflow: hidden;
         }
         #banner #left_banner, #banner #right_banner{
            float: left;
            border: 1px solid  red;
            width: 50%;
            overflow: hidden;
         }
         #banner #left_banner h4, #banner #right_banner h4{
            font-size: 34px;
            font-weight:800;
            margin-top: -10%
         }
         #banner #left_banner span, #banner #right_banner span{
            display: block;
            font-size: 16px;
            margin-bottom: 40px;
         }
         #banner #left_banner span br, #banner #right_banner span br{
            display: none;
         }
         #banner #left_banner img, #banner #right_banner img{
            margin-top:30%
         }
         #inner{
            border: 1px solid purple;
            /* width: 80%; */
            margin: 0 auto;
            padding-top: 150px;
            /* background-color: pink; */
            position: relative;
            height:1000px;
         }
         #inner::after{
            content: "";
            display: block;
            clear: both;
         }
         #inner #inner_left{
            border: 1px solid blue;
            padding-left:9%;
            left: 0 ;
            height:65%;
            padding-left:15%;
            padding-top: 5%;
            background-color: #f5f5f5;
         }
         #inner #inner_left p{
            padding-top:10%;
            margin-bottom: 15px;
            /* letter-spacing: -3px; */
            font-size: 20px;
            clear: both;
            font-weight: 300
         }
         #inner #inner_left h5{
            font-weight:lighter;
            letter-spacing: -2px;
            font-weight: 300
         } 
         #inner #inner_right{
            border: 1px solid yellow;
            /* position: absolute;  */
            right: 0;
            margin-top: 5%
         }
         #inner #inner_right img{
            margin-left: 100%
         }
         #inner #inner_left, #inner #inner_right{
            float: left;
            width: 50%
         }
         #inner #inner_left ol, #inner #inner_left p{
            margin-left: -100%
         }
         #inner #inner_left h5{
            margin-left: -150%
         }
         #inner #inner_left ol li button{
            border: none;
            background-color: transparent;
            float: left;
            font-size: 20px;
            border: 1px solid red;
            vertical-align: top;
            padding: 1px 0px 10px;
            font-weight: bold;
            color: #bababa
         }
         #inner #inner_left ol li:first-child button{
            margin-right: 55px ;
            border-bottom: 3px solid #547bbd;
            color: #547bbd
         }
         #inner #inner_left ol li button img{
            margin-right: 10px;
            vertical-align: bottom;
         }
         #inner #inner_left h5{
            font-size: 42px;
         }
         #inner #inner_center{
            border:1.5px solid black;
            background-color: white;
              width: 760px;
             position:absolute;
             /* padding:5%; */
             transform:translate(38%, 90%);
             padding-top: 3%;
             /* padding-bottom: 3%; */
             padding-left: 3%;
             opacity: 0
         }
         #inner #inner_center > span{
             color: #bcbcbc;
             font-size: 24px;
             margin-bottom: 20px;
             font-weight: bold;
         }
         #inner #inner_center h3{
            font-size: 60px;
            margin: 10px 10px 50px;
         }
         #inner #inner_center ul li{
            float: left;
            margin-right:45px
         }
         #inner #inner_center ul li img{
            vertical-align: top;
            margin-right:5px
         }
         #inner #inner_center ul li em{
            display: inline-block;
            line-height: 30px;
            vertical-align: middle;
         }
         
         
         
         #info #info_text a,
         #inner #inner_center a{
            color: #bbb;
            font-size: 18px;
            display: block;
            clear: both;
            padding-top: 10%;
            padding-bottom: 10%;
            position: relative;
            width: 130px
         }
         #info #info_text a span,
         #inner #inner_center a span{
            font-size: 14px
         }
         #info #info_text a span::first-child{
            
         }
         #info #info_text a span:last-child::before,
         #inner #inner_center a span:last-child::before{
            content: "";
            display: block;
            background-color:#bbb;
            width: 130px;
            height:1px;
            position: absolute;
            top: 10px;
            left: -127px
         }
         #info #info_text a span:last-child::before{
            /* top:30px */
         }
         #info #info_text a span:last-child,
         #inner #inner_center a span:last-child{
            display: block;
            position: absolute;   
            top: 110px;
            left:127px;
         }
         
         #blank{
         	display: none;
         }
         
         #main_banner{
            background: no-repeat center 0 url("https://www.daelimcare.com/images/img/main_onecare_bnr_pc.jpg");
            height: 300px;
            width: 100%;
            
            position: relative;
            margin-top: 200px;
            margin-bottom: 150px
         }
         #main_banner a{
            position: absolute;
            width: 250px;
            height: 60px;
            border: 1px solid red;
            left: 50%;
            margin-left: -125px;
            top: 191px;
         }
         #info{
            width: 75%;
            margin: 0 auto;
            color: #666;
            position: relative;
         }
         #info #info_text{
            border: 2px solid black;
            padding: 100px 0 60px 100px;
            width: 80%
         }
         #info #info_text > span{
            font-size: 24px;
            margin-bottom: 20px;
            margin-left: -100%;
         }
         #info #info_text h2{
            font-size: 54px;
            margin-left: -100%;
         }
         #info #info_text p{
            font-size: 18px;
            margin-top:35px;
            margin-left: -100%;
         }
         #info #info_text a{
            padding-top:70px;
            display: block;
            margin-left: -100%;
            padding-bottom:3%;
         }
         #info #info_text a span:last-child {
            padding-top:20px;
            display: block;
         }
         #info #info_text a span img{
            position: absolute;
            top:6px
         }
         #info #info_pic{
            width: 50%;
            height:105%;
            background-color: #efefef;
            position: absolute;
            top: 15%;
            right:-5%;
         }
         #info #info_pic img{
            position: absolute;
            left:150%;
            top:10%
         }
         #care_info{
            margin-top:20%;
            border: 1px solid green;
            width: 100%;
            height: 740px;
            text-align: center;
            background-image: url("https://www.daelimcare.com/images/img/pg_link_bg.png");
            background-attachment:fixed;
            background-repeat:no-repeat;
            background-position:center center;
            color:#656464;
            padding-top:100px
         }
         #care_info h2{
            font-size: 54px;
            font-weight:100;
            margin-bottom: 82px;
            position: relative;
            top: -30px
         }
         #care_info ul{
             /* border: 1px solid blue; */
              /* width:85%; */
              height: 310px;
              margin:0 auto;
         }
         #care_info ul li{
             width: 27vw;
             /* border: 1px solid red; */
             display:inline-block;
             height: 310px;
             background-color:rgba(255, 255, 255, 0.5);
             position: relative;
         }
         #care_info ul li:hover{
            background-color:rgba(255, 255, 255, 0.8);
            box-shadow:13px 13px rgba(245, 245, 245, 1);
         }
         #care_info ul li:first-child{
            top:-60px;
            opacity: 0;
            /* width: 20% */
         }
         #care_info ul li:nth-of-type(2){
            margin-left: 30px;
            margin-right:30px;
            top:-40px;
            opacity: 0
         }
         #care_info ul li:last-child{
            top:-20px;
            opacity: 0
         }
         #care_info ul li > span:first-child {
            line-height:390px;
            margin-left: 10%;
            margin-right:2%
         }
         #care_info ul li > span{ 
            float: left; 
         }
         #care_info ul li span.care_text{
            text-align:left;
            padding-top:105px;
            transition:all 1s;
         }
         #care_info ul li span.care_text strong{
            font-size:30px;
            display: block;
            margin-bottom:8px
         }
         #care_info ul li span.care_text span{
            font-size: 18px;
         }
         #care_info ul li span.boder_animation span{
            background-color: green;
            position: absolute;
         }
         #care_info ul li span.care_text > a{
            display: inline-block;
            margin-top: 20px;
            color: #bbb;
         }
         #care_info ul li span.care_text a > span{
            font-size: 15px;
            position: relative;
            display:block; 
            width:100px;
            height:30px; 
            opacity: 0;
            transition:all 1s;
         }
         #care_info ul li span.care_text a span img{
            position: absolute;
            top:-17px;
            left: 30px;
            transition:all 1s;
         }
         #care_info ul li span.care_text a span:last-child::before{
            content: "";
            display:block;
            background-color: #bbb;
            width: 30px;
            height: 1px;
            position: absolute;
            top:-13px;
            opacity: 0;
            transition:all 1s;
         }
         #care_info ul li:hover span.care_text{
            transition:all 1s;
            padding-top: 80px
         }
         #care_info ul li:hover span.care_text a > span{
            transition:all 1s;
            opacity: 1
         }
         #care_info ul li:hover span.care_text a span img{
            transition:all 1s;
            left: 170px
         }
         #care_info ul li:hover span.care_text a span:last-child::before{
            width:170px;
            opacity: 1;
            transition:all 1s
         }
         /* ----------------------------------------------------------------------- */
         #care_info ul li span:last-child.boder_animation span:first-child{
            width: 0;
            height: 2px;
            top:0;
            left: 0;
         }
         #care_info ul li span.boder_animation span:nth-of-type(2){
            width: 2px;
            height: 0;
            top:0;
            right: 0;
         }
         #care_info ul li span.boder_animation span:nth-of-type(3){
            width:0;
            height: 2px;
            bottom: 0;
            right: 0;
         }
         #care_info ul li span.boder_animation span:last-child{
            width: 2px;
            height:0;
            left:0;
            bottom: 0;
         }
         /* ----------------------------------------------------------------------- */
         #care_info ul li:hover span:last-child.boder_animation span:first-child{
            background-color: purple;
            width: 100%;
            transition:all 0.1s;
         }
         #care_info ul li:hover span.boder_animation span:nth-of-type(2){
            height: 100%;
            transition:all 0.1s 0.04s;
            animation-delay:1s;
         }
         #care_info ul li:hover span.boder_animation span:nth-of-type(3){
            background-color: green;
            width: 100%;
            transition:all 0.1s 0.08s;
            animation-delay:2s;
         }
         #care_info ul li:hover span.boder_animation span:last-child{
            background-color: blue;
            height:100%;
            transition:all 0.1s 0.12s;
            animation-delay:3s;
         }
         /* ----------------------------------------------------------------------- */
         
         
         
         #service_product{
            margin-top:150px;
            text-align: center;
            color: #333;
            text-align: center;
         }
         #service_product h2{
            font-size: 54px;
            margin-bottom: 80px;
            margin-top: -30px
         }
         #service_product ul{
            /* border: 1px solid green; */
            height: 550px;
            margin: 0 auto 120px;
            display: inline-block;
         }
         #service_product ul li{
            width: 22%;
            height:100%;
            border: 1px solid yellow;
            float: left;
            margin: 0 auto;
            margin-left:40px;
            background-size: cover;
            background-repeat: no-repeat;
         }
         #service_product ul li:first-child {
            margin-left:0;
            margin-top: -30px
         }
         #service_product ul li:nth-of-type(2){
            margin-top: -30px
         }
         #service_product ul li:nth-of-type(3){
            margin-top: -30px
         }
         #service_product ul li:last-child{
            margin-top: -30px
         }
          
         #service_product ul li a{
            display: inline-block;
            width: 100%;
            height: 100%;
            padding-top:90%;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            overflow: hidden;
            transition:all 1s;
         }
         #service_product ul li:hover a{
            padding-top:80%;
            transition:all 1s;
         }
         #service_product ul li:hover a img{
            transform:scale(1.1);
            transition:all 1s;
            opacity: 0.7
         }
         #service_product ul li a img{
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
            width: 100%;
            height: 100%;
            transition:all 1s;
         }
         
         #service_product ul li a strong{
            font-size:2rem;
            display: block;
            margin-bottom:15px
         }
         #service_product ul li a strong br{
            display: none;
         }
         #service_product ul li a span{
            font-size:1rem;
            margin: 10px 0;
            font-weight: lighter;
         }
         #service_product ul li a button{
            background-color:#716f6f54;
            border: none;
            color: white;
            padding-top:7px;
            padding-bottom:7px;
            border-radius:20px;
            width: 170px;
            margin-top:20px
         }
         #guick_btn_wrap{
            background-color: #f5f5f5;
            height: 400px;
            padding-top:5%;
         }
         #guick_btn{
            width: 75%;
            border: 1px solid blue;
            margin: 60px auto 10%; 
         }
         #guick_btn h2{
            float: left;
            font-size:3rem;
            color: #333;
            font-weight:800;
            margin-top: -30px
         }
         #guick_btn ul{
            float: right;
            width: 67%; 
         }
         #guick_btn ul li{
            float: left;
            margin-right:5%;
            text-align: center;
         }
         #guick_btn ul li:first-child{margin-top: -30px}
         #guick_btn ul li:nth-of-type(2){margin-top: -30px}
         #guick_btn ul li:nth-of-type(3){margin-top: -30px}
         #guick_btn ul li:nth-of-type(4){margin-top: -30px}
         #guick_btn ul li:nth-of-type(5){margin-top: -30px}
         #guick_btn ul li:last-child{margin-top: -30px}
         
         #guick_btn ul li:hover a span{
            color:#547bbd
         }
         #guick_btn ul li:last-child{
            margin-right: 0
         }
         #guick_btn ul li img{
            margin-bottom: 25px
         }
         #guick_btn ul li span{
            display: block;
            font-size: 20px
         }
         
         footer{
            background-color: #222222;
         }
         footer #footer_top{
            color: #AAAAAA;
            background-color: #333333;
            width: 100%;
            overflow: hidden;
            font-size: 1rem;
            text-align: center;
         }
         footer #footer_top ul{
            width: 75%;
            display:block;
            margin: 0 auto;
            /* border: 1px solid red; */
            overflow: hidden;
            margin-top: 20px;
            margin-bottom: 20px;
         }
         footer #footer_top ul li{
            float: left;
            width: 14.2%;
            /* border: 1px solid yellow;  */
            /* border-left: 1px solid #AAAAAA; */
            position: relative;
         }
         footer #footer_top ul li::before {
            content: "";
            display: block;
            background-color: white;
            width: 1px;
            height: 13px;
            position: absolute;
            top: 30%;
            opacity: 0.2
         }
         
         footer #footer_top ul li:last-child::after{
            content: "";
            display: block;
            background-color: white;
            width: 1px;
            height: 13px;
            position: absolute;
            top: 30%;
            opacity: 0.2;
            right:0
         }
         footer #footer_bottm{
            width: 70%;
            margin: 0 auto;
            overflow: hidden;
            padding:75px 0
         }
         footer #footer_bottm h1{
            float: left;
            width: 25%;
         }
         footer #footer_bottm #footer_info{
            float: left;
            width: 75%;
         }
         footer #footer_bottm #footer_info #custom_center{
            margin-bottom:20px
         }
         footer #footer_bottm #footer_info #custom_center dl{
            display: inline-flex;
            line-height: 24px;
         }
         footer #footer_bottm #footer_info #custom_center dl dt{
            color: #cbcbcb;
            font-size: 16px;
         }
         footer #footer_bottm #footer_info #custom_center dl dd{
             color:    #83a5de;
            font-size: 24PX;
            margin: 0 15px;
         }
         footer #footer_bottm #footer_info #custom_center span{
            color: #aaa;
            font-size: 14px;
            font-weight: bold;
          }
         footer #footer_bottm #footer_info address{
            color: #888;
            font-size: 14px
         }
         footer #footer_bottm #footer_info address div{
            margin-bottom:8px
         }
         footer #footer_bottm #footer_info address span{
            margin-right: 15px; 
         }
         footer #footer_bottm #footer_info address button{
            background-color: transparent;
            color: #999;
            border: 1px solid #444;
            border-radius:5px;
            padding:5px 15px;
            font-size: 12px;
            font-weight: bold;
         	transition:all 0.5s;
         }
         footer #footer_bottm #footer_info address button:hover{
         	background-color:#999999b5;
            border: 1px solid #333333;
         	box-sizing: border-box;
         	color: #aaa;
         	transition:all 0.5s;
         }
         
         footer #footer_bottm #footer_info > span{
            color: #888;
            font-size:12px;
         }
         
         
         /* ///////////////////////////////////////////////// */
         @media all and ( max-width: 1600px ){
         	#care_info ul li span.care_text strong{
         		font-size: 29px
         	}
         	#care_info ul li span.care_text span{
         		font-size: 16px
         	}
         }
         @media all and ( max-width: 1570px ){
         	#care_info ul li > span:first-child{
         		margin-left:8%;
         	}
         }
         @media all and ( max-width: 1500px ){
         	#care_info ul li > span:first-child{
         		margin-left:5%
         	}
         	#care_info ul li span.care_text strong{
         		font-size: 27px
         	}
         }
         @media all and ( max-width: 1490px ){
         	#care_info ul li span.care_text strong{
         		font-size: 26px
         	}
         	#care_info ul li > span:first-child{
         		margin-left: 5%
         	}
         }
         @media all and ( max-width: 1350px ){
         	#care_info ul li span.care_text strong{
         		font-size: 24px
         	}
         	#care_info ul li > span:first-child{
         		margin-left:1%
         	}
         	#care_info ul li span.care_text{
         		margin-left: 20%
         	}
         	#care_info ul li > span:first-child img{
         		display: none;
         	}
         	
         }
         @media all and ( max-width: 1300px ){
         	#care_info ul li span.care_text span{
         		font-size: 15px
         	}
         	/* #care_info ul li span.care_text{
         		margin-left: 0
         	} */
         }
         @media all and ( max-width: 1240px ){
         	header nav#header_bottom_menu > ol > li{
         		width: 7.5rem
         	}
         	#care_info ul li > span:first-child{
         		margin-left: 0;
         		margin-right: 0
         	}
         }
         @media all and ( max-width: 1200px ){
         	header nav#header_bottom_menu > ol{
         		display: none;
         	}
         	#info #info_pic{
         		width: 35%;
         		right:-10%
         	}
         	#care_info ul li > span{
         		margin-left:8%;
         	}
         	#care_info ul li > span:first-child img{
         		display: block;
         		margin-left:85%;
         		margin-top: 15%
         	}
         	#care_info ul li span.care_text{
         		padding-top: 50px
         	}
         	#care_info ul li:hover span.care_text{
         		padding-top:50px
         	}
         }
         /* ///////////////////////////////////////////////// */
         
         /* -------------------------------------------------------------------------- */
         
         @media all and (max-width:1025px){
            header #header_top_menu{
               width: 100%
            }
            header #header_top_menu > ul{
               position: relative;
               left:45px;
            }
            header #header_top_menu #header_top_menu_right > ol{
               display: none;
            }
            header #header_top_menu #header_top_menu_right > ul{
               position: absolute;
               right: 30px;
            }
            header #header_top_menu #header_top_menu_right > ul li:first-child i{
               font-size: 17px;
               line-height:44px
            }
            header #header_top_menu #header_top_menu_right > ul li i.material-icons{
               font-size: 27px;
               line-height: 46px
            }
            header #header_top_menu #header_top_menu_right > ul li:last-child{
               font-size: 20px;
               line-height: 41px
            }
            header nav#header_bottom_menu{
               width: 100%
            }
            header nav#header_bottom_menu h1{
               position: relative;
               left: 45px
            }
            header nav#header_bottom_menu h1 img{
               width: 150px;
            }
            header nav#header_bottom_menu > ol{
               display: none;
            }
            header nav#header_bottom_menu button#burger_btn{
               display: block;
               background-color: transparent;
               border: none;
               width: 36px;
               height: 26px;
               float: right;
               margin-right: 33px;
               margin-top: 20px
            }
            header nav#header_bottom_menu button#burger_btn span{
               background-color: black;
               width: 36px;
               height: 4px;
               display: block;
               border-radius:4px;
               margin: 5px 0;
            }
            #main_visual{
               width: 100%
            }
            #main_visual #visual_section_text h3{
               margin-right: -25px;
               font-size: 26px
            }
            #main_visual #visual_section_text h2{
               font-size: 65px
            }
            #main_visual #visual_section_img{
               width: 70%;
               right: 0;
               left: 24%
            }
            #main_visual #visual_section_img > img{
               width: 100%
            }
            #main_visual #visual_section_img span img{
               left:30%;
               width: 80px
            }
            #banner{
               margin-top: 0
            }
            #banner #left_banner img,#banner #right_banner img{
               width:100%
            }
            #inner #inner_left{
               width: 90%;
               padding-left: 3%
            }
            #inner #inner_right{
               position: absolute;
               top:40%;
               z-index: 1;
               left: 40%
            }
            #inner #inner_right img{
               width: 900px
            }
            #inner #inner_center{
               transform:translate(3%, 63%);
               width: 90%;
               padding: 5%
               
            }
            #inner #inner_center ul li{
               float: none;
            }
            #inner #inner_center ul li:nth-of-type(2) {
               margin-top: 3%;
               margin-bottom: 3%
            }
            #inner #inner_center a{
               padding-top: 5%;
               padding-bottom: 5%
            }
            #inner #inner_center a span:last-child{
               top:80px
            }
            #main_banner{
               background-image: url("https://www.daelimcare.com/images/img/main_onecare_bnr_t.jpg");
            }
            #info{
               width: 95%
            }
            #info #info_pic{
               width: 40%;
               top:50%;
               height: 60%
            }
            #info #info_pic img{
               width: 100%;
               top: 20%
            }
            
            #care_info ul{
               width: auto;
            }
            #care_info ul li{
               width: 30%;
               height: 420px;
               padding: 7% 0 70px 30px
            }
            #care_info ul li:hover{
               background-color:rgba(255, 255, 255, 0.9);
               box-shadow:13px 13px rgba(245, 245, 245, 0)
            }
            #care_info ul li > span:first-child{
               line-height:0;
            }
            #care_info ul li span.care_text{
               padding-top: 0;
               margin-top: 8%
            }
            #care_info ul li:hover span.care_text{
               padding-top:0;
            }
            #care_info ul li span.care_text strong{
               padding-bottom: 5%;
               font-size: 25px;
            }
            #care_info ul li span.care_text span{
               line-height: 30px;
               font-size: 15px
            }
            #care_info ul li span.care_text > a{
               display: block;
               opacity: 1
            }
            #care_info ul li span.care_text a > span{
               opacity: 1
            }
            #care_info ul li span.care_text a span:last-child::before{
               opacity: 1
            }
            #care_info ul li:hover span.care_text a span:last-child::before{
               width:100px;
            }
            #care_info ul li:hover span.care_text a span img{
               left: 100px
            }
            
            #service_product{
               margin: 0 auto;
               text-align: center;
               padding-top: 5%
            }
            #service_product h2{
               margin-top: 30px
            }
            #service_product ul{
               width: 100%;
               height: 300px;
               display:inline-block;
            }
            #service_product ul li{
               margin-left:1%
            }
            #service_product ul li a{
               padding-top:80%;
            }
            #service_product ul li:hover a{
               padding-top:60%;
            }
            #service_product ul li a button{
               display: none;
            }
            #service_product ul li a strong{
               font-size: 1.8rem;
               font-weight: 100;
            }
            #service_product ul li a strong br{
               display: block;
            }
            #service_product ul li a span{
               display: none;
            }
            #care_info ul li span.care_text a span img{
            	top:11px;
            }
            #care_info ul li span.care_text a span:last-child::before{
            	top: 15px
            }
            #care_info ul li > span{
         		margin-left:0%;
         	}
         	#care_info ul li > span:first-child img{
         		margin-left:0%;
         	}
         	#care_info ul li span.care_text{
         		margin-left:0%;
         		/* padding-top: 105px */
         	}
            
            #guick_btn_wrap{
               height:620px
            }
            #guick_btn{
               width: 100%;
               text-align:center;
            }
            #guick_btn h2{
               float: none;
               text-align: center;   
            }
            #guick_btn h2 br{
               display: none;
            }
            #guick_btn ul{
               display:inline-block;
               margin-top: 10%;
               float: none;
               width: 100%
            }
            #guick_btn ul li{
               width: 30%;
               margin-right: 1%;
               margin-bottom:10%         
            }


            footer #footer_top ul{
               width: 100%
            }
            footer #footer_top ul li{
               width: 30%;
               font-size: 12px;
               line-height: 30px
            }
            footer #footer_bottm{
               width: 90%
            }
            footer #footer_bottm h1{
               display: none;
            }
            footer #footer_bottm #footer_info{
               width: 100%
            }
            
         }
         
         @media all and ( max-width:640px ){
            
            header #header_banner{
               backgro8und-image:url("https://www.daelimcare.com/images/img/nanocare_bnr_m_v2_01.jpg");
               background-size: cover;
               height:200px
            }
            header #header_banner button:first-child{
               display: none;
            }
            header #header_top_menu > ul{
               left: 0;
            }
            header #header_top_menu > ul li{
               width: 90px
            }
            header #header_top_menu #header_top_menu_right > ul{
               right: 20px
            }
            header #header_bottom_menu_wrap{
               height: 60px
            }
            header nav#header_bottom_menu h1{
               left: 20px;
            }
            header nav#header_bottom_menu h1 img{
               width:133px
            }
            header nav#header_bottom_menu button#burger_btn{
               margin-right: 30px;
               margin-top:15px
            }
         
            #main_visual #visual_section_img{
               width: 100%;
               left: 0
            }
            /* ----------------------------------------- */
            #main_visual #visual_section_text{
               writing-mode:horizontal-tb;
               text-align: center;
            }
            #main_visual #visual_section_text h2{
               font-size: 40px
            }
            #main_visual #visual_section_text h3{
               font-size: 20px;
               left: 15%;
               width: 100%;
               display: flex;
               height: 0;
               margin-left: 27%
            }
            
            #main_visual #visual_section_img span img{
               width: 64px;
               left: 32%
            }
            
            #banner #left_banner h4, #banner #right_banner h4{
               font-size: 23px;
               margin-bottom:10px
            }
            #banner #left_banner span, #banner #right_banner span{
            	margin-bottom:20px
            }
            #banner #left_banner span br, #banner #right_banner span br{
               display: block;
            }
            #blank{
            	width: 100%;
            	height:150px;
            	background-color: pink;
            	display: block;
            }
            #inner #inner_left{
               width: 100%;
               height: 40%
            }
            #inner #inner_center ul li{
            	float: left;
            }
            #inner #inner_left > ol li button{
               font-size: 17px;
               padding-bottom: 5px
            }
            #inner #inner_left ol li button img{
               vertical-align: middle;
            }
            #inner #inner_left p{
               font-size: 18px;
               clear: both;
               padding-top:4%
            }
            #inner #inner_left h5{
               font-size: 26px
            }
            #inner #inner_center{
            	transform:translate(3%, 75%);
            	padding: 3%;
            	width: 95%
            }
            #inner #inner_center > span{
               font-size: 14px
            }
            #inner #inner_center h3{
               font-size: 30px;
               font-weight: 100
            }
            #inner #inner_center ul li{
            	width: 30%;
            	margin-right: 0
            }
            #inner #inner_center ul li:nth-of-type(2){
            	margin-top: 0;
            	margin-bottom: 0
            }
            #inner #inner_center ul li span img{
            	height: 46px
            }
            #inner #inner_center ul li em{
            	display: block;
            }
            #inner #inner_center a span:last-child{
            	top: 57px
            }
            #inner #inner_right{
               position: relative;
               left: 0;
               top:30%
            }
            #inner #inner_left, #inner #inner_right{
               width: 100%
            }
            #inner #inner_right img{
               width: 100%
            }
            
            /* #main_visual #visual_section_text h3{
               height: 0;
               display: flex;
               font-size: 26px;
               position: relative;
               left: 25%
            }
            #main_visual #visual_section_text h2{
               font-size: 70px;
               margin-top: 5%
            }
            #main_visual #visual_section_img{
               right: 0;
               width: 100%;
               top: 25%
            }
            #main_visual #visual_section_img > img{
               width: 100%;
            } */
            /* ----------------------------------------- */
            
            #main_banner{
            	margin-top: 270px;
            	background-image:url("https://www.daelimcare.com/images/img/main_onecare_bnr_m.jpg");
            }
            #main_banner a{
            	top: 55%;
            	height: 75px;
            	
            }
            #info #info_text{
            	width: 100%;
            	padding: 50px 30px
            }
            #info #info_text > span{
            	font-size: 14px
            }
            #info #info_text h2{
            	font-size: 27px;
            	margin-top: 2%
            }
            #info #info_text p{
            	display: none;
            }
            #info #info_text a{
            	padding-top: 20px
            }
            #info #info_text a span:last-child{
            	top: 50px;
            	left:70px
            }
            #info #info_text a span:last-child::before{
            	width: 70px;
            	left: -70px
            }
            #info #info_pic{
            	width: 35%;
            	height: 70%
            }
            #info #info_pic img{
            	top:5% 
            }
            #care_info{
            	height: 1200px;  /* 높이값 조정ㅎㅐ야함 */
            }
            
            #care_info h2{
            	font-size: 27px
            }
            #care_info ul li{
            	width: 90%;
            	height: 300px;
            	padding-top: 5%;
            }
            #care_info ul li > span{
            	float: none;
            	text-align: center;
            	margin: 0 auto;
            }
            #care_info ul li > span img{
            	display: block;
            }
            
            #care_info ul li span.care_text{
            	text-align: center;
            }
            #care_info ul li > span:first-child{
            	margin-left: 0;
            	margin-right:0;
            }
            #care_info ul li > span:first-child img{
            	margin-top: 0
            }
            #care_info ul li span.care_text strong{
            	font-size: 20px;
            	padding-bottom: 2%
            }
            #care_info ul li span.care_text span{
            	font-size: 14px
            }
            #care_info ul li span.care_text > a{
            	position: relative;
            	border: 1px solid green;
            	display:inline-block;
            }
            #care_info ul li span.care_text > a br{
            	display: none;
            }
            #care_info ul li span.care_text a > span{
         		font-size: 13px;
         		display: inline-block;
         		float:left;
 
         		/* height: 15px;
         		width: 0; */
            }
            #care_info ul li span.care_text a > span:last-child{
            	/* display: none; */
            }
            
            
            
            
            #service_product{
            	text-align: center;
            	margin: 0 auto;
            }
            #service_product h2{
            	font-size: 27px
            }
            #service_product ul{
            	height: 1000px;
            	border: 1px solid green;
            	padding-left: 3%
            }
            #service_product ul li{
            	width: 46%;
            	height: 440px;
            	margin-bottom: 10px
            }
            #service_product ul li:first-child{
            	margin-left: 1%
            }
            #service_product ul li:nth-of-type(3){
            	clear: both;
            }
            #service_product ul li a{
            	padding-top: 130%
            }
            #service_product ul li a strong{
            	font-size: 1rem
            }
            #service_product ul li:hover a{
            	padding-top:120%
            }
         	
         	#guick_btn_wrap{
         		height: 500px
         	}
         	#guick_btn{
         		margin: 0px auto 10%
         	}
         	#guick_btn h2{
         		font-size: 30px
         	}
         	#guick_btn ul li:nth-child(4){
         		clear: both;
         	}
         
         	#guick_btn ul li img{
         		width: 53px
         	}
         	#guick_btn ul li span{
         		font-size: 14px
         	}
         	footer #footer_bottm #footer_info address{
         		font-size: 13px
         	}
         	footer #footer_bottm #footer_info address button{
         		margin-top: 2%
         	}
         	footer #footer_bottm #footer_info #custom_center span{
         		display: block;
         	}
         }
         
         

         
         
      </style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
      
      <script>
         $(function() {
            var stuck_menu_offset_top=$("header nav#header_bottom_menu").offset().top;
            
            $("header #header_banner button").eq(0).click(function() {
               $("#header_banner").slideUp();
               $("header #header_top_menu button").eq(0).css({display: "block"});
               $("header #header_top_menu button").eq(0).animate({top:0});
               stuck_menu_offset_top=$("header nav#header_bottom_menu").offset().top;
            });
            $("header #header_top_menu button").eq(0).click(function() {
               $("#header_banner").slideDown();
               $(this).fadeOut();
               $(this).animate({top:""});
               stuck_menu_offset_top=$("header nav#header_bottom_menu").offset().top;
            });
            
            $("header nav#header_bottom_menu > ol > li > a:not(:animated)").mouseenter(function() {
               $("header #sub_menu").slideDown();
               $("header nav#header_bottom_menu > ol > li > ul").slideDown();
            });
            var sub_menu_item=$("header #header_bottom_menu_wrap:not(:animated)");
            $(sub_menu_item).mouseleave(function() {
               $("header #sub_menu").slideUp();
               $("header nav#header_bottom_menu ol li ul").slideUp();
            });
            
            
            console.log($("header nav#header_bottom_menu").offset().top);
            var check_stuck_menu=0;
            $(window).scroll(function() {
            	
				//console.log("scroll  ->"+$(window).scrollTop());
               
               	var browser_check=0;
				if ($(window).width() > 641) {
					browser_check=200;
				}else if ($(window).width() < 641) {
					browser_check=400;
				}
               
				if ( $(window).scrollTop() >= stuck_menu_offset_top && check_stuck_menu==0 ) {
					$("header #header_bottom_menu_wrap").addClass("stuck_menu");
					check_stuck_menu=1;
				}else if ( $(window).scrollTop() <= stuck_menu_offset_top && check_stuck_menu==1) {
					$("header #header_bottom_menu_wrap").removeClass("stuck_menu");
					check_stuck_menu=0;
				}

				if ( $(window).scrollTop() >= (300-browser_check)) {
					$("#banner #left_banner h4, #banner #right_banner h4").animate({marginTop:0}, 600);
					$("#banner #left_banner img").animate({marginTop:0}, 900);
					$("#banner #right_banner img").animate({marginTop:0}, 1200);
					//console.log("banner");
				}

				if ( $(window).scrollTop() >= (1000-browser_check)) {
					$("#inner #inner_left ol, #inner #inner_left p").animate({marginLeft:0}, 1800);
					$("#inner #inner_left h5").animate({marginLeft:0}, 2100);
					$("#inner #inner_right img").animate({marginLeft:0}, 2100);
					$("#inner #inner_center").delay(1000).animate({marginTop:"-50px", opacity:1}, 1000);
					//console.log("inner");
				}

				if($(window).scrollTop() >= (2500-browser_check)){
					$("#main_banner").animate({marginTop:150}, 1000);
					//console.log("main_banner");
				}

				if( $(window).scrollTop() >= (2700-browser_check)){
					$("#info #info_pic img").animate({left:-80}, 1000);
					$("#info #info_text > span").animate({marginLeft:0}, 1200);   
					$("#info #info_text h2").animate({marginLeft:0}, 1000);   
					$("#info #info_text p").animate({marginLeft:0}, 1200);   
					$("#info #info_text a").animate({marginLeft:0},1400);   
					//console.log("info");
				}
				if( $(window).scrollTop() >= (3700-browser_check)){
					$("#care_info ul li:first-child").animate({top:0, opacity: 1}, 1000);   
					$("#care_info ul li:nth-of-type(2)").animate({top:0, opacity: 1}, 1000);   
					$("#care_info ul li:last-child").animate({top:0, opacity: 1}, 1000);   
					$("#care_info h2").animate({top:0}, 1000);   
					//console.log("care_info");
				}
				if( $(window).scrollTop() >= (4700-browser_check)){
					$("#service_product h2").animate({marginTop:0}, 1000);   
					$("#service_product ul li:first-child").animate({marginTop:0}, 1000);   
					$("#service_product ul li:nth-of-type(2)").animate({marginTop:0}, 1400);   
					$("#service_product ul li:nth-of-type(3)").animate({marginTop:0}, 1800);   
					$("#service_product ul li:last-child").animate({marginTop:0}, 2200);   
					//console.log("service_product");
				}

				if($(window).scrollTop() >= (5800-browser_check)){
					$("#guick_btn h2").animate({marginTop:0}, 1000);   
					$("#guick_btn ul li:first-child").animate({marginTop:0}, 1000);   
					$("#guick_btn ul li:nth-of-type(2)").animate({marginTop:0}, 1000);   
					$("#guick_btn ul li:nth-of-type(3)").animate({marginTop:0}, 1200);   
					$("#guick_btn ul li:nth-of-type(4)").animate({marginTop:0}, 1400);   
					$("#guick_btn ul li:nth-of-type(5)").animate({marginTop:0}, 1600);   
					$("#guick_btn ul li:last-child").animate({marginTop:0}, 1800); 
					//console.log("guick_btn");
				}
               
            }); //scroll motion
            
            
            function browser_width_1025_up() {
               $("#main_visual #visual_section_text h3").animate({marginTop: "10%", opacity: 1});
               $("#main_visual #visual_section_text h2").delay(200).animate({marginTop: "10%", opacity: 1});
               $("#main_visual #visual_section_img").animate({top:0}, 1000);
               $("#main_visual #visual_section_img span img").delay(800).animate({top:"25%", opacity: 1}, 1000);
            }
            function browser_width_641_up() {
               $("#main_visual #visual_section_text h3").animate({marginTop: "10%", opacity: 1});
               $("#main_visual #visual_section_text h2").delay(200).animate({marginTop: "10%", opacity: 1});
               $("#main_visual #visual_section_img").animate({top:0}, 1000);
               $("#main_visual #visual_section_img span img").delay(800).animate({top:"22%", opacity: 1}, 1000);
            }
            function browser_width_640_down() {
               $("#main_visual #visual_section_text h3").animate({marginTop: "10%", opacity: 1});
               $("#main_visual #visual_section_text h2").delay(200).animate({marginTop: "5%", opacity: 1});
               $("#main_visual #visual_section_img").animate({top:"20%"}, 1000);
               $("#main_visual #visual_section_img span img").delay(800).animate({top:"25%", opacity: 1}, 1000);
            }
            var browser_width = $(window).width();
            //로딩 화면
            if (browser_width > 1025 ) { //PC
               browser_width_1025_up();
            
            }else if (browser_width > 641 ) {
               browser_width_641_up();
            }else {
               browser_width_640_down();
            }
            //resizing
            $(window).resize(function() {
               
               var risizing_width=$(window).width();
               
               if (risizing_width > 1025) {
                  
                  browser_width_1025_up();
                  
               }else if (risizing_width > 641) {
                  
                  browser_width_641_up();
               }else {
                  browser_width_640_down();
               }
            });
            
            
            
            $("#care_info ul li").hover(function() {
               var img_url="https://www.daelimcare.com/images/icon/plc_icon0"+($(this).index()+1)+"_on.png";
               $("> span > img", this).attr("src", img_url);
            }, function() {
               var img_url="https://www.daelimcare.com/images/icon/plc_icon0"+($(this).index()+1)+".png";
               $("> span > img", this).attr("src", img_url);
            });
            
            $("#guick_btn_wrap #guick_btn ul li").hover(function() {
               var img_src ="https://www.daelimcare.com/images/icon/mbtm_quick_icon0"+($(this).index()+1)+"_on.png";
               $(" > a > img", this).attr("src", img_src);
            }, function() {
               var img_src ="https://www.daelimcare.com/images/icon/mbtm_quick_icon0"+($(this).index()+1)+".png";
               $(" > a > img", this).attr("src", img_src);
            });
            
         });
      </script>
   </head>
   <body>
      <header>
         <a id="header_banner" href="#">
            <button onfocus="this.blur()"><img src="https://www.daelimcare.com/images/img/btn_topbnr_close_white.png"></button>
         </a>
         <div id="header_top_menu">
            <button onfocus="this.blur()"><img src="https://www.daelimcare.com/images/img/band_open.png"></button>
            <ul>
               <li>대림케어</li>
               <li>디그라운드</li>
            </ul>
            <div id="header_top_menu_right">
               <ol>
                  <li><i class='fas'>&#xf095;</i>렌탈문의</li>
                  <li><i class='fas'>&#xf2f6;</i>로그인</li>
                  <li><i class='fas'>&#xf007;</i>회원가입</li>
               </ol>
               <ul>
                  <li><i class="fab">&#xf39e;</i></li>
                  <li><i class="material-icons">&#xe238;</i></li>
                  <li><i class="fab">&#xf167;</i></li>
               </ul>
            </div>
         </div>
         <hr>
         <div id="header_bottom_menu_wrap">
            <nav id="header_bottom_menu">
               <h1><img src="https://www.daelimcare.com/images/img/logo.jpg" alt="logo"></h1>
               <button id="burger_btn">
                  <span></span>
                  <span></span>
                  <span></span>
               </button>
               <ol class="hover_motion">
                  <li>
                     <a>제품</a>
                     <ul>
                        <li>전체보기</li>
                        <li>비데</li>
                        <li>정수기</li>
                        <li>공기청정기</li>
                        <li>기타상품</li>
                     </ul>
                  </li>
                  <li>
                     <a>서비스</a>
                     <ul>
                        <li>서비스 닥터 소개</li>
                        <li>나노 케어 서비스</li>
                        <li>정수기 케어 서비스</li>
                        <li>비데 케어 서비스</li>
                        <li>욕실 케어 서비스</li>
                        <li>배관 케어 서비스</li>
                     </ul>
                  </li>
                  <li>
                     <a>브랜드</a>
                     <ul>
                        <li>대림케어</li>
                        <li>POLAR</li>
                        <li>BEBATH</li>
                     </ul>
                  </li>
                  <li>
                     <a>이벤트</a>
                     <ul>
                        <li>진행중 이벤트</li>
                        <li>종료된 이벤트</li>
                     </ul>
                  </li>
                  <li>
                     <a>고객지원</a>
                     <ul>
                        <li>공지사항</li>
                        <li>제품사용설명서</li>
                        <li>FAQ</li>
                        <li>서비스신청</li>
                        <li>1:1문의</li>
                        <li>필터/소모품 구매</li>
                        <li>주방 정수필터 구매</li>
                     </ul>
                  </li>
               </ol>
            </nav>
            <div id="sub_menu">
               <div id="sub_menu_banner">
                  <img alt="" src="https://www.daelimcare.com/images/img/gnb_banner.jpg">
               </div>
            </div>
         </div>
      </header>
      
      <div id="main_visual">
         <div id="visual_section_text">
            <h3>대림케어 <br> <em>5</em><em>0</em>년의 위생과학을 담아</h3>
            <h2>생활을 바꾸다</h2>
         </div>
         <div id="visual_section_img">
            <img alt="정수기" src="https://www.daelimcare.com/images/img/mv01_big_img.png"> 
            <span>
               <img alt="정수기" src="https://www.daelimcare.com/images/img/main_visual_prd.png">
            </span>
         </div>
      </div>
      
      <div id="banner">
         <div id="left_banner">
            <h4>POLAR</h6>
            <span>깨끗한 물을 위한<br />현명한 선택</span>
            <img alt="" src="https://www.daelimcare.com/images/img/mbnr_cont01.jpg">
         </div>
         <div id="right_banner">
            <h4>RE-BATH</h6>
            <span>내 생활공간의<br />특별한 변화</span>
            <img alt="" src="https://www.daelimcare.com/images/img/mbnr_cont02.jpg">
         </div>
      </div>
      
      <div id="inner">
         <div id="inner_left">
            <ol>
               <li>
                  <button>
                     <img src="https://www.daelimcare.com/images/icon/mprd_tabicon01_on.png">
                     정수기
                  </button>
               </li>
               <li>
                  <button>
                     <img src="https://www.daelimcare.com/images/icon/mprd_tabicon02.png">
                     비데
                  </button>
               </li>
            </ol>
            <p>대림의 50년 위생과학을 담다</p>
            <h5>직수형 정수기의 완성판</h5>
         </div>
         <div id="inner_right">
            <img alt="" src="https://www.daelimcare.com/images/img/prd_tab_img01.png">
         </div>
         <div id="inner_center">
            <span>DWP-F250S</span>
            <h3>폴라 제로</h3>
            <ul>
               <li>
                  <span><img alt="" src="https://www.daelimcare.com/images/icon/prd01_spec_icon01.jpg"></span>
                  <em>파워스팀<br/>코크 살균</em>
               </li>
               <li>
                  <span><img alt="" src="https://www.daelimcare.com/images/icon/prd01_spec_icon02.jpg"></span>
                  <em>노로 바이러스<br/>99.9% 제거</em>
               </li>
               <li>
                  <span><img alt="" src="https://www.daelimcare.com/images/icon/prd01_spec_icon03.jpg"></span>
                  <em>미네랄 생성<br/>항균 세라믹볼</em>
               </li>
            </ul>
            <a href="#">
               <span>MORE</span>
               <span><img src="https://www.daelimcare.com/images/btn/mprd_more_arrow.jpg" alt=""></span>
            </a>
         </div>
      </div>
      
      <div id="blank"></div>
      
      <div id="main_banner"><a href="#"></a></div>
      
      <div id="info">
         <div id="info_text">
            <span>품질은 결국, 사람입니다.</span>
            <h2>50년을 함께한 <br /> 대림이 관리합니다.</h2>
            <p>고객을 연구하고 서비스의 진정성까지 생각합니다.<br>그렇게 우리는 사람을 만듭니다.</p>
            <p>제품에 대한 전문기술은 물론, 투철한 고객지향 정신을 가진 사람,<br />여기에 기업 대표라는 마인드로 책임감과 정직성까지 가진 사람.</p>
            <p>바로 대림의 홈케어 전문가, 서비스 닥터(SD)입니다.</p>
            <a href="#">
               <span>MORE</span>
               <span><img src="https://www.daelimcare.com/images/btn/mprd_more_arrow.jpg" alt=""></span>
            </a>
         </div>
         <div id="info_pic">
            <img alt="" src="https://www.daelimcare.com/images/img/human_img.png">
         </div>
      </div>
      
      <div id="care_info">
         <h2>대림케어는 다르다</h2>
         <ul>
            <li>
               <span><img alt="" src="https://www.daelimcare.com/images/icon/plc_icon01.png"></span>
               <span class="care_text">
                  <strong>마인드가 다르다</strong>
                  <span>체계적인 교육과 정기적인 품질 <br /> 평가를 받는 본사 직원의 서비스</span><br />
                  <a href="#">
                     <span>MORE</span><br/>
                     <span><img src="https://www.daelimcare.com/images/btn/mprd_more_arrow.jpg" alt=""></span>
                  </a>
               </span>
               <span class="boder_animation">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
               </span>
            </li>
            <li>
               <span><img alt="" src="https://www.daelimcare.com/images/icon/plc_icon02.png"></span>
               <span class="care_text">
                  <span class="boder_animation"></span>
                  <strong>커버리지가 다르다</strong>
                  <span>도서산간을 제외한 <br /> 전국 모든 지역 현장 서비스</span><br />
                  <a href="#">
                     <span>MORE</span><br/>
                     <span><img src="https://www.daelimcare.com/images/btn/mprd_more_arrow.jpg" alt=""></span>
                  </a>
               </span>
               <span class="boder_animation">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
               </span>
            </li>
            <li>
               <span><img alt="" src="https://www.daelimcare.com/images/icon/plc_icon03.png"></span>
               <span class="care_text">
                  <span class="boder_animation"></span>
                  <strong>서비스 질이 다르다</strong>
                  <span>라이프스타일 맞춤 제품 상담과 <br /> 생활의 TIP까지 제공</span><br />
                  <a href="#">
                     <span>MORE</span><br/>
                     <span><img src="https://www.daelimcare.com/images/btn/mprd_more_arrow.jpg" alt=""></span>
                  </a>
               </span>
               <span class="boder_animation">
                  <span></span>
                  <span></span>
                  <span></span>
                  <span></span>
               </span>
            </li>
         </ul>
      </div>
      
      <div id="service_product">
         <h2>대표 서비스 상품</h2>
         <ul>
            <li>
               <a href="#">
                  <img alt="" src="https://www.daelimcare.com/images/img/service_prd_img01.jpg">
                  <strong>정수기 케어<br />서비스 </strong>
                  <span>꼼꼼하게 깨끗하게 스마트 케어</span>
                  <button>어떤 브랜드라도 OK!</button>
               </a>
            </li>
            <li>
               <a href="#">
                  <img alt="" src="https://www.daelimcare.com/images/img/service_prd_img02.jpg">
                  <strong>배관케어<br />서비스 </strong>
                  <span>오래된 수도관을 위한 특급 케어</span>
                  <button>깨끗한 물 = 가족건강</button>
               </a>
            </li>
            <li>
               <a href="#">
                  <img alt="" src="https://www.daelimcare.com/images/img/service_prd_img03.jpg">
                  <strong>비데 케어<br />서비스</strong>
                  <span>욕실 청소 A-Z 마무리까지 완벽 케어</span>
                  <button>전문적이고 신속하게!</button>
               </a>
            </li>
            <li>
               <a href="#">
                  <img alt="" src="https://www.daelimcare.com/images/img/service_prd_img04.jpg">
                  <strong>욕실 케어<br />서비스</strong>
                  <span>구역별로 더 세분화된 프리미엄 욕실 케어</span>
                  <button>4개월마다 정기적으로!</button>
               </a>
            </li>
         </ul>
      </div>
      
      <div id="guick_btn_wrap">
         <div id="guick_btn">
            <h2>DAELIM CARE<br />SERVICE</h2>
            <ul>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon01.png">
                     <span>공지사항</span>
                  </a>
               </li>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon02.png">
                     <span>제품 사용설명서</span>
                  </a>
               </li>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon03.png">
                     <span>소모품 SHOP</span>
                  </a>
               </li>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon04.png">
                     <span>서비스 신청</span>
                  </a>
               </li>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon05.png">
                     <span>FAQ</span>
                  </a>
               </li>
               <li>
                  <a href="">
                     <img alt="" src="https://www.daelimcare.com/images/icon/mbtm_quick_icon06.png">
                     <span>1:1 문의</span>
                  </a>
               </li>
            </ul>
         </div>
      </div>
      
      <footer>
         <div id="footer_top">
            <ul>
               <li>채용공고</li>
               <li>이용약관</li>
               <li>개인정보처리방침</li>
               <li>이메일무단수집거부</li>
               <li>사이트맵 </li>
               <li>B2B 문의</li>
               <li>대림 e편한세상 접수</li>
            </ul>
         </div>
         <div id="footer_bottm">
            <h1><img alt="" src="https://www.daelimcare.com/images/img/foot_logo.png"> </h1>
            <div id="footer_info">
               <div id="custom_center">
                  <dl>
                     <dt>고객센터</dt>
                     <dd>1588-3667</dd>
                  </dl>
                  <span>(평일 AM09:00-PM05:30  / 주말 및 공휴일 휴무)</span>
               </div>
               <address>
                  <div>
                     <span>상호명 : 대림비앤코 주식회사</span>
                     <span>대표자 : 강태식</span>
                     <span>대표번호 : 1588-3667</span>
                     <span>주소 : 서울특별시 강남구 학동로 105,5층(논현동, 제이빌딩)</span>
                  </div>
                  <div>
                     <span>사업자등록번호 : 673-85-00862</span>
                     <span>통신판매업 신고번호 : 제 2018-서울강남-02621호 </span>
                     <button>사업자정보확인</button>
                  </div>
                  <div>
                     <span>개인정보보호 책임자 : 케어부문(careservice@daelimbath.com)</span>
                  </div>
               </address>
               <span>COPYRIGHT 2017 © DAELIM BATH. LIMETED. ALL RIGHTS RESERVED.</span>
            </div>
         </div>
         
      </footer>
   
   </body>
</html>