<div class="modal fade" id="modal_comprar_inv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Compra de Producto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div> 
            <div class="modal-body">
                <form id="FormCompraInv">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Codigo</label>
                                <input type="hidden" id="iid" name="iid" class="form-control" readonly>
                                <input type="text" id="icodigo" name="icodigo" class="form-control"  readonly>
                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Producto</label>
                                <input type="text" id="iproducto" name="iproducto" class="form-control"  readonly>
                            </div>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="icomprobante" class="form-label">Nro Comprobante</label>
                                <input type="text" id="icomprobante" name="icomprobante" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="iexistencia">Cantidad</label><br>
                                <input type="number" name="iexistencia" id="iexistencia" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="mb-3">
                                <label for="ipesounitario" class="form-label">Peso x Unidad</label>
                                <input type="text" id="ipesounitario" name="ipesounitario" class="form-control">
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="accion" value="insertar_compra_inv">
                    <br>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="register" name="registrar">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>         
                    <input type="hidden" id="cmp_estado" name="cmp_estado" class="form-control" value="0">
                    <input type="hidden" id="cmp_proveedor" name="cmp_proveedor" class="form-control" value="NINGUNO">
                <?php include "../includes/footer.php"; ?>
            </form>
        </div>
    </div>
</div>
</div>

<script>
    function CompraInv(id) {
        var datosFormulario = $("#FormCompraInv" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('inventario.php');
                    }, 10);
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
