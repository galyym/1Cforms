<?php
	require_once 'user.php';
	require_once 'db.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<script src="tinymce/tinymce.min.js"></script>
  		<script>tinymce.init({selector:'textarea'});</script>
	</head>
	<body>
		<div class="container">
			<?php
				require_once 'header.php';
			?>
		</div>
		<div class="container mt-3">
			<?php
				$id = null;
				if(isset($_GET['id']) && is_numeric($_GET['id'])){
					$id = $_GET['id'];
				}
				
				$tweet = getTweet($id);

				if($tweet!=null && $tweet['user_id']==$user['id']){
			?>	
				<form action="tosavetweet.php" method="post">
					<input type="hidden" name="id" value="<?php echo $tweet['id']; ?>">
					<div class="mt-2">
						<label>TITLE :</label>
						<input type="text" required name="title" class="form-control mt-2" placeholder="Insert title" value="<?php echo $tweet['title']; ?>">
					</div>
					<div class="mt-4">
						<label>SHORT CONTENT :</label>
						<textarea class="form-control mt-2" name="short_content"><?php echo $tweet['short_content']; ?></textarea>
					</div>
					<div class="mt-4">
						<label>CONTENT :</label>
						<textarea class="form-control mt-2" name="content"><?php echo $tweet['content']; ?></textarea>
					</div>
					<div class="mt-4">
						<button class="btn btn-success">SAVE TWEET</button>
						<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteTweetModal">DELETE TWEET</button>
					</div>
				</form>
				<div class="modal fade" id="deleteTweetModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				    	<form action="todeletetweet.php" method="post">
							  <input type="hidden" name="id" value="<?php echo $tweet['id']; ?>">
						      <div class="modal-header">
						        <h5 class="modal-title" id="staticBackdropLabel">Confirm Delete</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						        Are you sure?
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
						        <button class="btn btn-danger">YES</button>
						      </div>
						</form>
				    </div>
				  </div>
				</div>
			<?php
				}else{
			?>
				<h1 class="text-center display-4">
					404 PAGE NOT FOUND
				</h1>
			<?php
				}
			?>
		</div>
	</body>
	<?php
		require_once 'footer.php';
	?>
</html>