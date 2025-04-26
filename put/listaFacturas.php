<?php
include('sql/facturaCRUD.php');
include('sql/empleadoCRUD.php');
include('sql/estadoCRUD.php');
include('sql/clienteCRUD.php');
include('sql/habitacionCRUD.php');
include('sql/tipoHabitacionCRUD.php');
$facturas = obtenerFacturas();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Facturas</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="factura.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($facturas): ?>

            <table id="tablaFacturas">
                <thead>
                    <tr>
                        <th>NUMERO DE FACTURA</th>
                        <th>CLIENTE</th>
                        <th>EMPLEADO</th>
                        <th>NUMERO DETALLE FACTURA</th>
                        <th>NUMERO DE RESERVA</th>
                        <th>HABITACION</th>
                        <th>TOTAL</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($facturas)){
                            $idEstado = $row['ID_ESTADO'];
                            $idCliente = $row['ID_CLIENTE'];
                            $idEmpleado = $row['ID_EMPLEADO'];
                            $idHabitacion = $row['ID_HABITACION'];                            

                            $estado = obtenerEstado($idEstado);
                            $cliente = obtenerCliente($idCliente);
                            $empleado = obtenerEmpleado($idEmpleado);
                            $habitacion = obtenerHabitacion($idHabitacion);
                            
                            $tipoHabitacion = obtenerTipoHabitacion($habitacion['ID_TIPO_HABITACION']);

                            

                            echo "<tr>";
                            echo "<td>" . $row['NUM_FACTURA'] . "</td>";
                            echo "<td>" . $cliente['NOMBRE_CLIENTE'] . " " . $cliente['PRIMER_APELLIDO'] . " " . $cliente['SEGUNDO_APELLIDO'] . "</td>";
                            echo "<td>" . $empleado['NOMBRE_EMPLEADO'] . " " . $empleado['PRIMER_APELLIDO'] . " " . $empleado['SEGUNDO_APELLIDO'] . "</td>";
                            echo "<td>" . $row['NUM_DETALLE_FACTURA'] . "</td>";
                            echo "<td>" . $row['NUM_RESERVA'] . "</td>";
                            echo "<td>" . $row['ID_HABITACION'] . "</td>";
                            echo "<td>" . $tipoHabitacion['PRECIO'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaFacturas tbody tr');

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