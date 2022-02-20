<?php
	
	require_once 'user.php';

	if($online){
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

			<div class="container mt-3 mb-3">
				<div class="row mt-3">
					<div class="col-10 mx-auto">
						<form action="toaddtweet.php" method="post">
							<div class="mt-2">
								<label>Заголовка :</label>
								<input type="text" required name="title" class="form-control mt-2" placeholder="Введите заголовок">
							</div>
							<div class="mt-4">
								<label>Короткое содержание :</label>
								<textarea class="form-control mt-2" name="short_content" ></textarea>
							</div>
							<div class="mt-4">
								<label>Новости :</label>
								<textarea class="form-control mt-2" name="content" ></textarea>
							</div>
							<div class="mt-4">
								<button class="btn btn-success">Добавить новости</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</body>
		<?php
			require_once 'footer.php';
		?>
	</html>
<?php
	}else{

		header("Location:login.php");

	}
?>