

<?php
	
	require_once 'user.php';

	if($online){
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

			<div class="container mt-3">
				<h1 class="text-center">Welcome <?php echo $user['full_name']; ?></h1>

				<div class="container mt-3">
					<div class="row">
						<div class="col-6 mx-auto">
							
							<div class="card">
							<form action="uploadava.php" method="post" enctype="multipart/form-data">
								<?php
									$picURL = "avatars/default.png";
									if($user['avatar']!=null){
										$picURL = $user['avatar'];
									}
								?>
								<img src="<?php echo $picURL; ?>" class="card-img-top">
								<div class="card-body">
									<div class="mb-3">
									<label class="form-label">Choose avatar file</label>
									<input class="form-control" type="file" name = "user_picutre">
									</div>
									<button class="btn btn-primary">UPLOAD PICTURE</button>
								</div>
							</form>
							</div>

						</div>
					</div>
				</div>

				<div class="row mt-3">
					<div class="col-6 mx-auto">
						<form action="updateprofile.php" method="post">
							<div class="mt-2">
								<label>FULL NAME</label>
								<input type="text" name="full_name" class="form-control mt-2" value="<?php echo $user['full_name']; ?>" >
							</div>							
							<div class="mt-3">
								<button class="btn btn-success">UPDATE PROFILE</button>
							</div>
						</form>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-6 mx-auto">
						<form action="updatepassword.php" method="post">
							<div class="mt-2">
								<label>OLD PASSWORD</label>
								<input type="password" name="old_password" class="form-control mt-2">
							</div>
							<div class="mt-2">
								<label>NEW PASSWORD</label>
								<input type="password" name="new_password" class="form-control mt-2">
							</div>
							<div class="mt-2">
								<label>REPEAT NEW PASSWORD</label>
								<input type="password" name="repeat_new_password" class="form-control mt-2">
							</div>
							<div class="mt-3">
								<button class="btn btn-success">UPDATE PASSWORD</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</body>
		<div class="container mt-3">
			<?php
				require_once 'footer.php';
			?>
		</div>
	</html>
<?php
	}else{

		header("Location:login.php");

	}
?>