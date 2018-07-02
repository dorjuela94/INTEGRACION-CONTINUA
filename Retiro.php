<?php

	?>

<div id="welcome">
	
		<head>
		<title>Menu Desplegable</title>
		<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
	</head>
	<h2>Bienvenido <?php echo $_SESSION["nombre"]?> <span> </span></h2>
<div class="container">
	<p>
		<a href="./index.php" class="btn btn-warning" role="button">Cerrar Sesi&oacute;n</a>
		<a href="./CuentaCliente.php" title="Regresar" class="btn btn-info" role="button">Regresar</a>
	</p>
	<form method="post"	action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
		<label>TIPO DE CUENTA: </label> <select class="form-control" id="tipocuenta" name="tipocuenta" autofocus required>
			<option selected value="">Elige una opci&oacute;n</option>
			<option value="ahorros">AHORROS</option>
			<option value="corriente">CORRIENTE</option>
			
		</select> <br /> <br /> <label>CANTIDAD A RETIRAR: </label> <select
			class="form-control" id="canal" name="cantidad" autofocus >
			 <p>
                <label for="user_login">VALOR :<br />
                <input type="text" name="usuario" id="usuario" class="input" value=""  size="20" required /></label>
            </p
		</select> <br /> <br /> <label>¿DESEA NOTIFICAR LA TRANSACCIÓN?: </label>
		<select class="form-control" id="tienda" name="tiempo" required>
			<option selected value="">Elige una opción</option>
			<option value="Suficiente">SI</option>
			<option value="Insuficiente">NO</option>
		</select> <br> 
		<input class="btn btn-primary" type="submit"name="submit" value="Enviar" href="./CuentaCliente.php">
		<a href="./CuentaCliente.php" title="Regresar" class="btn btn-info" role="button">Regresar</a>
		<br>
	</form>
	<br>
</div>
<?php
	
	include ("includes/footer.php");

?>
</div>