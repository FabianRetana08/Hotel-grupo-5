<?php
    function obtenerEstado($idEstado){
        //Estructuramos la consulta 
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_ESTADO_TB_OBTENER_SP(:cursor, :idEstado); END;';

        //Hacemos la conexion con la base de datos
        require('conection.php');

        $stid = oci_parse($conn, $query);

        oci_bind_by_name($stid, ":idEstado", $idEstado);

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

    function obtenerEstados(){
        //Estructuramos la consulta 
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_ESTADO_TB_OBTENER_SP(:cursor, NULL); END;';

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

    function actualizarestado($idEstado, $estado, $descripcionEstado){
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_ESTADO_TB_ACTUALIZAR_SP(:idEstado, :estado, :descripcionEstado); END;';

        require('conection.php');

        $stid = oci_parse($conn, $query);

        
        oci_bind_by_name($stid, ":idEstado", $idEstado);
        oci_bind_by_name($stid, ":estado", $estado);
        oci_bind_by_name($stid, ":descripcionEstado", $descripcionEstado);

        $resultado = oci_execute($stid);

        return $resultado;
    }

    function insertarEstado($idEstado, $estado, $descripcionEstado){
        $query = 'BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_ESTADO_TB_INSERTAR_SP(:id_estado, :estado, :descripcion_estado); END;';

        require('conection.php');

        $stid = oci_parse($conn, $query);

        oci_bind_by_name($stid, ":id_estado", $idEstado);
        oci_bind_by_name($stid, ":estado", $estado);       
        oci_bind_by_name($stid, ":descripcion_estado", $descripcionEstado);

        $resultado = oci_execute($stid);

        return $resultado;
    }
?>