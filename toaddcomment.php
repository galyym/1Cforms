<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['comment']) && isset($_POST['tweet_id'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				$tweet = getTweet($_POST['tweet_id']);

				if($tweet!=null){

					addComment($_POST['tweet_id'], $user['id'], htmlspecialchars($_POST['comment']));
					$redirect = "readtweet.php?id=".$_POST['tweet_id'];

				}

			}

		}

	}

	header("Location:$redirect");
	
?>