<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/menu.css"> 
    <title>Habitacion</title>
</head>
<body>
    <?php
        include('header/header.php');        
    ?>

    <div class="principal-container">

        <div class="menu">
            <a href="listaHabitaciones.php" class="link">
                Ver lista de Habitaciones
            </a>
            <a href="habitacionInsert.php" class="link">
                Insertar una Habitacion
            </a>
            <a href="habitacionActualizar.php" class="link">
                Actualizar una Habitacion
            </a>
            <a href="listaTiposHabitacion.php" class="link">
                Ver lista de Tipos de Habitaciones
            </a>
            <a href="tipoHabitacionInsert.php" class="link">
                Insertar un Tipo de Habitacion
            </a>
            <a href="tipoHabitacionActualizar.php" class="link">
                Actualizar un Tipo de Habitacion
            </a>
            
        </div>
    </div>
</body>
</html>