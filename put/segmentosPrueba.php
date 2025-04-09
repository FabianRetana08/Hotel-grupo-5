<?php
include('sql/segmentosPruebasSQL.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {   

    //Buscar el estado por medio del id
    if (isset($_POST['buscar'])) {
        $idEstado = $_POST['idEstado'];

        if (is_numeric($idEstado)){
            $busquedaRealizada = true;
            $estado = obtenerEstado($idEstado);
        }else{
            $datosInvalidos = true;
        }
    } else if (isset($_POST['actualizar'])) {

        $idEstado = $_POST['idEstado'];
        $estado = $_POST['estado'];
        $descripcionEstado = $_POST['descripcionEstado'];

        $actualizado = actualizarEstado($idEstado, $estado, $descripcionEstado);
        $actualizacionRealizada = true;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <title>Document</title>
</head>
<body>

    <?php include('header/header.php'); ?>

    <div class="principal-container">
    
    <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>
    <!-- Formulario para Buscar un Estado por ID -->

    <?php if($datosInvalidos){
        echo "<h3>El id proporcionado contiene digitos invalidos</h3>";
    } ?>

    <form action="" method="POST">
        <label>id:</label>
        <input type="text" name="idEstado" placeholder="ID DEL ESTADO" required>      
        
        <input type="submit" name="buscar" value="Buscar">
    </form>

    <?php elseif (!$actualizacionRealizada): ?>
        <!-- FORMULARIO PARA ACTUALIZAR EL ESTADO ENCONTRADO -->

        <?php if($estado): ?>

            <form action="" method="POST">
                <input type="hidden" name="idEstado" 
                    value="<?php 
                            echo $estado['ID_ESTADO'];
                            ?>">

                <label for="estado">Estado:</label>
                <input type="text" name="estado" id="estado" placeholder="ESTADO"
                    value="<?php 
                            echo $estado['ESTADO'];
                            ?>" required><br>

                <label for="descripcion">Descripción:</label>
                <input type="text" name="descripcionEstado" id="descripcionEstado" placeholder="DESCRIPCION DEL ESTADO"
                value="<?php 
                        echo $estado['DESCRIPCION_ESTADO'];
                        ?>" required><br>
                <div>
                    <input type="submit" name="actualizar" value="Actualizar">            
                    <button><a href="index.php">Cancelar</a></button>          
                </div>            
            </form>

        <?php else: ?>

            <h3>No hubo resultados</h3>
            <button>
                <a href="">regresar</a>
            </button>

        <?php endif; ?>

    <?php elseif ($actualizacionRealizada && $actualizado): ?>

        <h3>Se ha actualizado correctamente</h3>

    <?php elseif ($actualizacionRealizada && !$actualizado): ?>

        <h3>Hubo un error al actualizar los datos</h3>

    <?php endif; ?>

    </div>
</body>
</html>