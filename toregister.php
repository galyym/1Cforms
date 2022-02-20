<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['email']) && $_POST['email']!='' && isset($_POST['password']) && isset($_POST['re_password']) && isset($_POST['full_name'])){

			$redirect = "register.php?passworderror";

			if($_POST['password']===$_POST['re_password']){

				$redirect = "register.php?usererror";

				require_once 'db.php';
				
				$checkUser = getUser($_POST['email']);

				if($checkUser==null){

					$redirect = "register.php?success";
					addUser($_POST['email'], sha1($_POST['password']), $_POST['full_name']);

				}

			}

		}

	}

	header("Location:$redirect");
	
?>