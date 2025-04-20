<?php
function obtenerAreaTrabajo($idArea){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_OBTENER_SP(:cursor, :id); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $idArea);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerAreasTrabajo(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_OBTENER_SP(:cursor, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarAreaTrabajo($id, $nombre, $estado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_ACTUALIZAR_SP(:id, :nombre, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $id);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":estado", $estado);

    return oci_execute($stid);
}

function insertarAreaTrabajo($id, $nombre, $estado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_INSERTAR_SP(:id, :nombre, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $id);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":estado", $estado);

    return oci_execute($stid);
}