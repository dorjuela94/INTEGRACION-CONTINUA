<html>
	<head>
		<title>Menu Desplegable</title>
		<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
	</head>
<body>
		
<ul class="nav">
	
	
<!-- ************MENU ADMINISTRADOR **************** -->
	<?php 
	if($_SESSION['session_perfil']<=1){ //MENU ADMINISTRADOR
	?>
	
	<?php
	}
	?>
<!-- **************************************	 -->


<!-- ************MENU REVISOR **************** -->
	<?php 
	if($_SESSION['session_perfil']<=2){ 
	?>
	<li><a href="Retiro/">RETIRAR DINERO</a></li>
	<li><a href="Reportes/">REALIZAR TRANSFERENCIA</a></li>
	<li><a href="includes/reportecuenta.html">DETALLE CUENTA</a></li>
		 
	
	
	<?php
	}
	?>
<!-- **************************************	 -->

<!-- ************MENU REPORTE **************** -->
	<?php 
	if($_SESSION['session_perfil']==3){ 
	?>
	 <li><a href="Reportes/">Reporte Inspecciones</a></li>
	<?php
	}
	?>
<!-- **************************************	 -->

</ul>
		
</body>
</html>