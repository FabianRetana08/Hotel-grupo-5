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

    <form action="insertarEstado.php" method = 'POST'>

        <p>Inserta los datos</p>

        <div>
            <div>
                <p>Id:</p>
                <input type="text" name="id" placeholder="Id">                            
            </div>    
            <div>
                <p>Estado:</p>
                <input type="text" name="estado" placeholder="Estado">                            
            </div>    
            <div>
                <p>Descripcion:</p>
                <input type="text" name="descripcion" placeholder="Descripcion">                            
            </div>            
        </div>

        <input type="submit" name="insertar" value="Insertar">
        <button><a href="index.php">Cancelar</a></button>     

    </form>
    </div>    
</body>
</html>