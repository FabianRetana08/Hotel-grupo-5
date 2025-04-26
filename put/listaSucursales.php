<?php
include('sql/sucursalCRUD.php');
include('sql/estadoCRUD.php');
$sucursales = obtenerSucursales();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Sucursales</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="sucursal.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($sucursales): ?>

            <table id="tablaSucursales">
                <thead>
                    <tr>
                        <th>ID SUCURSAL</th>
                        <th>TELEFONO</th>
                        <th>EMAIL</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($sucursales)){
                            $idEstado = $row['ID_ESTADO'];

                            $estado = obtenerEstado($idEstado);

                            echo "<tr>";
                            echo "<td>" . $row['ID_SUCURSAL'] . "</td>";
                            echo "<td>" . $row['TELEFONO'] . "</td>";
                            echo "<td>" . $row['EMAIL'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaSucursales tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(4)').textContent.trim().toLowerCase();

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