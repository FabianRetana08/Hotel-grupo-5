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
            <a href="listaDistrito.php" class="link">
                Ver lista de los Distritos
            </a>
            <a href="distritoInsert.php" class="link">
                Insertar un Distrito
            </a>
            <a href="distritoActualizar.php" class="link">
                Actualizar un Distrito
            </a>
        </div>
    </div>
</body>
</html>