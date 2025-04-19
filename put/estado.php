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
            <a href="listaEstados.php" class="link">
                Ver lista de Estados
            </a>
            <a href="estadoInsert.php" class="link">
                Insertar un Estado
            </a>
            <a href="estadoActualizar.php" class="link">
                Actualizar un Estado
            </a>
        </div>
    </div>
</body>
</html>