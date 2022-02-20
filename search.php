<?php
	require_once 'user.php';
	require_once 'db.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<?php
			require_once 'head.php';
		?>
	</head>
	<body>
		<div class="container">
			<?php
				require_once 'header.php';
			?>
		</div>
		<div class="container mt-3">
			<?php
				if($key!=""){
			?>
				<div class="p-2 mb-2">
					<h5>Search results for key : "<?php echo $key; ?>"</h5>
				</div>
			<?php
				}
			?>
			<?php

				$tweets = searchTweets($key);

				if($tweets!=null){
					foreach($tweets as $tw){
			?>
				<div style="background-color: #dfe5f2;" class="p-3 mb-3">
					<h3>
						<a href="readtweet.php?id=<?php echo $tw['id']; ?>" style="text-decoration: none; color: darkblue;">
							<?php echo $tw['title']; ?>
						</a>
					</h3>
					<p>
						<?php
							echo htmlspecialchars_decode($tw['short_content']);
						?>
					</p>
					<p class="fw-bold">
						Posted by <?php echo $tw['full_name']; ?> at 
						<?php echo $tw['post_date']; ?>
					</p>
				</div>
			<?php
					}
				}
			?>
		</div>
	</body>
	<?php
		require_once 'footer.php';
	?>
</html>