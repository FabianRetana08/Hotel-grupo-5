<?php
function obtenerProductos(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PRODUCTO_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);
    
    oci_execute($cursor);

    return $cursor;
}

function obtenerProducto($idProducto){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PRODUCTO_TB_OBTENER_SP(:cursor, :idProducto); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($conn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idProducto", $idProducto);

    oci_execute($stid);
    
    oci_execute($cursor);

    return oci_fetch_assoc($cursor);
}

function insertarProducto($idProducto, $nombre, $descripcion, $idCategoria, $idSucursal, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PRODUCTO_TB_INSERTAR_SP(:idProducto, :nombre, :descripcion, :idCategoria, :idSucursal, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idProducto", $idProducto);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idCategoria", $idCategoria);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);
    
    return $resultado;
}

function actualizarProducto($idProducto, $nombre, $descripcion, $idCategoria, $idSucursal, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_PRODUCTO_TB_ACTUALIZAR_SP(:idProducto, :nombre, :descripcion, :idCategoria, :idSucursal, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idProducto", $idProducto);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idCategoria", $idCategoria);
    oci_bind_by_name($stid, ":idSucursal", $idSucursal);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);
    
    return $resultado;
}
?>