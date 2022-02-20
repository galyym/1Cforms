<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['email']) && isset($_POST['password'])){

			require_once 'db.php';
			$user = getUser(htmlspecialchars($_POST['email']));

			$redirect = "login.php?usererror";

			if($user!=null && $user['id']!=null){

				$redirect = "login.php?passworderror";

				if($user['password']===sha1($_POST['password'])){

					session_start();
					$_SESSION['CURRENT_USER'] = $user;

					$redirect = "profile.php";

				}

			}

		}

	}

	header("Location:$redirect");
	
?>