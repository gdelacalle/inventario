<div class="modal fade" id="modal_editar_equivalencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header ">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Equivalencia</h3>
                <button type="button" class="btn " data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="editEquivalencia<?php echo $fila['id']; ?>" method="POST">
                <div class="row">
                    <div class="col-sm-10">
                        <div class="mb-3">
                            <label for="eseccion" class="form-label">Seccion</label>
                            <input type="text" id="eseccion" name="eseccion" class="form-control" >
                        </div>
                    </div>
                    <br>
                    <input type="hidden" name="ideq" id="ideq">
                    <input type="hidden" name="accion" value="editar_equivalencia">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="editarEquival()">Modificar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function editarEquival() {
        //var datosFormulario = $("#editEquivalencia" + id).serialize();
        id=$('#ideq').val();
        seccion=$('#eseccion').val();
        datosFormulario="id="+id+"&seccion="+seccion+"&accion="+accion;
        alert(datosFormulario);
        $.ajax({
            url: "../consultas/update_eq.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('equivalencias.php');
                    }, 500);
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