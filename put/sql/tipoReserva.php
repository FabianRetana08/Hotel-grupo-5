<?php
function obtenerTiposReserva(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_RESERVA_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return $cursor;
}

function obtenerTipoReserva($idTipoReserva){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_RESERVA_TB_OBTENER_SP(:cursor, :idTipoReserva); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idTipoReserva", $idTipoReserva);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarTipoReserva($idTipoReserva, $nombre, $descripcion, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_RESERVA_TB_INSERTAR_SP(:idTipoReserva, :nombre, :descripcion, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idTipoReserva", $idTipoReserva);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarTipoReserva($idTipoReserva, $nombre, $descripcion, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_RESERVA_TB_ACTUALIZAR_SP(:idTipoReserva, :nombre, :descripcion, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idTipoReserva", $idTipoReserva);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>