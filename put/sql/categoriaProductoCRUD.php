<?php
function obtenerCategoriasProducto(){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_OBTENER_SP(:cursor, NULL); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($cunn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

    oci_execute($stid);

    oci_execute($cursor);

    return $cursor;
}

function obtenerCategoriaProducto($idCategoria){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CLIENTE_TB_OBTENER_SP(:cursor, :idCategoria); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    $cursor = oci_new_cursor($cunn);

    oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);
    oci_bind_by_name($stid, ":idCategoria", $idCategoria);

    oci_execute($stid);

    oci_execute($cursor);

    $resultado = oci_fetch_assoc($cursor);

    return $resultado;
}

function insertarCategoriaProdcuto($idCategoria, $nombre, $descripcion, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CATEGORIA_PRODUCTO_TB_INSERTAR_SP(:idCategoria, :nombre, :descripcion, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idCategoria", $idCategoria);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}

function actualizarCategoriaProdcuto($idCategoria, $nombre, $descripcion, $idEstado){
    $query = "BEGIN FIDE_HOTEL_HIMERO_PKG.FIDE_CATEGORIA_PRODUCTO_TB_ACTUALIZAR_SP(:idCategoria, :nombre, :descripcion, :idEstado); END;";

    require('conection.php');

    $stid = oci_parse($conn, $query);

    oci_bind_by_name($stid, ":idCategoria", $idCategoria);
    oci_bind_by_name($stid, ":nombre", $nombre);
    oci_bind_by_name($stid, ":descripcion", $descripcion);
    oci_bind_by_name($stid, ":idEstado", $idEstado);

    $resultado = oci_execute($stid);

    return $resultado;
}
?>