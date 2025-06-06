<?php
function obtenerPuestosTrabajo(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PUESTO_TRABAJO_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return $cursor;
}

function obtenerPuestoTrabajo($idPuestoTrabajo){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PUESTO_TRABAJO_TB_OBTENER_SP(:cursor, :idPuestoTrabajo); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idPuestoTrabajo", $idPuestoTrabajo);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarPuestoTrabajo($idPuestoTrabajo, $nombre, $descripcion, $salario, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PUESTO_TRABAJO_TB_INSERTAR_SP(:idPuestoTrabajo, :nombre, :descripcion, :salario, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idPuestoTrabajo", $idPuestoTrabajo);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":salario", $salario);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarPuestoTrabajo($idPuestoTrabajo, $nombre, $descripcion, $salario, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PUESTO_TRABAJO_TB_ACTUALIZAR_SP(:idPuestoTrabajo, :nombre, :descripcion, :salario, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idPuestoTrabajo", $idPuestoTrabajo);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":salario", $salario);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>