<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['full_name'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				updateProfile($user['id'], $_POST['full_name']);

				$_SESSION['CURRENT_USER']['full_name'] = $_POST['full_name'];
				$redirect = "profile.php?success";

			}

		}

	}

	header("Location:$redirect");
	
?>