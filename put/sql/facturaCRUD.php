<?php
function obtenerfacturas(){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_FACTURA_TB_OBTENER_SP(:cursor, NULL, NULL, NULL, NULL); END;';

    //Hacemos la conexion con la base de datos
    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    //Y luego ese cursor se vincula con el parametro de salida del procedimiento
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    //Se ejecuta el procedimiento
    oci_execute($stid);

    // Ejecutar el cursor para llenarlo con los resultados
    oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

    return $cursor;
}

function obtenerfactura($numFactura, $idCliente, $idEmpleado, $numDetalleFactura){
    //Estructuramos la consulta 
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_FACTURA_TB_OBTENER_SP(:cursor, :numFactura, :idCliente, :idEmpleado, :numDetalleFactura); END;';

    //Hacemos la conexion con la base de datos
    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    //Y luego ese cursor se vincula con el parametro de salida del procedimiento
    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":numFactura", $numFactura);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);
    oci_bind_by_name($stid, ":numDetalleFactura", $numDetalleFactura);

    //Se ejecuta el procedimiento
    oci_execute($stid);

    // Ejecutar el cursor para llenarlo con los resultados
    oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarfactura($numFactura, $idCliente, $idEmpleado, $numDetalleFactura, $numReserva, $idHabitacion, $total, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_FACTURA_TB_INSERTAR_SP(:numFactura, :idCliente, :idEmpleado, :numDetalleFactura, :numReserva, :idHabitacion, :total, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":numFactura", $numFactura);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);
    oci_bind_by_name($stid, ":numDetalleFactura", $numDetalleFactura);
    oci_bind_by_name($stid, ":numReserva", $numReserva);   
    oci_bind_by_name($stid, ":idHabitacion", $idHabitacion);
    oci_bind_by_name($stid, ":total", $total);
    oci_bind_by_name($stid, ":idEstado", $idEstado);


    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarfactura($numFactura, $idCliente, $idEmpleado, $numDetalleFactura, $numReserva, $idHabitacion, $total, $idEstado){
    $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_FACTURA_TB_ACTUALIZAR_SP(:numFactura, :idCliente, :idEmpleado, :numDetalleFactura, :numReserva, :idHabitacion, :total, :idEstado); END;';

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":numFactura", $numFactura);
    oci_bind_by_name($stid, ":idCliente", $idCliente);
    oci_bind_by_name($stid, ":idEmpleado", $idEmpleado);
    oci_bind_by_name($stid, ":numDetalleFactura", $numDetalleFactura);
    oci_bind_by_name($stid, ":numReserva", $numReserva);   
    oci_bind_by_name($stid, ":idHabitacion", $idHabitacion);
    oci_bind_by_name($stid, ":total", $total);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>