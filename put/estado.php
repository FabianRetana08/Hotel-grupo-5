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

    <style>
        .header {
            color: blue;
        }
    </style>

</head>
<body>    
    <?php
    include('header/header.php');
    ?>

    <div class="principal-container">    

    <?php if ($estados): ?>

        <table border=1>
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
    
</body>
</html>