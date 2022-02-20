<?php
	try{

		$connection = new PDO("mysql:host=localhost;dbname=1cform_db", "root", "");

	}catch(PDOException $e){

		echo $e->getMessage();

	}

	function getAllPartners(){

		global $connection;

		try{

			$query = $connection->prepare("SELECT * FROM 1cform");
			$query->execute();

			$result = $query->fetchAll();

		}catch(Exception $e){
			echo $e->getMessage();
		}

		return $result;
	}

	function addPartner($name_company, $name, $surname, $email, $postcode, $region, $city, $street, $numhouse){
		global $connection;
		try{

			$query = $connection->prepare("
					INSERT INTO 1cform (name_company,name,surname,email,postcode,region,city,street,numhouse) 
					VALUES (:w_name_company,:w_name, :w_surname, :w_email, :w_postcode, :w_region, :w_city, :w_street, :w_numhouse)
				");

				$query->execute(array(
					"w_name_company"=>$name_company,
					"w_name"=>$name,
					"w_surname"=>$surname,
					"w_email"=>$email,
					"w_postcode"=>$postcode,
					"w_region"=>$region,
					"w_city"=>$city,
					"w_street"=>$street,
					"w_numhouse"=>$numhouse
				));

		}catch(Exception $e){
			echo $e->getMessage();
		}

	}

	function getPartner($id){

		global $connection;

		try{

			$query = $connection->prepare("SELECT * FROM 1cform WHERE id = :w_id");
			$query->execute(array("w_id"=>$id));

			$result = $query->fetch();
			
			
		}catch(Exception $e){
			echo $e->getMessage();	
		}

		return $result;
	}

	function getUser($email){

		global $connection;

		try{

			$query = $connection->prepare("
				SELECT * FROM users WHERE email = :u_email
			");
			$query->execute(array("u_email" =>$email));

			$result = $query->fetch();


		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function addUser($email, $password, $fullName){
		
		global $connection;

		try{
            $avatar = 'avatars/default.png';
			$query = $connection->prepare("
				INSERT INTO users (email, password, full_name, avatar) 
				VALUES (:email, :password, :full_name, :avatar)
			");

			$query->execute(array("email"=>$email, "password"=>$password, "full_name"=>$fullName, "avatar"=>$avatar));

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	//tweet-------------------------------------------

	function addTweet($userId, $title, $shortContent, $content){
		
		global $connection;

		try{

			$query = $connection->prepare("
				INSERT INTO tweets (user_id, title, short_content, content, post_date) 
				VALUES (:user_id, :title, :short_content, :content, NOW())
			");

			$query->execute(
				array(
					"user_id"=>$userId, 
					"title"=>$title,
					"short_content"=>$shortContent,
					"content"=>$content
				)
			);

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function getAllTweets(){
		
		global $connection;

		try{

			$query = $connection->prepare("
				SELECT t.id, t.title, t.short_content, t.post_date, t.user_id, u.full_name 
				FROM tweets t 
				INNER JOIN users u ON u.id = t.user_id 
				ORDER BY t.post_date DESC 
			");

			$query->execute();
			$result = $query->fetchAll();

		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function getTweet($id){
		
		global $connection;

		try{

			$query = $connection->prepare("
				SELECT t.id, t.title, t.content, t.short_content, t.post_date, t.user_id, u.full_name 
				FROM tweets t 
				INNER JOIN users u ON u.id = t.user_id 
				WHERE t.id = :id 
			");

			$query->execute(array("id"=>$id));
			$result = $query->fetch();

		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function saveTweet($id, $title, $shortContent, $content){
		
		global $connection;

		try{

			$query = $connection->prepare("
				UPDATE tweets SET title = :title, short_content = :short_content, content = :content WHERE id = :id 
			");

			$query->execute(
				array(
					"id"=>$id, 
					"title"=>$title,
					"short_content"=>$shortContent,
					"content"=>$content
				)
			);

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function deleteTweet($id){
		
		global $connection;

		try{

			$query = $connection->prepare("
				DELETE FROM tweets WHERE id = :id 
			");

			$query->execute(
				array(
					"id"=>$id
				)
			);

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	//comment-----------------------------------

	function addComment($tweetId, $userId, $comment){
		
		global $connection;

		try{

			$query = $connection->prepare("
				INSERT INTO comments (tweet_id, user_id, comment, post_date) 
				VALUES (:tweet_id, :user_id, :comment, NOW())
			");

			$query->execute(
				array(
					"user_id"=>$userId, 
					"tweet_id"=>$tweetId,
					"comment"=>$comment
				)
			);

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function getAllComments($tweetId){
		
		global $connection;

		try{

			$query = $connection->prepare("
				SELECT c.id, c.comment, c.user_id, c.tweet_id, c.post_date, u.full_name 
				FROM comments c 
				INNER JOIN users u ON u.id = c.user_id 
				WHERE c.tweet_id = :tweet_id 
				ORDER BY c.post_date DESC 
			");

			$query->execute(array("tweet_id"=>$tweetId));
			$result = $query->fetchAll();

		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function getComment($commentId){
		
		global $connection;

		try{

			$query = $connection->prepare("
				SELECT c.id, c.comment, c.user_id, c.tweet_id, c.post_date, u.full_name 
				FROM comments c 
				INNER JOIN users u ON u.id = c.user_id 
				WHERE c.id = :comment_id
			");

			$query->execute(array("comment_id"=>$commentId));
			$result = $query->fetch();

		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function deleteComment($commentId){
		
		global $connection;

		try{

			$query = $connection->prepare("
				DELETE FROM comments WHERE id = :comment_id 
			");

			$query->execute(
				array(
					"comment_id"=>$commentId
				)
			);

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function updateProfile($userId, $fullName){
		
		global $connection;

		try{

			$query = $connection->prepare("
				UPDATE users SET full_name = :full_name WHERE id = :id
			");

			$query->execute(array("id"=>$userId, "full_name"=>$fullName));

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function updatePassword($userId, $password){
		
		global $connection;

		try{

			$query = $connection->prepare("
				UPDATE users SET password = :password WHERE id = :id
			");

			$query->execute(array("id"=>$userId, "password"=>$password));

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

	function searchTweets($key){
		
		global $connection;

		try{

			$query = $connection->prepare("
				SELECT DISTINCT t.id, t.title, t.short_content, t.post_date, t.user_id, u.full_name 
				FROM tweets t 
				INNER JOIN users u ON u.id = t.user_id 
				WHERE UPPER(t.title) LIKE UPPER(:key) OR UPPER(t.content) LIKE UPPER(:key) OR UPPER(t.short_content) LIKE UPPER(:key) 
				ORDER BY t.post_date DESC 
			");

			$query->execute(array("key"=>"%$key%"));
			$result = $query->fetchAll();

		}catch(PDOException $e){
			echo $e->getMessage();
		}

		return $result;

	}

	function updateAvatar($user_id, $url){
		
		global $connection;

		try{

			$query = $connection->prepare("
				UPDATE users SET avatar =:avatar WHERE id = :id
			");

			$query->execute(array("avatar"=>$url, "id"=>$user_id));

		}catch(PDOException $e){
			echo $e->getMessage();
		}

	}

//service-----------------------------------

    function addService($title, $text, $price){

        global $connection;

        try{

            $query = $connection->prepare("
                    INSERT INTO services (title, text, price) 
                    VALUES (:title, :text, :price)
                ");

            $query->execute(
                array(
                    "title"=>$title,
                    "text"=>$text,
                    "price"=>$price
                )
            );

        }catch(PDOException $e){
            echo $e->getMessage();
        }

    }

    function getAllServices(){

        global $connection;

        try{

            $query = $connection->prepare("SELECT * FROM services");
            $query->execute();

            $result = $query->fetchAll();

        }catch(Exception $e){
            echo $e->getMessage();
        }

        return $result;
    }
?>