<?php
//Direcciones para realizar el reporte
require('../../helpers/report.php');
require('../../models/privado/estado_usuario.php');
require('../../models/privado/usuarios.php');
// Se declara la variable para comenzar una estancia
$pdf = new Report;
// Comienza a ejecutarse el encabezado del reporte
$pdf->reportHeader('Usuarios según el estado de usuario');

$estado = new Estadousuario;
if ($dataEstado = $estado->readestadou()) {
    foreach ($dataEstado as $rowEstado) {
        $pdf->SetFillColor(175);
        $pdf->SetFont('Times', 'B', 12);
        $pdf->Cell(0, 10, utf8_decode('Estado de usuario: '.$rowEstado['estado_usuario']), 1, 1, 'C', 1);
        $usuario = new Usuario;
        if ($usuario->setEstado($rowEstado['id_estado_usuario'])) {
            if ($dataUsuario = $usuario->readEstadoUsuario()) {
                // Se pone una distincion de colores por el formato RGB
                $pdf->SetFillColor(244,91,91);
                // Se establece la fuente para el nombre de la categoría.
                $pdf->SetFont('Times', 'B', 11);
                // Se comienzan a crear las celdas y los encabezados
                $pdf->Cell(40, 10, utf8_decode('Nombre'), 1, 0, 'C', 1);
                $pdf->Cell(40, 10, utf8_decode('Apellido'), 1, 0, 'C', 1);
                $pdf->Cell(46, 10, utf8_decode('Correo'), 1, 0, 'C', 1);
                $pdf->Cell(30, 10, utf8_decode('Usuario'), 1, 0, 'C', 1);
                $pdf->Cell(30, 10, utf8_decode('Tipo'), 1, 0, 'C', 1);
                $pdf->Cell(37.3, 10, utf8_decode(' '), 0, 1, 'C');
                // Se decide una fuente para los datos que se usaran
                $pdf->SetFont('Times', '', 11);
                // Los datos de data se recorren a la variable de row
                foreach ($dataUsuario as $rowUsuario) {
                    // Se crean las celdas con los datos asignados
                    $pdf->Cell(40, 10, utf8_decode($rowUsuario['nombre_usuario']), 1, 0, 'C');
                    $pdf->Cell(40, 10, $rowUsuario['apellido_usuario'], 1, 0, 'C');
                    $pdf->Cell(46, 10, $rowUsuario['correo'], 1, 0, 'C');
                    $pdf->Cell(30, 10, $rowUsuario['usuario'], 1, 0, 'C');
                    $pdf->Cell(30, 10, $rowUsuario['tipo_usuario'], 1, 0, 'C');
                    $pdf->Cell(37.3, 10, utf8_decode(' '), 0, 1, 'C');
                }
            } else {
                $pdf->Cell(0, 10, utf8_decode('No hay usuarios en este tipo'), 1, 1);
            }
        } else {
            $pdf->Cell(0, 10, utf8_decode('Ocurrió un error en un tipo de usuario'), 1, 1);
        }
    }
} else {
    $pdf->Cell(0, 10, utf8_decode('No hay tipo de usuarios para mostrar'), 1, 1);
}
// Se realiza un envio del documento al navegador y se invoca al metodo footer
$pdf->Output();
?>
