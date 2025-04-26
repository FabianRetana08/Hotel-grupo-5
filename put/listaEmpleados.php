<?php
include('sql/empleadoCRUD.php');
include('sql/puestoTrabajoCRUD.php');
include('sql/areaTrabajoCRUD.php');
include('sql/sucursalCRUD.php');
include('sql/estadoCRUD.php');
$empleados = obtenerEmpleados();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Empleados</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="empleado.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($empleados): ?>

            <table id="tablaEmpleados">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>PRIMERO APELLIDO</th>
                        <th>SEGUNDO APELLIDO</th>
                        <th>EMAIL</th>
                        <th>TELEFONO</th>
                        <th>PUESTO</th>
                        <th>AREA</th>
                        <th>ID SUCURSAL</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($empleados)){
                            $idEstado = $row['ID_ESTADO'];
                            $idPuestoTrabajo = $row['ID_PUESTO_TRABAJO'];
                            $idAreaTrabajo = $row['ID_AREA_TRABAJO'];                            

                            $estado = obtenerEstado($idEstado);
                            $puestoTrabajo = obtenerPuestoTrabajo($idPuestoTrabajo);
                            $areaTrabajo = obtenerAreaTrabajo($idAreaTrabajo);

                            echo "<tr>";
                            echo "<td>" . $row['ID_EMPLEADO'] . "</td>";
                            echo "<td>" . $row['NOMBRE_EMPLEADO'] . "</td>";
                            echo "<td>" . $row['PRIMER_APELLIDO'] . "</td>";
                            echo "<td>" . $row['SEGUNDO_APELLIDO'] . "</td>";
                            echo "<td>" . $row['EMAIL'] . "</td>";
                            echo "<td>" . $row['NUM_TELEFONO'] . "</td>";
                            echo "<td>" . $puestoTrabajo['NOMBRE'] . "</td>";
                            echo "<td>" . $areaTrabajo['NOMBRE'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaEmpleados tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(10)').textContent.trim().toLowerCase();

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