<?php
	include "db.php";
	///consultamos a la base
	$consulta = "SELECT * FROM derwanchat ORDER BY id DESC";
	$ejecutar = $conexion->query($consulta); 
	while($fila = $ejecutar->fetch_array()) : 
?>
	<div id="datos-chat">
		<span style="color: #1C7BC1; font-family:sans-serif"><?php echo $fila['nombre']; ?> :</span>
		<span style="color: #01070E; "><?php echo $fila['mensaje']; ?></span>
		<span style="float: right;"><?php echo formatearFecha($fila['fecha']); ?></span>
	</div>
	
	<?php endwhile; ?>
