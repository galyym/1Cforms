<?php

    $redirect = "index.php";

    if($_SERVER['REQUEST_METHOD']==='POST'){

        if(isset($_POST['name_company']) && isset($_POST['name']) && isset($_POST['surname']) && isset($_POST['email']) && isset($_POST['postcode']) && isset($_POST['region']) && isset($_POST['city']) && isset($_POST['street']) && isset($_POST['numhouse']) && is_numeric($_POST['postcode']) && is_numeric($_POST['numhouse'])){

            require_once 'db.php';

            addPartner($_POST['name_company'],$_POST['name'], $_POST['surname'], $_POST['email'], $_POST['postcode'], $_POST['region'], $_POST['city'], $_POST['street'], $_POST['numhouse']);

        }

        $redirect = "addpartner.php?success";

    }

    header("Location:$redirect");
?>