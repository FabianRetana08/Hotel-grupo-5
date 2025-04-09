<?php
$usuario = 'ProyectoFinal';
$contrasena = '123';
$cadenaConexion = 'localhost/XE'; // Reemplaza con el nombre de tu base de datos

// Intentar conectar a Oracle
$conn = oci_connect($usuario, $contrasena, $cadenaConexion);

if (!$conn) {
    $e = oci_error();
    echo "Error de conexión: " . $e['message'];
}
?>
