<?php
function obtenerCantones(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CANTON_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return $cursor;
}

function obtenerCanton($idCanton){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CANTON_TB_OBTENER_SP(:cursor, :idCanton); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idCanton", $idCanton);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertCanton($idCanton, $nombreCanton, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CANTON_TB_INSERTAR(); END;";

    require('coenction.php');

    $stid = oci_parse($conn, $query);

    
}
?>