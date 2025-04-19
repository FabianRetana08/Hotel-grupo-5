<?php
include('sql/clienteCRUD.php');
include('sql/tipoClienteCRUD.php');
include('sql/estadoCRUD.php');

$clientes = obtenerClientes();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listaEstados.css"> 
    <title>Document</title>
</head>
<body>
    
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <div class="options">

            <a href="cliente.php" class="go-back-button">Regresar</a>

            <div>
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">
                    <input type="checkbox" id="filtroActivo">
                    Solo costrar activos
                </label>
            </div>

        </div>

        <?php if($clientes): ?>

            <table id="tablaClientes">
                <thead>
                    <tr>
                        <th>ID CLIENTE</th>
                        <th>NOMBRE</th>
                        <th>PRIMER APELLIDO</th>
                        <th>SEGUNDO APELLIDO</th>
                        <th>EMAIL</th>
                        <th>TELEFONO</th>
                        <th>TIPO DE CLIENTE</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while($row = oci_fetch_assoc($clientes)){

                            $idEstado = $row['ID_ESTADO'];
                            $idTipoCliente = $row['ID_TIPO_CLIENTE'];

                            $estado = obtenerEstado($idEstado);
                            $tipoCliente = obtenerTipoCliente($idTipoCliente);

                            echo "<tr>";
                            echo "<td>" . $row['ID_CLIENTE'] . "</td>";
                            echo "<td>" . $row['NOMBRE_CLIENTE'] . "</td>";
                            echo "<td>" . $row['PRIMER_APELLIDO'] . "</td>";
                            echo "<td>" . $row['SEGUNDO_APELLIDO'] . "</td>";
                            echo "<td>" . $row['EMAIL'] . "</td>";
                            echo "<td>" . $row['NUM_TELEFONO'] . "</td>";
                            echo "<td>" . $tipoCliente['DESCRIPCION'] . "</td>";
                            echo "<td>" . $estado['ESTADO'] . "</td>";
                            echo "</tr>";

                        }
                    ?>

                </tbody>
            </table>

        <?php endif; ?>

    </div>

    <script>
        function filtrarTabla() {
            let filtroTexto = document.getElementById('busqueda').value.toLowerCase();
            let soloActivos = document.getElementById('filtroActivo').checked;

            let filas = document.querySelectorAll('#tablaClientes tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(8)').textContent.trim().toLowerCase();

                let cumpleBusqueda = textoFila.includes(filtroTexto);
                let cumpleEstado = !soloActivos || estado === 'activo';

                fila.style.display = (cumpleBusqueda && cumpleEstado) ? '' : 'none';
            });
        }

        document.getElementById('busqueda').addEventListener('keyup', filtrarTabla);
        document.getElementById('filtroActivo').addEventListener('change', filtrarTabla);
    </script>

</body>
</html>