<?php
error_reporting(0);
session_start();
?>
<?php include "../includes/header.php"; ?>
<script type='text/javascript' src="../js/jquery-3.5.1.js"></script>
<script type='text/javascript' src="../js/funciones_rapidas.js"></script>
<script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
<body id="page-top">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary">DETALLE DE MOVIMIENTOS DE CAJA
            </div>
            <div class="card">
            <div class="card-body">
            <form id="MovcajaForm">
            
            <div id="tabladetallegastos" class="table-responsive">
            </form>              

            <?php include "../includes/footer.php"; ?>
            </div>  
    </div>
</div>

<?php include "../views/form_tipo_gasto.php";?>

<script>
    $(document).ready(function() {
    id=$('#num').val();
    $('#tabladetallegastos').load('../componentes/tabla_detalle_gastos.php?id='+id);
        $('#MovcajaForm').submit(function(e) {
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
                        }).then(function() {
                            $('#tabladetallegastos').load('../componentes/tabla_detalle_gastos.php?id='+id);
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
