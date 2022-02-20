<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['title']) && isset($_POST['short_content']) && isset($_POST['content'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				addTweet($user['id'], htmlspecialchars($_POST['title']), htmlspecialchars($_POST['short_content']), htmlspecialchars($_POST['content']));

				$redirect = "addtweet.php?success";

			}

		}

	}

	header("Location:$redirect");
	
?>