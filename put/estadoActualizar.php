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
    <link rel="stylesheet" href="css/actualizarForm.css"> 
    <title>Document</title>
</head>
<body>

    <?php include('header/header.php'); ?>

    <div class="principal-container">
    
    <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>
    <!-- Formulario para Buscar un Estado por ID -->
    

    <form action="" method="POST">

        <?php if($datosInvalidos):?>
            <h3 class="message">El id proporcionado contiene digitos invalidos</h3>
        <?php endif ?>
        
        <h3 class="form-title">Buscar Estado</h3>            

        <div class="form-inputs-container">
            <div>
                <p class="form-input-title">ID:</p>
                <input type="text" name="idEstado" placeholder="ID DEL ESTADO" required>      
            </div>            
        </div>
        
            
                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="estado.php" class="cancel-button">Cancelar</a>    
        
    </form>

    <?php elseif (!$actualizacionRealizada): ?>
        <!-- FORMULARIO PARA ACTUALIZAR EL ESTADO ENCONTRADO -->

        <?php if($estado): ?>

            <form action="" method="POST">      
                
                <p class = "form-title">Inserta los Datos Actualizados</p>

                <div class="form-inputs-container">
                    <input type="hidden" name="idEstado" 
                    value="<?php 
                            echo $estado['ID_ESTADO'];
                            ?>">

                    <div>
                        <p class="form-input-title">Estado:</p>
                        <input type="text" name="estado" id="estado" placeholder="ESTADO"
                        value="<?php 
                                echo $estado['ESTADO'];
                                ?>" required><br>
                    </div>                    

                    <div>
                        <p class="form-input-title">Descripcion:</p>
                        <input type="text" name="descripcionEstado" id="descripcionEstado" placeholder="DESCRIPCION DEL ESTADO"
                        value="<?php 
                                echo $estado['DESCRIPCION_ESTADO'];
                                ?>" required><br>
                    </div>                    
                </div>                        
                
                    <input type="submit" name="actualizar" value="Actualizar" class="submit-button">            
                    <a href="estado.php" class="cancel-button">Cancelar</a>
                          
            </form>

        <?php else: ?>

            <div class="db-message-container">
                <h3 class="db-message">No hubo resultados</h3>
                <a href="" class="continue-button">Regresar</a>
            </div>            
            

        <?php endif; ?>

    <?php elseif ($actualizacionRealizada && $actualizado): ?>

        <div class="db-message-container">
            <h3 class="db-message">Se ha actualizado correctamente</h3>
            <a href="estado.php" class="continue-button">Aceptar</a>
        </div>        

    <?php elseif ($actualizacionRealizada && !$actualizado): ?>

        <h3 class="db-message">Hubo un error al actualizar los datos</h3>
        <a href="estado.php" class="continue-button">Aceptar</a>

    <?php endif; ?>

    </div>
</body>
</html>