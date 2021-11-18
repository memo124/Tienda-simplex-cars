<?php
//aca están la ruta de archivos que usara la API
require_once('../../helpers/conexion.php');
require_once('../../helpers/validator.php');
require_once('../../models/commerce/index.php');
// Se verifica si hay acciones para realizar, si no la hay se finaliza el script con un mensaje de error.
if( isset($_GET['action']) ) {
    // Creación de una sesión o reanudación de la actual para poder usar variables de sesión en el script.
    session_start();
    // Se instancia la clase Index.
    $index = new Index;
    //Creación de un arreglo para guardar lo que retorna la API.
    $result = array('status'=> 0, 'message' =>null,'exception' => null);
        // Se evalua cual acción se va a realizar cuando un administrador ha iniciado sesión.
    switch( $_GET['action'] ) {
	    //Acá está la acción a realizar si es mostrar los productos
        case 'mostrarTodo':
            if ( $result['dataset'] = $index->mostrarProductos() ) {
                $result['status'] = 1;
            } else {
                $result['exception'] = 'No hay productos registrados';
            }
        break;
        //Acá está la acción a realizar si es Mostrar las marcas
        case 'mostrarTodo2':
            if ( $result['dataset'] = $index->mostrarMarcas() ) {
                $result['status'] = 1;
            } else {
                $result['exception'] = 'No hay Marcas registradas';
            }
        break;
	    //Acá está la acción a realizar si no se encontro el caso solicitado
            default:
                exit('Acción no disponible');
    }
    //aca se envia el resultado de la API en formato JSON
    header('content-type: application/json; charset=utf-8');
    print(json_encode($result));
}else {
    exit('Recurso denegado');
}