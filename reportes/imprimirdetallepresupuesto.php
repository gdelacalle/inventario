<?php

session_start();
error_reporting(0);
ob_start();

/*
$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM remitostmp WHERE remitostmp.id = 227");
*/
require_once("../includes/db.php");
extract($_POST);


require ('../reportes/detalle_presupuesto.php');
$html = ob_get_clean();

require '../vendor/autoload.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf(); //creamos el objeto Dompdf

$options=$dompdf -> getOptions();
$options ->set(array('IsRemoteEnabled'->true));
$dompdf -> setOptions($options);

$dompdf -> load_html($html);

$dompdf -> setPaper('A4','Landscape');

$dompdf -> render();

$dompdf->stream("Presupuesto.pdf",array('Attachment'=>false));//true descarga directamente   ||  false abre navegador

?>