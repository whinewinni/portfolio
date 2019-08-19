<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
		<!-- Responsive -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" href="css/reset.css">
		<!-- Bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<!-- awesome font -->
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
		<style>
            #list{
                position: relative;
                width: 50vw;
                margin: 100px auto 0;
            }
            #list #title h1{
            	float: left;
            }
            #list #title button{
            	float:right;
            }
            #list #ul_list{
                width: 50vw;
                margin:20px auto;
            }
            #list ul#ul_list li img{
                width:10%;
                float: left;
                margin-right:10%
            }
            /* #list ul#ul_list li #btn_group{
                float: right;
            } */
            #list ul#ul_list li button{
                float: right;
            }
            #list ul#ul_list li #img_title{
                float: left;
                margin-left: 20px
            }
            #list #insert_btn{
                position:absolute;
                right: 0 
            }
            
            #insert_modal .modal-body input[type=file]{
            	background-color: red
            }
            #insert_modal .modal-body p{
            	display: inline-block;
            	color: red;
            	font-size: small;
            }
            
            
            @media all and (max-width:650px){
            	#list{
            		width: 90vw
            	}
            	#list #ul_list{
            		width: 90vw
            	}
            
            }
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script>
			$(function() {

				$(window).on("load", function(){
					get_response();
				});
				$(window).resize(function(){
					get_response();
				});
				function get_response(){
					var browser=$(window).width();
					if(browser <= 530 ){
						$("#list #title button").html("<i class='fas'>&#xf0a8;</i> Back");
					}else{
						$("#list #title button").html("<i class='fas'>&#xf0a8;</i> Back to Portfolio page");
					}
				}
			});
		</script>
	</head>
	<body>
		<div id="list">
			<div id="title">
	    		<h1>Administration</h1>
	    		<button onclick="location.href='/artwork'" class="btn btn-danger">
	    			<i class='fas'>&#xf0a8;</i> Back to Portfolio page
	    		</button>
			</div>
		
			<ul id="ul_list" class="list-group">
				<c:forEach items="${artwork_vo}" var="artwork_vo">
	        		<li class="list-group-item">
	        			<img class='list_img' src='img/artwork/${artwork_vo.thumbnail}'>
	        			<div id="img_title">${artwork_vo.title}</div>
	                    <button onclick="location.href='/delete_img?idx=${artwork_vo.idx}'" type="button" class="btn btn-danger btn-sm">
	                    	Delete
                    	</button>
	        		</li>
				</c:forEach>
				
        		<!-- <li class="list-group-item">
        			<img class='list_img' src='img/artwork/m01.png'>
        			<div id="img_title">first img file</div>
                    <button type="button" class="btn btn-danger btn-sm">Delete</button>
        		</li>
        		<li class="list-group-item">
        			<img class='list_img' src='img/artwork/m01.png'>
        			<div id="img_title">first img file</div>
                    <button type="button" class="btn btn-danger btn-sm">Delete</button>
        		</li> -->
        		
			</ul>
			
			<button id="insert_btn" type="button" class="btn btn-danger" onfocus="this.blur()" data-toggle="modal" data-target="#insert_modal">Insert</button>
		</div>
		<!-- Modal Start -->
		<div id="insert_modal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Administration</h4>
					</div>
					
					<form action="/insert_imgfile" method="post" enctype="multipart/form-data" >
    				 	
    				 	<div class="modal-body">
    							<label>thumbnail</label>
    							<p>* Save thumnail image at 400*300 ratio.</p>
    							<div class="input-group">
									<label class="input-group-btn">
										<span class="btn btn-danger btn-sm">
											Find file&hellip; 
											<input name="thumbnail_file" type="file" style="display: none;" multiple>
										</span>
									</label>
									<input type="text" class="form-control form-control-sm" readonly>
								</div>
    							
    							<label>Image</label>
    							<!-- <input type="file" class="form-control form-control-file" id="imgfile" name="imgfile"> -->
    							<div class="input-group">
									<label class="input-group-btn">
										<span class="btn btn-danger btn-sm">
											Find file&hellip; 
											<input name="imgfile_file" type="file" style="display: none;" multiple>
										</span>
									</label>
									<input type="text" class="form-control form-control-sm" readonly>
								</div>
    							
    							<input type="text" class="form-control form-control-sm" id="title" name="title" placeholder="Enter title">
    							<input type="date" class="form-control form-control-sm" name="date" id="date" name="date">
    							<input type="text" class="form-control form-control-sm" name="tool" id="tool" placeholder="Enter tool">
    							<input type="text" class="form-control form-control-sm" name="description" id="description" placeholder="Enter description">
    					</div>
    					<div class="modal-footer">
    						<div id="btn_group2" class="btn-group" role="group">
                                <button type="submit" class="btn btn-danger btn-sm">Insert</button>
                                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Close</button>
                        	</div>
    					</div>
    					
					</form>
				</div>
			</div>
		</div>
		<!-- Modal end -->
	
	</body>
</html>