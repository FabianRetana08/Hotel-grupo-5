<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/menu.css"> 
    <title>Reserva</title>
</head>
<body>
    <?php
        include('header/header.php');        
    ?>

    <div class="principal-container">

        <div class="menu">
            <a href="listaReservas.php" class="link">
                Ver lista de Reservas
            </a>
            <a href="reservaInsert.php" class="link">
                Insertar una Reserva
            </a>
            <a href="reservaActualizar.php" class="link">
                Actualizar una Reserva
            </a>
            <a href="listaTiposReserva.php" class="link">
                Ver lista de Tipos de Reservas
            </a>
            <a href="tipoReservaInsert.php" class="link">
                Insertar un Tpo de Reserva
            </a>
            <a href="tipoReservaActualizar.php" class="link">
                Actualizar un Tipo de Reserva
            </a>
            
        </div>
    </div>
</body>
</html>