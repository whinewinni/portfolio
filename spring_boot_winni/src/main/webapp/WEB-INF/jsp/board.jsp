<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
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
				background-color: #78c2ad;
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
			header nav ul li:last-child{
				cursor: pointer;
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
				margin:0 auto;
				/* height: 100vh; */
				padding-top: 150px;
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
				z-index: 2;
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
				
			}
			table#board_list tbody tr td button#setting_btn{
				float: right;
			}
			table#board_list tbody tr td #button_group{
				float: right;
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
			
			
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<!-- Boot strap -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<!-- Vue -->
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		<script>
			$(function() {
				


				$(document).ready(function() {
					
					$("table#board_list tbody tr td > button").click(function(){
						
					});

					
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
				</h1>
				<ul>
					<li>Profile</li>
					<!-- winni cho랑 about me는 합칠것  -->
					<li>About me</li>
					<li>Portfolio</li>
					<li>Board</li>
					<li data-toggle="modal" data-target="#contact_modal">Contact</button></li>
				</ul>
			</nav>
			
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
				<form action="" class="search-form">
					<div class="form-group has-feedback">
						<label for="search" class="sr-only">Search</label>
						<input type="text" class="form-control" name="search" id="search" placeholder="search">
						<!-- <span class="glyphicon glyphicon-search form-control-feedback"></span> -->
						<i id="icon" style='font-size:18px' class='fas'>&#xf002;</i>
					</div>
				</form>
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
								<span v-html="list[key].content">{{list[key].content}}</span>
								<!-- <button @click="set_seq_id(list[key].seq_no, list[key].id , $event)" id="setting_btn" data-toggle="modal" data-target="#check_pwd_modal">
									<i class='fas'  v-bind:id="'demo'+key">&#xf2fe;</i>
								</button> -->
								<div id="button_group" style="border: 1px solid green" data-toggle="modal" data-target="#check_pwd_modal">
									<button type="button" class="btn btn-outline-primary btn-sm">Modify</button>
									<button @click="delete_data(list[key].seq_no)" type="button" class="btn btn-outline-primary btn-sm">Delete</button>
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
					<ul class="pagination justify-content-center pagination-sm">
						<li class="page-item "><a class="page-link" href="#">Prev</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
				<button id="write_btn" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#write_modal">write</button>
			</div>
			
			<p id="lorem"> * Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
			
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
			
			<!-- The Modal -->
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
							<button @click="check_password()" type="button" class="btn btn-secondary" data-dismiss="modal">Check Password</button>
						</div>
					
					</div>
				</div>
			</div>
			
		</div>
		<footer style="width:100vw; height:200px; background-color:#b9dfd4"></footer>
		
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
				check_id:"",

				//is_active:false
			},
			mounted:function(){
				this.board_list();
			},
			methods:{
				board_list : function(){
					var self=this;
					
					$.ajax({
						url:"http://localhost:8080/get_list",
						method:"post",
						dataType:"json",
						success:function(data){
							self.list=data;
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
							self.board_list();

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
				delete_data: function(seq){
					var self=this;
					$.ajax({
						//url:"http://localhost:8080/delete_data",
						method:"get",
						data:{seq_no: seq},
						success:function(data){
							collapse_hide();
							self.board_list();
						},
						error:function(msg){
							console.log(msg);
						}
					});
				}, //end delete_data
				update_hit:function(num){
					var self=this;
					//self.list[index].title = "zxcvzzzz";

					/* var check_show=$("table#board_list tbody tr td > button").attr("aria-expanded");

					if(check_show=="" || check_show==false){
						console.log("check_showdfgdgfdgfgdfdfgdfg");
					} */
					
					$.ajax({
						url:"http://localhost:8080/update_hit",
						method:"get",
						data:{seq_no: num},
						success:function(data){
							self.board_list();
						},error:function(){}
					});
				},//end update_hit
				set_seq_id : function(seq, id, event){
					check_seq=seq;
					check_id=id;
					console.log(event.path[2].id);
				},
				check_password : function(){
					var self=this;
					console.log(check_id);
					console.log(check_seq);
					console.log(this.check_pwd);

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
							console.log(data);
							console.log("check_password success");
							
							if(data==1){
								//$("table#board_list tbody tr td button#setting_btn + div#button_group").css({display:"block"});
								self.is_active=true;
							}else{
								self.is_active=false;
							}
							
						},error:function(){
							self.check_pwd="";
							console.log("check_password error");
						}
					});
				}   //end check_password
			} //end methods
		});
	</script>
</html>


























