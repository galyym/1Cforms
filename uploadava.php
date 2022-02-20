<?php 

	$redirect = "index.php";

	//print_r($_FILES);

	if($_SERVER['REQUEST_METHOD']==='POST'){

		if(isset($_FILES['user_picutre'])){

			require_once 'user.php';

			if($online){

				require_once 'db.php';

				if($_FILES['user_picutre']['type']=='image/jpeg' || $_FILES['user_picutre']['type']=='image/png'){

					if($_FILES['user_picutre']['size']<=1024*1024){

						$fileName = "avatars/".sha1($user['id']."avatar").".jpg";

						move_uploaded_file($_FILES['user_picutre']['tmp_name'], $fileName);

						updateAvatar($user['id'], $fileName);
						$_SESSION['CURRENT_USER']['avatar'] = $fileName;

						$redirect = "profile.php";

					}

				}


			}

		}

	}

	header("Location:$redirect");
	
?>