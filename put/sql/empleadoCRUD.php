<?php
function obtenerEmpleado($idEmpleado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_OBTENER_SP(:cursor, :idEmpleado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);

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

function actualizarEmpleado($idEmpleado, $nombreEmpleado, $primerApellido, $segundoApellido, $email, $numTelefono, $idPuestoTrabajo, $idAreaTrabajo, $idSucursal, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_ACTUALIZAR_SP(:idEmpleado, :nombreEmpleado, :primerApellido, :segundoApellido, :email, :numTelefono, :idPuestoTrabajo, :idAreaTrabajo, :idSucursal, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);
    oci_bind_by_name($stid, ":nombreEmpleado", $nombreEmpleado);
    oci_bind_by_name($stid, ":primerApellido", $primerApellido);
    oci_bind_by_name($stid, ":segundoApellido", $primerApellido);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":numTelefono", $numTelefono);
    oci_bind_by_name($stid, ":idPuestoTrabajo", $idPuestoTrabajo);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idAreaTrabajo);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}

function insertarEmpleado($idEmpleado, $nombreEmpleado, $primerApellido, $segundoApellido, $email, $numTelefono, $idPuestoTrabajo, $idAreaTrabajo, $idSucursal, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_EMPLEADO_TB_INSERTAR_SP(:idEmpleado, :nombreEmpleado, :primerApellido, :segundoApellido, :email, :numTelefono, :idPuestoTrabajo, :idAreaTrabajo, :idSucursal, :idEstado); END;';
    require('conection.php');

    $stid = oci_parse($conn, $query);
    $stid = oci_parse($conn, $query);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);
    oci_bind_by_name($stid, ":nombreEmpleado", $nombreEmpleado);
    oci_bind_by_name($stid, ":primerApellido", $primerApellido);
    oci_bind_by_name($stid, ":segundoApellido", $primerApellido);
    oci_bind_by_name($stid, ":email", $email);
    oci_bind_by_name($stid, ":numTelefono", $numTelefono);
    oci_bind_by_name($stid, ":idPuestoTrabajo", $idPuestoTrabajo);
    oci_bind_by_name($stid, ":idAreaTrabajo", $idAreaTrabajo);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    return oci_execute($stid);
}