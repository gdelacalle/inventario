<div class="modal fade" id="equivalencias" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Nueva Equivalencia</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
            <form id="equivalenciasForm">
                <div class="row">
                        <div class="col-sm-6">
                            <div class="mb-3">
                                <label for="seccion">Descripción de la Sección</label>
                                <input type="text" name="seccion" id="seccion" class="form-control" requiere> 
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="username">Categoria</label><br>
                                <select name="id_categoria" id="id_categoria" class="form-control" required>
                                    <option value="">Selecciona una opcion</option>
                                    <?php

                                    include("../includes/db.php");
                                    //Codigo para mostrar categorias desde otra tabla
                                    $sql = "SELECT * FROM categorias ";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        echo '<option value="' . $consulta['id'] . '">' . $consulta['categoria'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                                </div>

                        <div class="row">
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="e1">Espesor (e1)</label>
                                <input type="number" step="0.01" name="e1" id="e1" class="form-control" requiere> 
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="e2">Espesor (e2)</label>
                                <input type="number" step="0.01" name="e2" id="e2" class="form-control" > 
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="h1">Altura (h1)</label>
                                <input type="number" step="0.01" name="h1" id="h1" class="form-control" requiere> 
                            </div>
                        </div> 
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="h2">Altura (h2)</label>
                                <input type="number" step="0.01" name="h2" id="h2" class="form-control" > 
                            </div>
                        </div> 
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="b">Ancho (b)</label>
                                <input type="number" step="0.01" name="b" id="b" class="form-control" > 
                            </div>
                        </div> 
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="peso">Peso</label>
                                <input type="number" step="0.01" name="peso" id="peso" class="form-control" require> 
                            </div>
                        </div> 
                        </div> 
                        <div class="row">
                        <img src="../images/ipn.jpg">
                        <img src="../images/perfilc.jpg">
                        </div> 
                        </div> 
                
                    <input type="hidden" name="accion" value="insertar_equivalencia">
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="register" name="registrar">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>

                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#equivalenciasForm').submit(function(e) {
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
                            text: 'Los datos se guardaron correctamente'
                        }).then(function() {
                            window.location = "equivalencias.php"; // Redirecciona al usuario a la página deseada
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
    });
</script>