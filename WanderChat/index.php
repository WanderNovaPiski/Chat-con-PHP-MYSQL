<?php
include "db.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Wander Nova App</title>
	<link rel="stylesheet" type="text/css" href="estilos.css">
	<link href="https://fonts.googleapis.com/css?family=Mukta+Vaani" rel="stylesheet">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

	<script type="text/javascript">
		function ajax(){
			var req = new XMLHttpRequest();

			req.onreadystatechange = function(){
				if (req.readyState == 4 && req.status == 200) {
					document.getElementById('chat').innerHTML = req.responseText;
				}
			}

			req.open('GET', 'chat.php', true);
			req.send();
		}

		//linea que hace que se refreseque la pagina cada segundo
		setInterval(function(){ajax();}, 1000);
	</script>
</head>
<body onload="ajax();" style="background-color: #002047; 	font-family:Homer Simpson UI"; >

	<div id="contenedor">
	<center>
	<h1>Derwan App</h1>
		<hr>
	</center>	
	
		<div id="caja-chat">
			<div id="chat"></div>
		</div>
	
		<form method="POST" action="index.php">
	
			<input type="text" name="nombre" placeholder="Ingresa tu Nombre" class="form-control" aria-label="Sizing example input"><br>
		
			<textarea name="mensaje" placeholder=" Mensaje"></textarea><br>
			<button type="submit"  name="enviar" class="btn btn-success btn btn-block">Enviar Mensaje</button>

		</form>

		<?php
			if (isset($_POST['enviar'])) {
				
				$nombre = $_POST['nombre'];
				$mensaje = $_POST['mensaje'];


				$consulta = "INSERT INTO derwanchat (nombre, mensaje) VALUES ('$nombre', '$mensaje')";

				$ejecutar = $conexion->query($consulta);

				if ($ejecutar) {
					echo "<embed loop='false' src='beep.mp3' hidden='true' autoplay='true'>";
				}
			}

		?>
	</div>

</body>
</html>