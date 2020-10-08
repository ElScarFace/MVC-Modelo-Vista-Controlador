<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script type="text/javascript"></script>
</head>
<body>
	<header></header>
	<main>
		<form method="POST" action="">
			<p>Nombres:<input type="text" name="txtnom"> </p>
			<p>Precio:<input type="number" name="txtpre"> </p>
			<button type="submit">Registrar Servicios</button>
			
		</form>

		<?php 
		if ($_POST) {
			# code...
		
		require_once("../controllers/controlador.php");
		$Servicios->Crear();

	}



		 ?>



	</main>

</body>
</html>