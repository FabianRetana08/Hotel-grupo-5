<?php 
include('sql/segmentosPruebasSQL.php');
$estados = obtenerEstados();
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/listaEstados.css"> 

</head>
<body>    
    <?php
    include('header/header.php');
    ?>    

    <div class="principal-container">    

    <div class="options">
        <a href="estado.php" class="go-back-button">Regresar</a>
        <input type="text" id="busqueda" placeholder="Buscar en la tabla..." class="buscador">
    </div>    

    <?php if ($estados): ?>

        <table id="tablaEstados">
            <thead>
                <tr>
                    <th>ID ESTADO</th>
                    <th>ESTADO</th>   
                    <th>DESCRIPCION ESTADO</th>
                </tr>
            </thead>
            <tbody>
            
                <?php
                    while ($row = oci_fetch_assoc($estados)) {
                        echo "<tr>";
                        echo "<td>" . $row['ID_ESTADO'] . "</td>";
                        echo "<td>" . $row['ESTADO'] . "</td>";
                        echo "<td>" . $row['DESCRIPCION_ESTADO'] . "</td>";
                        echo "</tr>";
                    }
                ?>
                </tr>
            </tbody>
        </table>

    <?php endif ?>

    </div>

    <script>
        document.getElementById('busqueda').addEventListener('keyup', function() {
            let filtro = this.value.toLowerCase();
            let filas = document.querySelectorAll('#tablaEstados tbody tr');

            filas.forEach(fila => {
                let texto = fila.textContent.toLowerCase();
                fila.style.display = texto.includes(filtro) ? '' : 'none';
            });
        });
    </script>
    
</body>
</html>