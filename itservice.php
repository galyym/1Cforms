<?php
    require_once './db.php';
    require_once './user.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <div class="container">
        <div>
            <?php require_once 'header.php'?>
        </div>
        <?php
            $services = getAllServices();
            foreach ($services as $srv){
        ?>
            <div class="card w-75 mx-auto mt-3 mb-3">
                <div class="card-body">
                    <h5 class="card-title"><?=$srv['title']?></h5>
                    <p class="card-text"><?=$srv['text']?></p>
                    <p class="card-text"><b>Цена: <?=$srv['price']?></b></p>
                    <?php if($online){ ?>
                        <a href='#' class='btn btn-primary'>Заказать</a>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
        <div>
            <?php require_once 'footer.php';?>
        </div>
    </div>
</body>
