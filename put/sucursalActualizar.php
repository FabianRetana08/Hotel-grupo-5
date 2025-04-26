<?php
include('sql/estadoCRUD.php');
include('sql/sucursalCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $idSucursal = trim($_POST['idSucursal']);

        if (is_numeric($idSucursal)){
            $busquedaRealizada = true;
            $sucursal = obtenerSucursal($idSucursal);
        }else{
            $datosInvalidos = true;
        }

    }else if (isset($_POST['actualizar'])){
        
        $idSucursal = trim($_POST['idSucursal']);
        $telefono = trim($_POST['telefono']);
        $email = trim($_POST['email']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarSucursal($idSucursal, $telefono, $email, $idEstado);
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
    <title>Actualizar una Sucursal</title>
</head>
<body>
    
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado contiene digitos invalidos</h3>
                <?php endif; ?>

                <h3 class="form-title">Buscar Sucursal</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL" required>
                    </div>
                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="sucursal.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($sucursal): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">
                        <input type="hidden" name="idSucursal"
                            value="<?php
                                        echo $sucursal['ID_SUCURSAL'];
                                    ?>" required>

                        <div>
                            <p class="form-input-title">Telefono:</p>
                            <input type="text" name="telefono" placeholder="TELEFONO DE LA SUCURSAL"
                                value="<?php
                                        echo $sucursal['TELEFONO'];
                                        ?>" required>
                        </div>

                        <div>
                            <p class="form-input-title">Email:</p>
                            <input type="text" name="email" placeholder="EMAIL DE LA SUCURSAL"
                                value="<?php
                                        echo $sucursal['EMAIL'];
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

                                        if($sucursal['ID_ESTADO'] == $row['ID_ESTADO']){
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
                    <a href="sucursal.php" class="cancel-button">Cancelar</a>

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
                <a href="sucursal.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="sucursal.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>

</body>
</html>