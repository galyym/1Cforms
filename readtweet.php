<?php
	require_once 'user.php';
	require_once 'db.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>

	</head>
	<body>
		<div class="container">
			<?php
				require_once 'header.php';
			?>
		</div>
		<div class="container mt-3 pb-5">
			<?php
				$id = null;
				if(isset($_GET['id']) && is_numeric($_GET['id'])){
					$id = $_GET['id'];
				}
				
				$tweet = getTweet($id);

				if($tweet!=null){
			?>
				<div style="background-color: #dfe5f2;" class="p-3 mb-3">
					<h3>
						<?php echo $tweet['title']; ?>
					</h3>
					<p>
						<?php
							echo htmlspecialchars_decode($tweet['short_content']);
						?>
					</p>
					<p>
						<?php
							echo htmlspecialchars_decode($tweet['content']);
						?>
					</p>
					<p class="fw-bold">
						Posted by <?php echo $tweet['full_name']; ?> at 
						<?php echo $tweet['post_date']; ?>
					</p>					
					<?php
						if($online && $user['id']==$tweet['user_id']){
					?>
						<div>
							<a href="edittweet.php?id=<?php echo $tweet['id']; ?>" class = "btn btn-primary btn-sm">
								EDIT TWEET
							</a>	
						</div>
					<?php
						}
					?>
				</div>
				<div>
					<?php
						if($online){
					?>
						<div>
							<form action="toaddcomment.php" method="post">
								<input type="hidden" name="tweet_id" value="<?php echo $tweet['id'];?>">
								<h4>Add Comment</h4>
								<textarea class="form-control mt-3" name="comment"></textarea>
								<button class="btn btn-success mt-3 btn-sm">ADD COMMENT</button>
							</form>
						</div>
					<?php
						}
					?>
					<div class="list-group mt-3">
						<?php
							$comments = getAllComments($tweet['id']);
							if($comments!=null){
								foreach($comments as $comm){
						?>
							<a href="JavaScript:void(0)" class="list-group-item list-group-item-action" aria-current="true">
								<div class="d-flex w-100 justify-content-between">
								  <h5 class="mb-1"><?php echo $comm['full_name']; ?></h5>
								  <small>
								  	<?php
								  		if($online && $comm['user_id']==$user['id']){
								  	?>							  	
								  		<button type="button" onclick="toDeleteComment(<?php echo $comm['id']; ?>)" class="btn-close" aria-label="Close"></button>
								  	<?php
								  		}
								  	?>
								  </small>
								</div>
								<p class="mb-1"><?php echo $comm['comment']; ?></p>
								<small><?php echo $comm['post_date']; ?></small>
							</a>
						<?php
								}
						?>
							<form action="todeletecomment.php" method="post" id = "deleteCommentFormId">
								<input type="hidden" name="tweet_id" value="<?php echo $tweet['id']; ?>">
								<input type="hidden" name="comment_id" id = "comment_id">
							</form>
							<script type="text/javascript">
								function toDeleteComment(commentId){
									document.getElementById("comment_id").value = commentId;
									document.getElementById("deleteCommentFormId").submit();
								}
							</script>

						<?php
							}
						?>				  
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

                
            <?php
                require_once 'footer.php';
            ?>

		</div>
	</body>
</html>