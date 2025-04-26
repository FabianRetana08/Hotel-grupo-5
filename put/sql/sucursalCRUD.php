<?php
function obtenerSucursal($idSucursal){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_SUCURSAL_TB_OBTENER_SP(:cursor, :idSucursal); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerSucursales(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_SUCURSAL_TB_OBTENER_SP(:cursor, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarSucursal($idSucursal, $telefono, $email, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_SUCURSAL_TB_ACTUALIZAR_SP(:idSucursal, :telefono, :email, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":telefono", $telefono);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}

function insertarSucursal($idSucursal, $telefono, $email, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_SUCURSAL_TB_INSERTAR_SP(:idSucursal, :telefono, :email, :estado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":telefono", $telefono);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":estado", $idEstado);

    return oci_execute($stid);
}