<?php
include('sql/provinciaCRUD.php');
include('sql/cantonCRUD.php');
include('sql/distritoCRUD.php');
include('sql/direccionCRUD.php');
include('sql/estadoCRUD.php');
$direcciones = obtenerDirecciones();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Lista de Direcciones</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="direccion.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($direcciones): ?>

            <table id="tablaDirecciones">
                <thead>
                    <tr>
                        <th>ID SUCURSAL</th>
                        <th>DETALLE DIRECCION</th>
                        <th>DISTRITO</th>
                        <th>CANTON</th>
                        <th>PROVINCIA</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($direcciones)){
                            $idEstado = $row['ID_ESTADO'];
                            $idDistrito = $row['ID_DISTRITO'];
                            $idCanton = $row['ID_CANTON'];
                            $idProvincia = $row['ID_PROVINCIA'];

                            $estado = obtenerEstado($idEstado);
                            $distrito = obtenerDistrito($idDistrito);
                            $canton = obtenerCanton($idCanton);
                            $provincia = obtenerProvincia($idProvincia);

                            echo "<tr>";
                            echo "<td>" . $row['ID_SUCURSAL'] . "</td>";
                            echo "<td>" . $row['DETALLE_DIRECCION'] . "</td>";
                            echo "<td>" . $distrito['NOMBRE_DISTRITO'] . "</td>";
                            echo "<td>" . $canton['NOMBRE_CANTON'] . "</td>";
                            echo "<td>" . $provincia['NOMBRE_PROVINCIA'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaDirecciones tbody tr');

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