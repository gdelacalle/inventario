<div class="modal fade" id="editarpresupuesto<?php echo $fila['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Confeccionando Presupuesto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="editPresupuesto<?php echo $fila['id']; ?>" method="POST">
                    <div class="row">                                                           
                        <div class="col-sm-4">
                            <div class="mb-1">
                                <label for="descripcion" class="form-label">Descripcion</label>
                                <input type="text" id="descripcion" name="descripcion" class="form-control" value="<?php echo $fila['descripcion']; ?>" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-1">
                                <label for="fecha_alta" class="form-label">Fecha de Alta</label>
                                <input type="date" id="fecha_alta" name="fecha_alta" class="form-control" value="<?php echo $fila['fecha_alta']; ?>" required pattern="\d{4}-\d{2}-\d{2}">
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="estado">Estado</label><br>
                                <select name="estado" id="estado" class="form-control" required>
                                    <option <?php echo $fila['estado'] === 'PENDIENTE' ? 'selected' : ''; ?> value="PENDIENTE">PENDIENTE</option>
                                    <option <?php echo $fila['estado'] === 'CONFIRMADA' ? 'selected' : ''; ?> value="CONFIRMADA">CONFIRMADA</option>
                                </select>
                            </div>
                        </div>
                        
                            <div class="card">
                <div class="card-header bg-primary text-white text-center">
                Seleccionar Productos
            </div>
            <div class="card-body">
            <div class="row">
                <div class="col-sm-1">
                    <div>
                        <label for="cantidad">Cantidad</label>
                        <input id="cantidad" class="form-control" type="text" name="cantidad" placeholder="Cant" required>
                    </div>
                </div>
            <div class="col-sm-3">
                <div class="mb-3">
                    <label for="id_producto">Producto</label><br>
                    <select name="id_producto" id="id_producto" class="form-control" required>
                        <option value="">Seleccione un Producto</option>
                        <?php
                            include("../includes/db.php");
                            //Codigo para mostrar categorias desde otra tabla
                            $sqlp = "SELECT * FROM inventario ORDER BY producto ASC";
                            $resultadop = mysqli_query($conexion, $sqlp);
                            while ($consulta = mysqli_fetch_array($resultadop)) {
                                echo '<option value="' . $consulta['id'] . '">' . $consulta['producto'] . '</option>';
                            }
                        ?>     
                    </select>
                </div>
            </div>
               <div class="col-sm-2">
                <div class="mb-3">
                    <label for="seccion">Seccion</label><br>
                    <select name="seccion" id="seccion" class="form-control">
                        <option value="">Seleccione una Sección</option>
                        <?php
                            include("../includes/db.php");
                            //Codigo para mostrar categorias desde otra tabla
                            $sql = "SELECT * FROM equivalencias ORDER BY seccion ASC";
                            $resultado = mysqli_query($conexion, $sql);
                            while ($consulta = mysqli_fetch_array($resultado)) {
                                echo '<option value="' . $consulta['seccion'] . '">' . $consulta['seccion'] . '</option>';
                            }
                        ?>     
                    </select>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="mb-3">
                    <label for="metros">Medida</label>
                    <input  id="metros" min="1" max="30000" class="form-control" step="0.01" type="number" name="metros" placeholder="Mts o Kgs">
                </div>
            </div>
            <div class="col-sm-2">
            <div class="mb-3">
                    <label for="unidad">Tipo de Unidad</label>
                        <select name="unidad" id="unidad" class="form-control" required>
                            <option value="">Seleccione una opcion</option>
                            <option value="UNIDAD">UNIDAD</option>
                            <option value="MTS">METROS</option>
                            <option value="PAQUETE">PAQUETE</option>
                            <option value="KG">KG</option>
                        </select>   
                </div>
            </div>
            <div class="modal-footer">
                    <input type="hidden" name="accion" value="editar_presupuesto">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                </div>
            </div>
            <div class="container">
                        <button type="button" class="btn btn-primary" onclick="editarPresupuesto(<?php echo $fila['id']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </div>
        </form>
<script>
    function editarPresupuesto(id) {
        var datosFormulario = $("#editPresupuesto" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('presupuesto1.php');
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