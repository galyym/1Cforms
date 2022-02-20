<?php
	require_once 'user.php';
?>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <div class="container">
        <?php
        require_once 'header.php';
        ?>
    </div>

    <div class="container mt-3 mb-3">
        <div class="row mt-3">
            <div class="col-10 mx-auto">
                <form action="toaddservice.php" method="POST">
                    <div class="mt-2">
                        <label>Заголовка :</label>
                        <input type="text" required name="title" class="form-control mt-2" placeholder="Введите заголовок">
                    </div>
                    <div class="mt-4">
                        <label>Описание :</label>
                        <input type="text" class="form-control mt-2" name="text" placeholder="Описание"></input>
                    </div>
                    <div class="mt-4">
                        <label>Цена :</label>
                        <input type="number" class="form-control mt-2" name="price" placeholder="Цена"></input>
                    </div>
                    <div class="mt-4">
                        <button class="btn btn-success">Добавить услугу</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <?php
    require_once 'footer.php';
    ?>
</body>
</html>