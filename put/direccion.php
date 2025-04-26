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
            <a href="listaDirecciones.php" class="link">
                Ver lista de Direcciones
            </a>
            <a href="direccionInsert.php" class="link">
                Insertar una Direccion
            </a>
            <a href="direccionActualizar.php" class="link">
                Actualizar una Direccion
            </a>
            <a href="provincia.php" class="link">
                Provincia
            </a>
            <a href="canton.php" class="link">
                Canton
            </a>
            <a href="distrito.php" class="link">
                Distrito
            </a>
            <a href="sucursal.php" class="link">
                Sucursal
            </a>
        </div>
    </div>
</body>
</html>