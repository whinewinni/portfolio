<meta charset="utf-8">
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>Winni's</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" href="../css/reset.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		
		<style>
			
			html{
				font-size: 10px;
			}
			body{
                overflow-x:hidden; 
			}
			header{
				width: 100vw;
				background-color: red;
				height: 100vh;
				position: relative;
			}
			header button#admin_btn{
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
				font-size: 2.5em;
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
				height:500px
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
				font-size: 3rem
			}
			#renewal #reneal_right p{
				margin-left: 20%;
				margin-top: 5%;
				font-size: 2rem
			}
			#renewal #reneal_right #logo_btns{
				position:absolute;
				bottom: 0;
				right:20%
			}
			#mobile{
				width: 70vw;
				margin:0 auto;
			}
			#mobile h2{
				font-size: 5em
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
				width: 50rem
			}
			
			
			@media all and (max-width:1400px){
				#mobile #mobile_right{
					clear: both;
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script>
			$(function() {
				
			});
		</script>
	</head>
	<body>  
		
		<header>
			<button onfocus="this.blur()" id="admin_btn" type="button" class="btn" data-toggle="modal" data-target="#admin_modal">Admin</button>
			<p>What are you waiting for?<br /> <span>It's me!</span></p> 
		</header>
		
		<!-- Modal Start -->
		<div id="admin_modal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Administration </h4>
					</div>
				 	<div class="modal-body">
						<form action="check_admin.php" method="post">
							<input type="text" class="form-control" id="admin_id" placeholder="Enter Administ id" name="id">
							<input type="password" class="form-control" id="admin_pwd" placeholder="Enter password" name="pswd">
							<button id="check_admin" type="submit" class="btn btn-danger">Administration Login</button>
						</form>
					</div>
					<div class="modal-footer">
						<p>* Only administrators are allowed to login.</p> 
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal end -->
		
		<nav>
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
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ul>
					
					<!-- The slideshow -->
					<div class="carousel-inner">
					
					
						<div class="carousel-item active">
							<a href="">
								<img src="upload/art_work01_thum.png">
							</a>
						</div>
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
		<div id="renewal">
			<div id="logo_slide"></div>
			<div id="reneal_right">
				<div id="spinner_grow">
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
					<div class="spinner-grow text-danger" role="status"></div>
				</div>
			
				<h2>Photoshop's version  of Lorem Ipsum</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, dolor molestiae distinctio, repellat suscipit in maiores quae eligendi ex minus atque! Animi, fuga ut sed, quasi maiores a tenetur similique:</p>
				
				<div id="logo_btns" class="btn-group" role="group" aria-label="Basic example">
					<button type="button" class="btn-lg btn btn-outline-danger">Left</button>
					<button type="button" class="btn-lg btn btn-outline-danger">Right</button>
				</div>
			</div>
		</div>
		<div id="mobile">
			<h2>Mobile</h2>
			
			<div id="mobile_left">
				<div class="card">
					<img src="m01.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div id="mobile_right">
				<div class="card">
					<img src="m02.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>

	<div style="height:1000px"></div>

</body>
</html>