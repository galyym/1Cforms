<?php 

	$redirect = "index.php";

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_POST['comment_id']) && isset($_POST['tweet_id'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				$tweet = getTweet($_POST['tweet_id']);

				if($tweet!=null){

					$comment = getComment($_POST['comment_id']);

					if($comment!=null && $comment['user_id']==$user['id'] && $tweet['id']==$comment['tweet_id']){

						deleteComment($_POST['comment_id']);
						$redirect = "readtweet.php?id=".$_POST['tweet_id'];

					}

				}

			}

		}

	}

	header("Location:$redirect");
	
?>