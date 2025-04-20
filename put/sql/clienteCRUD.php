<?php
function obtenerClientes(){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_OBTENER_SP(:cursor, NULL); END;';

    //Hacemos la conexion con la base de datos
    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    //Y luego ese cursor se vincula con el parametro de salida del procedimiento
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    //Se ejecuta el procedimiento
    oci_execute($stid);

    // Ejecutar el cursor para llenarlo con los resultados
    oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

    return $cursor;
}

function obtenerCliente($idCliente){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_OBTENER_SP(:cursor, :idCliente); END;';

    //Hacemos la conexion con la base de datos
    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    //Y luego ese cursor se vincula con el parametro de salida del procedimiento
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idCliente", $idCliente);

    //Se ejecuta el procedimiento
    oci_execute($stid);

    // Ejecutar el cursor para llenarlo con los resultados
    oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarCliente($idCliente, $nombre, $primerApellido, $segundoApellido, $email, $numTelefono, $idTIpoCliente, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_INSERTAR_SP(:idCliente, :nombre, :primerApellido, :segundoApellido, :email, :numTelefono, :idTIpoCliente, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":primerApellido", $primerApellido);
    oci_bind_by_name($stid, ":segundoApellido", $segundoApellido);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":numTelefono", $numTelefono);
    oci_bind_by_name($stid, ":idTIpoCliente", $idTIpoCliente);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarCliente($idCliente, $nombre, $primerApellido, $segundoApellido, $email, $numTelefono, $idTIpoCliente, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_ACTUALIZAR_SP(:idCliente, :nombre, :primerApellido, :segundoApellido, :email, :numTelefono, :idTIpoCliente, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":primerApellido", $primerApellido);
    oci_bind_by_name($stid, ":segundoApellido", $segundoApellido);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":numTelefono", $numTelefono);
    oci_bind_by_name($stid, ":idTIpoCliente", $idTIpoCliente);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>