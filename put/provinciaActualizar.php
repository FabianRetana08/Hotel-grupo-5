<?php
include('sql/estadoCRUD.php');
include('sql/provinciaCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $idProvincia = trim($_POST['idProvincia']);

        if (is_numeric($idProvincia)){
            $busquedaRealizada = true;
            $provincia = obtenerProvincia($idProvincia);
        }else{
            $datosInvalidos = true;
        }

    }else if (isset($_POST['actualizar'])){
        
        $idProvincia = trim($_POST['idProvincia']);
        $nombreProvincia = trim($_POST['nombreProvincia']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarProvincia($idProvincia, $nombreProvincia, $idEstado);
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

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado contiene digitos invalidos</h3>
                <?php endif; ?>

                <h3 class="form-title">Buscar Provincia</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idProvincia" placeholder="ID DE LA PROVINCIA" required>                        
                    </div>
                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="provincia.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($provincia): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">
                        <input type="hidden" name="idProvincia"
                            value="<?php
                                        echo $provincia['ID_PROVINCIA'];
                                    ?>" required>

                        <div>
                            <p class="form-input-title">Nombre</p>
                            <input type="text" name="nombreProvincia" placeholder="NOMBRE DE LA PROVINCIA"
                                value="<?php
                                        echo $provincia['NOMBRE_PROVINCIA'];
                                        ?>" required>
                        </div>
                        
                        <div>
                            <p class="form-input-title">Estado:</p>
                            <select name="idEstado" required>
                            <option value="">Seleccione un Estado</option>
                                <?php
                                    $estados = obtenerEstados();

                                    while($row = oci_fetch_assoc($estados)){
                                        $seleccionado = "";

                                        if($provincia['ID_ESTADO'] == $row['ID_ESTADO']){
                                            $seleccionado = "selected";
                                        }

                                        if($row['ID_ESTADO'] == 1 || $row['ID_ESTADO'] == 2){
                                            echo "<option value='" . $row['ID_ESTADO'] . "' " . $seleccionado . " >" . $row['ESTADO'] . "</option>";
                                        }                                    
                                    }
                                    
                                ?>
                            </select>
                        </div>
                    </div>

                    <input type="submit" name="actualizar" value="Actualizar" class="submit-button">
                    <a href="provincia.php" class="cancel-button">Cancelar</a>

                </form>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">No hubo resultados</h3>
                    <a href="" class="continue-button">Regresar</a>
                </div>

            <?php endif; ?>
        
        <?php elseif($actualizacionRealizada && $actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Se ha actualizado correctamente</h3>
                <a href="provincia.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="provincia.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>

</body>
</html>