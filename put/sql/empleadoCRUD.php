<?php
function obtenerEmpleado($id){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_OBTENER_SP(:cursor, :id); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $id);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerEmpleados(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_OBTENER_SP(:cursor, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarEmpleado($id, $nombre, $apellido, $idArea, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_ACTUALIZAR_SP(:id, :nombre, :apellido, :area, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $id);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":apellido", $apellido);
    oci_bind_by_name($stid, ":area", $idArea);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}

function insertarEmpleado($id, $nombre, $apellido, $idArea, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_INSERTAR_SP(:id, :nombre, :apellido, :area, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":id", $id);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":apellido", $apellido);
    oci_bind_by_name($stid, ":area", $idArea);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}