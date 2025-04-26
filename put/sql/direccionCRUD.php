<?php
function obtenerDireccion($idDistrito, $idCanton, $idProvincia){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_OBTENER_SP(:cursor, :idDistrito, :idCanton, :idProvincia); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);    

    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idDistrito", $idDistrito);
    oci_bind_by_name($stid, ":idCanton", $idCanton);
    oci_bind_by_name($stid, ":idProvincia", $idProvincia);

    oci_execute($stid);
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function obtenerDirecciones(){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_OBTENER_SP(:cursor, NULL, NULL, NULL); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    oci_execute($cursor);

    return $cursor;
}

function actualizarDireccion($idSucursal, $detalleDireccion, $idDistrito, $idCanton, $idProvincia, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_ACTUALIZAR_SP(:idSucursal, :detalleDireccion, :idDistrito, :idCanton, :idProvincia, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":detalleDireccion", $detalleDireccion);
    oci_bind_by_name($stid, ":idDistrito", $idDistrito);
    oci_bind_by_name($stid, ":idCanton", $idCanton);
    oci_bind_by_name($stid, ":idProvincia", $idProvincia);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}

function insertarDireccion($idSucursal, $detalleDireccion, $idDistrito, $idCanton, $idProvincia, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_DIRECCION_TB_INSERTAR_SP(:idSucursal, :detalleDireccion, :idDistrito, :idCanton, :idProvincia, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":detalleDireccion", $detalleDireccion);
    oci_bind_by_name($stid, ":idDistrito", $idDistrito);
    oci_bind_by_name($stid, ":idCanton", $idCanton);
    oci_bind_by_name($stid, ":idProvincia", $idProvincia);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}