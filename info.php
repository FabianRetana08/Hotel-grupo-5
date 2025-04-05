<?php
require('conection.php');

//Llamada del procedimiento sql
$query = 'CALL FIDE_ESTADO_TB_OBTENER_SP(:cursor, NULL)';
$stid = oci_parse($conn, $query);

//Se crea un nuevo cursor de referencia 
$cursor = oci_new_cursor($conn);

//Y luego ese cursor se vincula con el parametro de salida del procedimiento
oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

//Se ejecuta el procedimiento
oci_execute($stid);

// Ejecutar el cursor para llenarlo con los resultados
oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído


echo "<h1 class='header'>Lista de Estados</h1>";
echo "<table border='1'>";
echo "<theader><tr><th>ID</th><th>Nombre</th><th>Descripcion</th></tr></theader>";

while ($row = oci_fetch_assoc($cursor)) {
    echo "<tbody>";
    echo "<tr>";
    echo "<td>" . $row['ID_ESTADO'] . "</td>";
    echo "<td>" . $row['ESTADO'] . "</td>";
    echo "<td>" . $row['DESCRIPCION_ESTADO'] . "</td>";
    echo "</tr>";
    echo "</tbody>";
}

echo "</table>";

oci_free_statement($stid);
oci_close($conn);
?>