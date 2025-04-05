<?php

    include('conection.php');

    if(isset($_POST['insertar'])){
        if(
            strlen($_POST['id']) >= 1 &&
            strlen($_POST['estado']) >= 1 &&
            strlen($_POST['descripcion']) >= 1
            ){
                $id = trim($_POST['id']);
                $estado = trim($_POST['estado']);
                $descripcion = trim($_POST['descripcion']);

                $query = 'CALL FIDE_ESTADO_TB_INSERTAR_SP(:id_estado, :estado, :descripcion_estado)';

                require('conection.php');

                $stid = oci_parse($conn, $query);

                oci_bind_by_name($stid, ":id_estado", $id);
                oci_bind_by_name($stid, ":estado", $estado);
                oci_bind_by_name($stid, ":descripcion_estado", $descripcion);

                $resultado = oci_execute($stid);

                if(!$resultado){
                    $mensaje = "Ocurrio un error en el insert";
                     // Redirigir a formulario.php con el mensaje
                    header("Location: pruebaInsert.php?mensaje=" . urlencode($mensaje));
                    exit;                    
                }
        }else{
            $mensaje = "Llena todos los campos";
            // Redirigir a formulario.php con el mensaje
            header("Location: pruebaInsert.php?mensaje=" . urlencode($mensaje));
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
    <?php
    include('header.php');
    ?>

    <div class="principal-container">        

        <div>
            <h1>El resgistro del estado "<?php echo $estado; ?>" se realizo con exito.</h1>
        </div>
    </div>
</body>
</html>