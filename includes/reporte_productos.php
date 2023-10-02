<?php
ob_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Productos</title>

    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<?php
include("../includes/db.php");

$result = mysqli_query($conexion, "SELECT * FROM inventario");
?>

<center><h2> Listado de Productos</h2></center>

        <table class="table table-striped" id="dataTable" width="100%" cellspacing="10">
                <tr>
                    <th>Codigo</th>
                    <th>Articulo</th>
                    <th>Stock</th>
                    <th>Unidad</th>
                    <th>Stock Minimo</th>
                </tr>
                <?php
                    while ($fila = mysqli_fetch_assoc($result)) :
                ?>
                    <tr>
                        <td><center><?php echo $fila['codigo']; ?></center></td>
                        <td><center><?php echo $fila['producto']; ?></center></td>
                        <td><center><?php echo $fila['existencia']; ?></center></td>
                        <td><center><?php echo $fila['unidad']; ?></center></td>
                        <td><center><?php echo $fila['minimo']; ?></center></td>
                    </tr>                  
                    <?php endwhile; ?>
        </table>
</body>
</html>

<?php
$html=ob_get_clean();
//echo $html;
require '../vendor/autoload.php';
//Permite trabajar con un archivo HTML a PDF
use Dompdf\Dompdf;
$dompdf = new Dompdf();
//Permite Obtener Imagenes para mostrarlas en una lista
$options= $dompdf->getOptions();
$options->set(array('isRemoteEnabled' => true));
$dompdf->setOptions($options);
$dompdf->loadHtml($html);
//$dompdf->setPaper('letter');
$dompdf->setPaper('A4', '');
$dompdf->render();
$dompdf->stream("productos.pdf", array("Attachment"=>false));//false lo abre directamente en el navegador || true lo baja como archivo
?>

