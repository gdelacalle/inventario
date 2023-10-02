<?php
ob_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Proveedores</title>

    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<?php
include("../includes/db.php");
    $result = mysqli_query($conexion, "SELECT * FROM proveedores ");
            
?>
    <center><h3> Listado de Proveedores</h3></center>
            <table class="table table-striped" id="dataTable" width="100%" cellspacing="10">
                    <tr>
                        <th>Razon Social</th>
                        <th>Dirección</th>
                        <th>Telefono</th>
                        <th>CUIT</th>
                        <th>Correo</th>
                    </tr>
                <?php
                    while ($fila = mysqli_fetch_assoc($result)) :
                ?>
                    <tr>
                        <td><center><?php echo $fila['r_social']; ?></center></td>
                        <td><center><?php echo $fila['direccion']; ?></center></td>
                        <td><center><?php echo $fila['telefono']; ?></center></td>
                        <td><center><?php echo $fila['rfc']; ?></center></td>
                        <td><center><?php echo $fila['correo']; ?></center></td>
                    </tr>
                    <?php endwhile; ?>
            </table>
</body>
</html>

<?php
$html=ob_get_clean();
//echo $html;
require_once("../vendor/dompdf/autoload.inc.php");
//Permite trabajar con un archivo HTML a PDF
use Dompdf\Dompdf;
$dompdf = new Dompdf();
//Permite Obtener Imagenes para mostrarlas en una lista
$options= $dompdf->getOptions();
$options->set(array('isRemoteEnabled' => true));
$dompdf->setOptions($options);
$dompdf->loadHtml($html);
//$dompdf->setPaper('letter');
$dompdf->setPaper('A4', 'Landscape');
$dompdf->render();
$dompdf->stream("proveedores.pdf", array("Attachment"=>false));//false lo abre directamente en el navegador || true lo baja como archivo
?>

