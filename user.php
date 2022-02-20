<?php 
	
	session_start();

	$online = false;
	$user = null;
	if(isset($_SESSION['CURRENT_USER'])){
		$online = true;
		$user = $_SESSION['CURRENT_USER'];
	}

?>