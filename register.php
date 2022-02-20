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
						if(isset($_GET['success'])){
					?>
						<div class="alert alert-success alert-dismissible fade show" role="alert">
						Пользователь успешно зарегистрирован!
						  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<?php
						}
					?>
					<?php 
						if(isset($_GET['usererror'])){
					?>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
						Пользователь с таким email уже существует!
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
					<form action="toregister.php" method="post" id="register_from_id">
						<div class="mt-2">
							<label>Введите email : </label>
							<input type="email" class="form-control mt-2" name="email" placeholder="Введите email:" required id="user_email">
							<label class="text-danger" id="user_email_error"></label>
						</div>
						<div class="mt-2">
							<label>Введите пароль : </label>
							<input type="password" class="form-control mt-2" name="password" placeholder="Введите пароль:" required id="user_password">
							<label class="text-danger" id="user_password_error"></label>
						</div>
						<div class="mt-2">
							<label>Повторно ввведите пароль  : </label>
							<input type="password" class="form-control mt-2" name="re_password" placeholder="Повторно введите пароль:" required id="re_user_password">
							<label class="text-danger" id="user_repassword_error"></label>
						</div>
						<div class="mt-2">
							<label>Login : </label>
							<input type="email" class="form-control mt-2" name="full_name" placeholder="Введите логин:" required id="user_full_name">
							<label class="text-danger" id="user_email_error"></label>
						</div>
						<div class="mt-3 mb-3">
							<button type="button" onclick="register()" class="btn btn-dark">Отправить</button>
						</div>
					</form>
					<script type="text/javascript">
						function register(){
							var userEmail = document.getElementById("user_email");
							var userPassword = document.getElementById("user_password");
							var userRepassword = document.getElementById("re_user_password");

							var check = true;

							if(userPassword.value.length<6){
								document.getElementById("user_password_error").innerHTML = "Пароль меньше чем 6 символов";
								check = false;
							}

							if(userRepassword.value.length<6){
								document.getElementById("user_repassword_error").innerHTML = "Пароль меньше чем 6 символов";
								check = false;
							}

							if(check){
								document.getElementById("user_repassword_error").innerHTML = "";
								document.getElementById("user_password_error").innerHTML = "";

								if(userPassword.value==userRepassword.value){
									document.getElementById("register_from_id").submit();
								}else{
									document.getElementById("user_repassword_error").innerHTML = "пароли не совпадают";
								}
							}
						}
					</script>
				</div>
			</div>
            <?php
                require_once 'footer.php';
            ?>
		</div>
	</body>
</html>