<?php
function obtenerReservas(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_RESERVA_TB_OBTENER_SP(:cursor, NULL, NULL, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return $cursor;
}

function obtenerReserva($numReserva, $idCliente, $idHabitacion){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_RESERVA_TB_OBTENER_SP(:cursor, :numReserva, :idCliente, :idHabitacion); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":numReserva", $numReserva);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idHabitacion", $idHabitacion);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarReserva($numReserva,$idCliente,$idHabitacion,$fechaReserva,$idTipoReserva,$idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_RESERVA_TB_INSERTAR_SP(:numReserva,:idCliente,:idHabitacion, TO_DATE(:fechaReserva, 'MM/DD/YY'),:idTipoReserva,:idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":numReserva", $numReserva);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idHabitacion", $idHabitacion);
    oci_bind_by_name($stid, ":fechaReserva", $fechaReserva);
    oci_bind_by_name($stid, ":idTipoReserva", $idTipoReserva);
    oci_bind_by_name($stid, ":idEstado", $idEstado);


    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarReserva($numReserva,$idCliente,$idHabitacion,$fechaReserva,$idTipoReserva,$idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_RESERVA_TB_ACTUALIZAR_SP(:numReserva,:idCliente,:idHabitacion,TO_DATE(:fechaReserva, 'MM/DD/YY'),:idTipoReserva,:idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":numReserva", $numReserva);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idHabitacion", $idHabitacion);
    oci_bind_by_name($stid, ":fechaReserva", $fechaReserva);
    oci_bind_by_name($stid, ":idTipoReserva", $idTipoReserva);
    oci_bind_by_name($stid, ":idEstado", $idEstado);


    $resultado = oci_execute($stid);

    return $resultado;
}
?>