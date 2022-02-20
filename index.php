<?php

	require_once 'db.php';
	require_once 'user.php';

?>
<!DOCTYPE html>
<html>
	<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div class="container">
			<?php
				require_once "header.php";
			?>
			<div class="row mt-3">
				<div class="col-3 main__content">
					<div class="services__content">
						<a href="#" class="link-dark">Автоматизатция</a><br>
						<a href="itservice.php" class="link-dark">IT - услуги</a><br>
                        <?php if($online && $user['full_name'] == 'Админ'){?>            <!-- Админ -> это самое не лучшее решение -->
                            <a href="additservice.php" class="link-dark">Добавить ИТ-услуги</a>
                        <?php } ?>
					</div>
				</div>
				<div class="col-9">
						<div class="mt-3">
							<?php
								$tweets = getAllTweets();
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
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-12">
					<?php
						require_once "footer.php";
					?>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>