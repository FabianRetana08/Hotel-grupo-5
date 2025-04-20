<?php
function obtenerDistrito($idDistrito){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DISTRITO_TB_OBTENER_SP(:cursor, :idDistrito); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idDistrito", $idDistrito);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerDistritos(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DISTRITO_TB_OBTENER_SP(:cursor, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarDistrito($idDistrito, $nombreDistrito, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DISTRITO_TB_ACTUALIZAR_SP(:id, :nombre, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $idDistrito);
    oci_bind_by_name($stid, ":nombre", $nombreDistrito);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}

function insertarDistrito($idDistrito, $nombreDistrito, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DISTRITO_TB_INSERTAR_SP(:id, :nombre, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $idDistrito);
    oci_bind_by_name($stid, ":nombre", $nombreDistrito);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}