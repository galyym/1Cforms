<?php

$redirect = "index.php";

if($_SERVER['REQUEST_METHOD']==='POST'){

    if(isset($_POST['title']) && isset($_POST['text']) && isset($_POST['price'])){

        require_once 'user.php';

        if($online){

            require_once 'db.php';

            addService(htmlspecialchars($_POST['title']), htmlspecialchars($_POST['text']), htmlspecialchars($_POST['price']));

            $redirect = "additservice.php?success";

        }

    }

}

header("Location:$redirect");

?>
