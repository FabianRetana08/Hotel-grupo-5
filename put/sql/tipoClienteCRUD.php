<?php
    function obtenerTipoCliente($idTipoCliente){
        //Estructuramos la consulta 
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_CLIENTE_TB_OBTENER_SP(:cursor, :idTipoCliente); END;';

        //Hacemos la conexion con la base de datos
        require('conection.php');

        $stid = oci_parse($conn, $query);

        oci_bind_by_name($stid, ":idTipoCliente", $idTipoCliente);

        $cursor = oci_new_cursor($conn);

        //Y luego ese cursor se vincula con el parametro de salida del procedimiento
        oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

        //Se ejecuta el procedimiento
        oci_execute($stid);

        // Ejecutar el cursor para llenarlo con los resultados
        oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

        $resultado = oci_fetch_assoc($cursor);

        return $resultado;
    }

    function obtenerTipoClientes(){
        //Estructuramos la consulta 
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_CLIENTE_TB_OBTENER_SP(:cursor, NULL); END;';

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

    function actualizarTipoCliente($idTipoCliente, $descripcion, $idEstado){
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_CLIENTE_TB_ACTUALIZAR_SP(:idTipoCliente, :descripcion, :idEstado); END;';

        require('conection.php');

        $stid = oci_parse($conn, $query);

        
        oci_bind_by_name($stid, ":idTipoCliente", $idTipoCliente);
        oci_bind_by_name($stid, ":descripcion", $descripcion);
        oci_bind_by_name($stid, ":idEstado", $idEstado);

        $resultado = oci_execute($stid);

        return $resultado;
    }

    function insertarTipoCliente($idTipoCliente, $descripcion, $idEstado){
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_TIPO_CLIENTE_TB_INSERTAR_SP(:idTipoCliente, :descripcion, :idEstado); END;';

        require('conection.php');

        $stid = oci_parse($conn, $query);

        oci_bind_by_name($stid, ":idTipoCliente", $idTipoCliente);
        oci_bind_by_name($stid, ":descripcion", $descripcion);
        oci_bind_by_name($stid, ":idEstado", $idEstado);

        $resultado = oci_execute($stid);

        return $resultado;
    }
?>