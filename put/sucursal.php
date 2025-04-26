<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/menu.css"> 
    <title>Document</title>
</head>
<body>
    <?php
        include('header/header.php');        
    ?>

    <div class="principal-container">        

        <div class="menu">
            <a href="listaSucursales.php" class="link">
                Ver lista de las Sucursales
            </a>
            <a href="sucursalInsert.php" class="link">
                Insertar una Sucursal
            </a>
            <a href="sucursalActualizar.php" class="link">
                Actualizar una Sucursal
            </a>
        </div>
    </div>
</body>
</html>