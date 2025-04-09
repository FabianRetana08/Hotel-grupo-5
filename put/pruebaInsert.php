<?php
ini_set('display_errors', 0);
error_reporting(0); 

include('sql/segmentosPruebasSQL.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['insertar'])) {
        $idEstado = trim($_POST['idEstado']);
        $estado = trim($_POST['estado']);
        $descripcionEstado = trim($_POST['descripcionEstado']);

        if (is_numeric($idEstado)){            
            $insertEnviado = true;

             $resultado = insertarEstado($idEstado, $estado, $descripcionEstado);
             if ($resultado){
                $insertRealizado = true;
             }
        } else {
            $datosInvalidos = true;
        }       
    }
}
?>

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
    include('header/header.php');
    ?>

    <div class="principal-container">    

    <?php if (!$insertEnviado): ?>
        
    <form action="" method = 'POST'>

        <?php if($datosInvalidos): ?>

            <h3>El id proporcionado no es valido</h3>

        <?php endif ?>

        <p>Inserta los datos</p>

        <div>
            <div>
                <p>Id:</p>
                <input type="text" name="idEstado" placeholder="Id del Estado">                            
            </div>    
            <div>
                <p>Estado:</p>
                <input type="text" name="estado" placeholder="Estado">                            
            </div>    
            <div>
                <p>Descripcion:</p>
                <input type="text" name="descripcionEstado" placeholder="Descripcion del Estado">                            
            </div>            
        </div>

        <input type="submit" name="insertar" value="Insertar">
        <button><a href="index.php">Cancelar</a></button>     

    </form>

    <?php else: ?>

        <?php if ($insertRealizado): ?>

            <h3>El insert se ha realizado correctamente</h3>
            <button>
                <a href="index.php">Aceptar</a>
            </button>

        <?php else: ?>

            <h3>Ocurrio un error durante el insert</h3>

        <?php endif ?>

    <?php endif; ?>

    </div>    
</body>
</html>