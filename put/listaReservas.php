<?php
include('sql/reservaCRUD.php');
include('sql/clienteCRUD.php');
include('sql/habitacionCRUD.php');
include('sql/tipoReservaCRUD.php');
include('sql/estadoCRUD.php');
$reservas =obtenerReservas();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Reservas</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="reserva.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($reservas): ?>

            <table id="tablaReservas">
                <thead>
                    <tr>
                        <th>NUM DE RESERVA</th>
                        <th>CLIENTE</th>
                        <th>HABITACION</th>
                        <th>FECHA DE RESERVA</th>
                        <th>TIPO DE RESERVA</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($reservas)){
                            $idEstado = $row['ID_ESTADO'];
                            $idCliente = $row['ID_CLIENTE'];
                            $idTipoReserva = $row['ID_TIPO_RESERVA'];

                            $estado = obtenerEstado($idEstado);
                            $cliente = obtenerCliente($idCliente);
                            $tipoReserva = obtenerTipoReserva($idTipoReserva);

                            echo "<tr>";
                            echo "<td>" . $row['NUM_RESERVA'] . "</td>";
                            echo "<td>" . $cliente['NOMBRE_CLIENTE'] . " " . $cliente['PRIMER_APELLIDO'] . " " .  $cliente['SEGUNDO_APELLIDO'] . "</td>";
                            echo "<td>" . $row['ID_HABITACION'] . "</td>";
                            echo "<td>" . $row['FECHA_RESERVADO'] . "</td>";
                            echo "<td>" . $tipoReserva['NOMBRE'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaReservas tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(6)').textContent.trim().toLowerCase();

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