<?php

	require_once 'db.php';
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
				require_once "header.php";
			?>
			<div class="row mt-3">
				<div class="col-12">

                    <?php
                        if($online){
                    ?>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Название компании</th>
                                    <th>Имя</th>
                                    <th>Фамилия</th>
                                    <th width="10%">Details</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php
                                    $partners = getAllPartners();
                                    if($partners!=null){
                                        foreach($partners as $prt){

                                ?>

                                        <tr>
                                            <td>
                                                <?php echo $prt['id']; ?>
                                            </td>
                                            <td>
                                                <?php echo $prt['name_company']; ?>
                                            </td>
                                            <td>
                                                <?php echo $prt['name']; ?>
                                            </td>
                                            <td>
                                                <?php echo $prt['surname']; ?>
                                            </td>
                                            <td>
                                                <a href="details.php?id=<?php echo $prt['id'];?>" class="btn btn-primary btn-sm">Details</a>
                                            </td>								
                                        </tr>

                                <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    <?php
                        }
                    ?>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-12">
					<?php
						require_once "footer.php";
					?>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>