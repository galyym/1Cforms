<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['old_password']) && isset($_POST['new_password']) && isset($_POST['repeat_new_password'])){

			require_once 'user.php';

			if($online){

				$redirect = "profile.php?error";

				if($user['password']===sha1($_POST['old_password'])){

					if($_POST['new_password']===$_POST['repeat_new_password']){

						require_once 'db.php';

						updatePassword($user['id'], sha1($_POST['new_password']));
						$_SESSION['CURRENT_USER']['new_password'] = sha1($_POST['password']);
						$redirect = "profile.php?success";

					}

				}

			}

		}

	}

	header("Location:$redirect");
	
?>