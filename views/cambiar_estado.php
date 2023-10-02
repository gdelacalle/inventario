<div class="modal fade" id="estadopresu<?php echo $fila['id']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Cambiar Estado del Presupuesto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
            <form id="cambiaestado<?php echo $fila['id']; ?>" method="POST">
                    <div class="row">                                                           
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Descripcion</label>
                                <input type="text" id="descripcion" name="descripcion" class="form-control" value="<?php echo $fila['descripcion']; ?>" readonly>
                            </div>
                    </div>
                    <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="estado">Estado</label><br>
                                <select name="estado" id="estado" class="form-control" >
                                    <option <?php echo $fila['estado'] === 'PENDIENTE' ? 'selected' : ''; ?> value="PENDIENTE">PENDIENTE</option>
                                    <option <?php echo $fila['estado'] === 'CONFIRMADA' ? 'selected' : ''; ?> value="CONFIRMADA">CONFIRMADA</option>
                                </select>
                            </div>
                        </div>
                    </div> 
                    <div class="col-sm-10">
                            <div class="mb-1">
                                <label for="contrato" class="form-label">Adjuntar Contrato</label>
                                    <input type="file" class="form-control-file" name="contrato" id="contrato" >
                                </div>
                            </div>    
                    
                    <input type="hidden" name="accion" value="cambia_estado_presupuesto">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">

                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="cambiarestado(<?php echo $fila['id'];?>)">Guardar</button>
                        
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
                <?php include "../includes/footer.php"; ?>
            </form>
        </div>
    </div>
</div>    


<script>
    function cambiarestado(id) {
        var datosFormulario = $("#cambiaestado" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('obras.php');
                    }, 100);
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