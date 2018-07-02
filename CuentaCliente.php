<?php 
session_start();
?>
<?php include("includes/header.php"); ?>
<div id="welcome">	
	<h2>Bienvenido, <span><?php echo $_SESSION['session_name'];?> <?php echo $_SESSION['session_apellido'];?> </span></h2>
	<p>Finalice sesion <a  href="index.php">aqui!</a></p>
	<?php include("menu.php"); ?>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
</div>
<?php include("includes/footer.php"); ?>
<?

