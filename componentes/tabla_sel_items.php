<div class="modal-dialog modal-xl" role="document">
        <div class="modal-body">
		<div class="modal-header bg-primary text-white">
	<div class="row">
		<div class="col-sm-12">
		<h2>Procesos</h2>
			<!-- <caption>
				<button class="btn btn-primary" data-toggle="modal" data-target="#modalnuevoproceso">
				Agregar Nuevo<span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
			</caption> -->
			<table class="table table-responsive table-striped table-hover table-condensed table-bordered ">
			<thead>
					<th>ID</th>
					<th>DETALLE</th>
					<th>SELEC.</th>
					
				</thead>
				<tbody>
				<?php
					require_once("../includes/db.php");

					$consulta="SELECT * FROM items";
					if($resultado = $mysqli->query($consulta)){
						while ($extraido = mysqli_fetch_array($resultado)){
							$datos=$extraido['id']."||".$extraido['descripcion'];
							$id=$extraido['id'];
				?>
						<tr>
							<td><?php echo $extraido['id'] ?></td>
							<td><?php echo $extraido['descripcion'] ?></td>
							<td>
								<input type="checkbox" value="<?php echo $datos ?>"></input>
								<!-- <input type="checkbox" value="<?php echo $datos ?>" checked></input> -->
								 
							</td>
						</tr> 
				<?php
						}
					}
				?>
				</tbody> 
			</table>
		</div>
	</div>