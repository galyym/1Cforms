<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['id'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				$tweet = getTweet($_POST['id']);

				if($tweet!=null && $tweet['user_id']==$user['id']){

					deleteTweet($_POST['id']);
					
				}

			}

		}

	}

	header("Location:$redirect");
	
?>