<?php
function obtenerDireccion($idDireccion){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_OBTENER_SP(:cursor, :idDireccion); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idDireccion", $idDireccion);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerDirecciones(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_OBTENER_SP(:cursor, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarDireccion($idDireccion, $descripcion, $idDistrito, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_ACTUALIZAR_SP(:id, :descripcion, :distrito, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $idDireccion);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":distrito", $idDistrito);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}

function insertarDireccion($idDireccion, $descripcion, $idDistrito, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_INSERTAR_SP(:id, :descripcion, :distrito, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $idDireccion);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":distrito", $idDistrito);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}