<?php
function obtenerProvincias(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PROVINCIA_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return($cursor);
}

function obtenerProvincia($idProvincia){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PROVINCIA_TB_OBTENER_SP(:cursor, :idProvincia); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idProvincia", $idProvincia);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarProvincia($idProvincia, $nombreProvincia, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PROVINCIA_TB_INSERTAR_SP(:idProvincia, :nombreProvincia, :idEstado); end;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idProvincia", $idProvincia);
    oci_bind_by_name($stid, ":nombreProvincia", $nombreProvincia);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarProvincia($idProvincia, $nombreProvincia, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PROVINCIA_TB_ACTUALIZAR_SP(:idProvincia, :nombreProvincia, :idEstado); end;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idProvincia", $idProvincia);
    oci_bind_by_name($stid, ":nombreProvincia", $nombreProvincia);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>