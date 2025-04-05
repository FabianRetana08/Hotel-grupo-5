<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="plantilla.css"> 
    <title>Document</title>
</head>
<body>
    <?php
        include('header.php');        
    ?>

    <div class="principal-container">

        <?php
        if (isset($_GET['mensaje'])) {
            echo "<h3>" . htmlspecialchars($_GET['mensaje']) . "</h3>";
        }
        ?>

        <form action="formularioActualizarEstado.php" method="POST">
            <p>Ingresa el ID del estado para editar:</p>
            <input type="text" name="id" placeholder="ID del Estado">

            <div>
                <input type="submit" name = 'buscar' value="Buscar Estado">
                <button><a href="index.php">Cancelar</a></button>     
            </div>            
        </form>
    </div>    
</body>
</html>