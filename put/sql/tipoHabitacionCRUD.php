<?php
function obtenertiposHabitacion(){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_HABITACION_TB_OBTENER_SP(:cursor, NULL); END;';

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

function obtenerTipoHabitacion($idTipoHabitacion){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_HABITACION_TB_OBTENER_SP(:cursor, :idTipoHabitacion); END;';

    //Hacemos la conexion con la base de datos
    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    //Y luego ese cursor se vincula con el parametro de salida del procedimiento
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idTipoHabitacion", $idTipoHabitacion);

    //Se ejecuta el procedimiento
    oci_execute($stid);

    // Ejecutar el cursor para llenarlo con los resultados
    oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarTipoHabitacion($idTipoHabitacion, $descripcion, $precio, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_HABITACION_TB_INSERTAR_SP(:idTipoHabitacion, :descripcion, :precio, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idTipoHabitacion", $idTipoHabitacion);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":precio", $precio);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarTipoHabitacion($idTipoHabitacion, $descripcion, $precio, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_HABITACION_TB_ACTUALIZAR_SP(:idTipoHabitacion, :descripcion, :precio, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idTipoHabitacion", $idTipoHabitacion);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":precio", $precio);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>