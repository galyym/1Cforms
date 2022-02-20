<?php

	require_once 'db.php';

?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	</head>
	<body>
		<div class="container">
			<?php
				require_once "header.php";
			?>
			<div class="row mt-1">
				<div class="col-6 mx-auto">

					<?php
						if(isset($_GET['success'])){
					?>
						<div class="alert alert-success alert-dismissible fade show" role="alert">
							Partner added successfully!
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<?php
						}
					?>

					<form action="toaddpartner.php" method="post">
						<div class="mt-3">
							<label>Название организации: </label>
							<input type="text" name="name_company" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Имя: </label>
							<input type="text" name="name" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Фамилия: </label>
							<input type="text" name="surname" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Email: </label>
							<input type="text" name="email" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Почтовой индеск: </label>
							<input type="number" name="postcode" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Регион: </label>
							<input type="text" name="region" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Город: </label>
							<input type="text" name="city" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Улица: </label>
							<input type="text" name="street" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<label>Дом: </label>
							<input type="number" name="numhouse" class="form-control mt-3" required>
						</div>
						<div class="mt-3">
							<button class="btn btn-success">Добавить</button>
						</div>
					</form>
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