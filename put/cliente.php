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
    <?php include('header/header.php'); ?>

    <div class="principal-container">
        <div class="menu">
            <a href="listaCliente.php" class="link">Ver lista de Clientes</a>
            <a href="clienteInsert.php" class="link">Insertar un Cliente</a>
            <a href="clienteActualizar.php" class="link">Actualizar un Cliente</a>
            <a href="listaTiposCliente.php" class="link">Ver lista de Tipos de Cliente</a>
            <a href="tipoClienteInsert.php" class="link">Insertar un Tipo de Cliente</a>
            <a href="tipoClienteActualizar.php" class="link">Actualizar un Tipo de Cliente</a>
        </div>
    </div>
</body>
</html>