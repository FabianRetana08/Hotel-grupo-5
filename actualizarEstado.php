<?php

    include('conection.php');

    if(isset($_POST['actualizar'])){
        if(
            strlen($_POST['id']) >= 1 &&
            strlen($_POST['estado']) >= 1 &&
            strlen($_POST['descripcion']) >= 1
            ){
                $id = trim($_POST['id']);
                $estado = trim($_POST['estado']);
                $descripcion = trim($_POST['descripcion']);

                $query = 'BEGIN FIDE_ESTADO_TB_ACTUALIZAR_SP(:idEstado, :estado, :descripcionEstado); END;';

                require('conection.php');

                $stid = oci_parse($conn, $query);

                oci_bind_by_name($stid, ":idEstado", $id);
                oci_bind_by_name($stid, ":estado", $estado);
                oci_bind_by_name($stid, ":descripcionEstado", $descripcion);

                $resultado = oci_execute($stid);

        }else{
            $mensaje = "<h3>Llena todos los campos</h3>";
            // Redirigir a formulario.php con el mensaje
            header("Location: formularioActualizarEstado.php?mensaje=" . urlencode($mensaje));
            exit;  
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
    
    <div class="principal-container">
        <?php
        include('header.php');
        ?>
    </div>

    <?php
    if($resultado){
        echo '<h1>Los datos se han actualizado</h1>';
    } else {
        echo '<h1>Ha ocurrido un error al actualizar los datos</h1>';
    }
    ?>

</body>
</html>