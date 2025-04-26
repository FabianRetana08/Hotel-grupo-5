<?php
include('sql/cantonCRUD.php');
include('sql/estadoCRUD.php');
$cantones = obtenerCantones();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listasEstilo.css"> 
    <title>Document</title>
</head>
<body>
    <?php include('header/header.php') ?>

    <div class="principal-container">                  

        <div class="options">        
            <a href="canton.php" class="go-back-button">Regresar</a>      
        
            <div >
                <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">

                <label class="filter">            
                    <input type="checkbox" id="filtroActivo">
                    Solo mostrar activos
                </label>
            </div>            
        </div>

        <?php if ($cantones): ?>

            <table id="tablaCantones">
                <thead>
                    <tr>
                        <th>ID CANTON</th>
                        <th>NOMBRE</th>
                        <th>ESTADO</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                        while ($row = oci_fetch_assoc($cantones)){
                            $idEstado = $row['ID_ESTADO'];

                            $estado = obtenerEstado($idEstado);

                            echo "<tr>";
                            echo "<td>" . $row['ID_CANTON'] . "</td>";
                            echo "<td>" . $row['NOMBRE_CANTON'] . "</td>";
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

            let filas = document.querySelectorAll('#tablaCantones tbody tr');

            filas.forEach(fila => {
                let textoFila = fila.textContent.toLowerCase();
                let estado = fila.querySelector('td:nth-child(3)').textContent.trim().toLowerCase();

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