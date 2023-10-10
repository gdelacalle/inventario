<div class="modal fade" id="modal_editar_obra<?php echo $fila['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Datos de Obra</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="editObra<?php echo $fila['id']; ?>" method="POST">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-1">
                                <label for="iedescripcion" class="form-label">Descripcion</label>
                                <input type="text" id="iedescripcion" name="iedescripcion" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-1">
                                <label for="fechaentrega" class="form-label">Fecha de Entrega</label>
                                <input type="date" id="fechaentrega" name="fecha_entrega" class="form-control" pattern="\d{4}-\d{2}-\d{2}">
                            </div>
                        </div>        
                    <input type="hidden" name="accion" value="editar_obra">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="editarObra(<?php echo $fila['id']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
            </div>
            <?php include "../includes/footer.php"; ?>
            </form>
        </div>
    </div>
</div>
<script>
    function editarObra(id) {
        var datosFormulario = $("#editObra" + id).serialize();
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