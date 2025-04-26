<?php
include('sql/habitacionCRUD.php');
include('sql/tipoHabitacionCRUD.php');
include('sql/estadoCRUD.php');
$habitaciones = obtenerHabitaciones();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Habitaciones</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="habitacion.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar habitaciones disponibles
                </label>
            </div>            
        </div>

        <?php if ($habitaciones): ?>

            <table id="tablaHabitaciones">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>TIPO DE HABITACION</th>
                        <th>PRECIO</th>
                        <th>ID SUCURSAL</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($habitaciones)){
                            $idEstado = $row['ID_ESTADO'];
                            $idTipoHabitacion = $row['ID_TIPO_HABITACION'];

                            $estado = obtenerEstado($idEstado);
                            $tipoHabitacion = obtenerTipoHabitacion($idTipoHabitacion);

                            echo "<tr>";
                            echo "<td>" . $row['ID_HABITACION'] . "</td>";
                            echo "<td>" . $tipoHabitacion['DESCRIPCION'] . "</td>";
                            echo "<td>" . $tipoHabitacion['PRECIO'] . "</td>";
                            echo "<td>" . $row['ID_SUCURSAL'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaHabitaciones tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(5)').textContent.trim().toLowerCase();

                let cumpleBusqueda = textoFila.includes(filtroTexto);
                let cumpleEstado = !soloActivos || estado === 'habitacion disponible';

                fila.style.display = (cumpleBusqueda && cumpleEstado) ? '' : 'none';
            });
        }

        document.getElementById('busqueda').addEventListener('keyup', filtrarTabla);
        document.getElementById('filtroActivo').addEventListener('change', filtrarTabla);
    </script>

</body>
</html>