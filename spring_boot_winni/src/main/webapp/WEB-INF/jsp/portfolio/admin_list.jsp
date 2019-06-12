<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>Winni's</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<style>
            #list{
                position: relative;
                width: 50vw;
                margin: 100px auto 0;
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
		<div id="list">
    		<h1>Administration</h1>
		
			<ul id="ul_list" class="list-group">
        		<li class="list-group-item">
        			<img class='list_img' src='img/artwork/m01.png'>
        			<div id="img_title">first img file</div>
                    <button type="button" class="btn btn-danger btn-sm">Delete</button>
        		</li>
        		<li class="list-group-item">
        			<img class='list_img' src='img/artwork/m01.png'>
        			<div id="img_title">first img file</div>
                    <button type="button" class="btn btn-danger btn-sm">Delete</button>
        		</li>
        		<li class="list-group-item">
        			<img class='list_img' src='img/artwork/m01.png'>
        			<div id="img_title">first img file</div>
                    <button type="button" class="btn btn-danger btn-sm">Delete</button>
        		</li>
        		
				<!-- while ($row = mysqli_fetch_array($artwork_list)) {
                        echo "<li class='list-group-item'>
                                    <img class='list_img' src='$row[thumbnail]'>
                                    <div id='img_title'>$row[title]</div>
                                    <button onclick='location.href=\"admin_delete.php?idx=$row[idx]\"' type='button' class='btn btn-danger btn-xs'>Delete</button>
                            </li>";
                } -->
                
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
					
					<form action="" method="post" enctype="multipart/form-data" >
    				 	
    				 	<div class="modal-body">
    							<label>thumbnail</label>
    							<p>* Save thumnail image at 400*300 ratio.</p>
    							<div class="input-group">
									<label class="input-group-btn">
										<span class="btn btn-danger btn-sm">
											Find file&hellip; 
											<input type="file" style="display: none;" multiple>
										</span>
									</label>
									<input type="text" class="form-control form-control-sm" readonly  placeholder="file name">
								</div>
    							
    							<label>Image</label>
    							<!-- <input type="file" class="form-control form-control-file" id="imgfile" name="imgfile"> -->
    							<div class="input-group">
									<label class="input-group-btn">
										<span class="btn btn-danger btn-sm">
											Find file&hellip; 
											<input type="file" style="display: none;" multiple>
										</span>
									</label>
									<input type="text" class="form-control form-control-sm" readonly placeholder="file name">
								</div>
    							
    							<input type="text" class="form-control form-control-sm" id="title" placeholder="Enter title" name="title">
    							<input type="date" class="form-control form-control-sm" id="date" name="date">
    							<input type="text" class="form-control form-control-sm" id="tool" placeholder="Enter tool" name="tool">
    							<input type="text" class="form-control form-control-sm" id="description" placeholder="Enter description" name="description">
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