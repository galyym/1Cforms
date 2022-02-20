<?php
	require_once 'user.php';
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
			<div class="row">
				<div class="col-6 mx-auto">
					<?php 
						if(isset($_GET['usererror'])){
					?>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Пользователь с таким email не существует!
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<?php
						}
					?>
					<?php 
						if(isset($_GET['passworderror'])){
					?>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						  Пароль неверный
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<?php
						}
					?>
					<form action="auth.php" method="post">
						<div class="mt-2">
							<label>EMAIL : </label>
							<input type="email" class="form-control mt-2" name="email" placeholder="Введите email:" required>
						</div>
						<div class="mt-2">
							<label>Пароль : </label>
							<input type="password" class="form-control mt-2" name="password" placeholder="Введите пароль:" required>
						</div>
						<div class="mt-3 mb-3">
							<button class="btn btn-dark">Войти</button>
						</div>
					</form>
				</div>
			</div>
            <?php
                require_once 'footer.php';
            ?>
		</div>
	</body>
</html>