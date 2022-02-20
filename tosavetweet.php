<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['id']) && isset($_POST['title']) && isset($_POST['short_content']) && isset($_POST['content'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				$tweet = getTweet($_POST['id']);

				if($tweet!=null && $tweet['user_id']==$user['id']){

					saveTweet($_POST['id'], htmlspecialchars($_POST['title']), $_POST['short_content'], $_POST['content']);

					$redirect = "readtweet.php?id=".$_POST['id']."&success";
				
				}

			}

		}

	}

	header("Location:$redirect");
	
?>