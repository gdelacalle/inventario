<div class="modal fade" id="editarvehiculos<?php echo $fila['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header ">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Datos del Vehiculo</h3>
                <button type="button" class="btn " data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="EditarVehiculosForm<?php echo $fila['id']; ?>" method="POST">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="marca" class="form-label">Marca</label>
                            <input type="text" id="marca" name="marca" value="<?php echo $fila['marca']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="modelo" class="form-label">Modelo</label>
                            <input type="text" id="modelo" name="modelo" value="<?php echo $fila['modelo']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="patente" class="form-label">Patente</label>
                            <input type="text" id="patente" name="patente" value="<?php echo $fila['patente']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="kmts" class="form-label">Kilometros</label>
                            <input type="text" id="kmts" name="kmts" value="<?php echo $fila['kmts']; ?>" class="form-control" required>
                        </div>
                    </div>
                <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="nrochasis" class="form-label">N° Chasis</label>
                            <input type="text" id="nrochasis" name="nrochasis" value="<?php echo $fila['nro_chasis']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="nromotor" class="form-label">N° Motor</label>
                            <input type="text" id="nromotor" name="nromotor" value="<?php echo $fila['nro_motor']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="mb-3">
                            <label for="modano" class="form-label">Modelo Año</label>
                            <input type="text" id="modano" name="modano" value="<?php echo $fila['ano']; ?>" class="form-control" required>
                        </div>
                    </div>
                </div>
                    <br>
                    <input type="hidden" name="accion" value="editar_vehiculo">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="EditarVehiculo(<?php echo $fila['id']; ?>)">Modificar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div> 
<script>
    function EditarVehiculo(id) {
        var datosFormulario = $("#EditarVehiculosForm" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('vehiculos.php');
                    }, 200);
                } else {
                    alert("Ha ocurrido un error al actualizar el registro");
                }
            },
            error: function() {
                alert("Error de comunicacion con el servidor");
            }
        });
    }
</script>