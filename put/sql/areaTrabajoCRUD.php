<?php
function obtenerAreaTrabajo($idAreaTrabajo){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_OBTENER_SP(:cursor, :idAreaTrabajo); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idArea);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idAreaTrabajo);

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

function actualizarAreaTrabajo($idAreaTrabajo, $nombre, $descripcion, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_ACTUALIZAR_SP(:idAreaTrabajo, :nombre, :descripcion, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idAreaTrabajo);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}

function insertarAreaTrabajo($idAreaTrabajo, $nombre, $descripcion, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_AREA_TRABAJO_TB_INSERTAR_SP(:idAreaTrabajo, :nombre, :descripcion, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idAreaTrabajo);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}