<?php
error_reporting(0);
session_start();

$permiso = $_SESSION['type'];
if ($permiso == "3") {

    echo "<script language='JavaScript'>
    alert('Error: No tiene permiso para ingresar a esa página ');
    location.assign('../views/index.php');
    </script>";

    die();
}

$granTotal=0;
$id = $_GET['id'];
?>
<?php include "../includes/header.php"; ?>

<div class="row">
    <div class="col-lg-12">
        <div class="form-group">
            <h4 class="text-center">Datos de la Obra</h4>
        </div>
        <div class="card">
            <div class="card-body">
            <form id="remitoObraForm">
                   <div class="row">
                   <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="id_obra">Obra</label><br>
                                <select name="id_obra" id="id_obra" class="form-control"readonly >
                                    <?php
                                    include("../includes/db.php");
                                    $sql = "SELECT * FROM obras WHERE id = '$id'";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id'] . '" ' . $selected . '>' . $consulta['descripcion'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div> 
                        <div class="col-sm-8">
                            <div class="mb-3">
                                <label for="id_obra">Detalle</label><br>
                                <select name="detalle" id="detalle" class="form-control"readonly >
                                    <?php
                                    include("../includes/db.php");        
                                    $sql = "SELECT * FROM obras WHERE id = '$id'";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['detalle'] . '" ' . $selected . '>' . $consulta['detalle'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        
            <div class="col-sm-2">
                <br>
                <br>

                <a href="../reportes/imprimirremitoobra.php?id=<?php echo $id ?>"class="btn btn-danger float-right btn-generar" type="button">Imprimir Remito</a>
            </div>
            <div class="card-body">
        </form>
            <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>  
                    <th>ID</th>
                    <th>Producto</th>
                    <th>Sección</th>
                    <th>Cant</th>
                    <th>Retira</th>
                    <th>Seleccionar</th>
                    <th>Proceso</th>
                    <th>Terminado</th>
                    <th>Entregado</th>
                    <th>N° Remito</th>
                    <th>Medida</th>
                    <th>Unidad</th>
                    <th>Peso Unitario</th>
                    <th>Peso Total</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    require_once("../includes/db.php");
                    
                    $result = mysqli_query($conexion, "SELECT p.id,e.seccion,i.id,i.producto,p.cantidad,p.cant_proceso,
                    p.cant_terminadas,p.cant_obra,p.metros,p.unidad,o.descripcion,o.id_cliente,p.peso,p.pesototal,p.nro_remito,
                    e.id as sid
                    FROM presupuesto as p INNER JOIN inventario as i INNER JOIN equivalencias as e INNER JOIN obras as o 
                    ON p.id_producto = i.id AND e.id = p.id_seccion AND p.id_obra = o.id AND p.id_obra = $id GROUP BY p.id ORDER BY p.id ASC");   
                while ($fila = mysqli_fetch_assoc($result)) :                       
                ?>
                <tr>
                    <td width="1%"><?php echo $fila['id']; ?></td>
                    <td width="15%"><?php echo $fila['producto']; ?></td>
                    <td width="15%"><?php echo $fila['seccion']; ?></td>
                    <td width="15%"><center><?php echo $fila['cantidad']; ?></center></td>
                    <td><form action="cambiar_cantidad.php" method="post">
						    <input name="retira" type="hidden">
						    <input class="retira" min="1" name="retira" class="form-control" required type="number">
                        </form>
                    </td>
                    <td width="1%"><center><input class="form-check-input seleccionarRegistro" name="seleccion" type="checkbox"></center></td>
                    <td width="5%"><center><?php echo $fila['cant_proceso']; ?></center></td>
                    <td width="5%"><center><?php echo $fila['cant_terminadas']; ?></center></td>
                    <td width="5%"><center><?php echo $fila['cant_obra']; ?></center></td>
                    <td width="5%"><center><a target="_blank" class="nav-link" href="../reportes/imprimirremitocliente.php?numero=<?php echo $fila['nro_remito']; ?>">
                    <?php echo $fila['nro_remito']; ?></center></td>
                    <td width="5%"><right><?php echo $fila['metros']; ?></td>
                    <td width="5%"><?php echo $fila['unidad']; ?></td>
                    <td width="10%"><?php echo $fila['peso']; ?></td>
                    <td width="10%"><?php echo $fila['pesototal']; ?></td>
                </tr>
                <?php $cliente += $fila['id_cliente'];?>
                <?php $granTotal += $fila['pesototal'];?>
                <?php endwhile;?>  
            </tbody>
        </table>
        <center><h2>Total Entregado: <?php echo $granTotal; ?> KGs</h2>
        <?php include "../includes/footer.php"; ?>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#remitoObraForm').submit(function(e) {
            e.preventDefault(); // Evita que el formulario se envíe de forma predeterminada
            var formData = $(this).serialize(); // Serializa los datos del formulario
            $.ajax({
                url: '../includes/functions.php',
                type: 'POST',
                data: formData,
                dataType: 'json', // Espera una respuesta en formato JSON
                success: function(response) {
                    if (response.status === 'success') {
                        Swal.fire({
                            icon: 'success',
                            title: 'Éxito',
                            text: 'Cargado'
                        }).then(function() {
                            $.DataTable().ajax.reload();
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Ocurrió un error inesperado'
                        });
                    }
                },
                error: function(xhr, status, error) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Ocurrió un error inesperado'
                    });
                }                            
            });
        });
       $('#')
    });
</script>

<script>
    $('.btn-generar').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
                    title: '¿Desea Imprimir el Remito?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si',
                    cancelButtonText: 'No',
                }).then((result) => {
                        if (result.value) {
                            if (result.isConfirmed) {
                                Swal.fire(
                                    'success'
                                );
                                }else{
                                    Swal.fire(
                                        "Error!",
                                        "No se pudo Agregar, intente de nuevo.",
                                        "error"
                                );
                            }
                            document.location.href = href;
                        }
                    })
                })
    </script>
<script>
$(document).ready(function() {
    // Seleccionar todos los elementos con la clase "seleccionar" cuando se haga clic en un botón.
    $(".btn-generar").click(function() {
    // Array para almacenar los valores seleccionados.
    var valoresSeleccionados = [];

    // Recorrer todas las filas de la tabla excepto la primera (cabecera).
    $("#dataTable tr:not(:first-child)").each(function() {
      // Obtener la casilla de verificación en la fila actual.
      var checkbox = $(this).find(".seleccionarRegistro");

      // Verificar si la casilla de verificación está marcada.
      if (checkbox.prop("checked")) {
        var canti = this.closest("tr").querySelector(".cantidad");
        // Obtener los valores de la fila y agregarlos al array.
        var id = $(this).find("td:eq(0)").text();
        var producto = $(this).find("td:eq(1)").text();
        var seccion = $(this).find("td:eq(2)").text();
        var cantidad = canti.value;
        var medida = $(this).find("td:eq(5)").text();
        var unidad = $(this).find("td:eq(6)").text();
        var peso_u = $(this).find("td:eq(7)").text();
        var peso_t = $(this).find("td:eq(8)").text();
        cadena="producto="+producto+"&id="+id+"&seccion="+seccion+"&cantidad="+cantidad+"&medida="+medida+"&unidad="+unidad+"&peso_u="+peso_u+"&peso_t="+peso_t;
        // $.ajax({
		// 	type:"POST",
		// 	url:"../reportes/insert_remito.php",
		// 	data:cadena,
		// 	success:function(respuesta){
		// 			if(respuesta==true){
		// 					alertify.success("Se guardaron los cambios")
		// 			}else{
		// 				alertify.error('no se cargaron formas de pago')
		// 					carga=false;
		// 			}
		// 	}	
		// });
        valoresSeleccionados.push(cadena)
      }
    });

    // Hacer algo con los valores seleccionados (por ejemplo, mostrarlos en la consola).
    console.log(valoresSeleccionados);
  });
});
  

</script>