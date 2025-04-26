<?php
include('sql/estadoCRUD.php');
include('sql/distritoCRUD.php');
include('sql/cantonCRUD.php');
include('sql/provinciaCRUD.php');
include('sql/direccionCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $idDistrito = trim($_POST['idDistrito']);
        $idCanton = trim($_POST['idCanton']);
        $idProvincia = trim($_POST['idProvincia']);

        if (is_numeric($idDistrito) && is_numeric($idCanton) && is_numeric($idProvincia)){
            $busquedaRealizada = true;
            $direccion = obtenerDireccion($idDistrito, $idCanton, $idProvincia);
        }else{
            $datosInvalidos = true;
        }

    }else if (isset($_POST['actualizar'])){
        
        $idSucursal = trim($_POST['idSucursal']);
        $detalleDireccion = trim($_POST['detalleDireccion']);
        $idDistrito = trim($_POST['idDistrito']);
        $idCanton = trim($_POST['idCanton']);
        $idProvincia = trim($_POST['idProvincia']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarDireccion($idSucursal, $detalleDireccion, $idDistrito, $idCanton, $idProvincia, $idEstado);
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
    <title>Actualizar una Direccion</title>
</head>
<body>
    
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado contiene digitos invalidos</h3>
                <?php endif; ?>

                <h3 class="form-title">Buscar una Direccion</h3>

                <div class="form-inputs-container">
                <div>
                        <p class="form-input-title">Distrito:</p>
                        <select name="idDistrito" required>
                            <option value="">Seleccione un Distrito</option>
                            <?php
                                $distritos = obtenerDistritos();

                                while($row = oci_fetch_assoc($distritos)){
                                    
                                        echo "<option value='" . $row['ID_DISTRITO'] . "'>" . $row['NOMBRE_DISTRITO'] . "</option>";
                                                       
                                }
                                    
                            ?>
                        </select>
                    </div>

                    <div>
                        <p class="form-input-title">Canton:</p>
                        <select name="idCanton" required>
                            <option value="">Seleccione un Canton</option>
                            <?php
                                $cantones = obtenerCantones();

                                while($row = oci_fetch_assoc($cantones)){
                                    
                                        echo "<option value='" . $row['ID_CANTON'] . "'>" . $row['NOMBRE_CANTON'] . "</option>";
                                                       
                                }
                                    
                            ?>
                        </select>
                    </div>

                    <div>
                        <p class="form-input-title">Provincia:</p>
                        <select name="idProvincia" required>
                            <option value="">Seleccione una Provincia</option>
                            <?php
                                $provincias = obtenerProvincias();

                                while($row = oci_fetch_assoc($provincias)){
                                    
                                        echo "<option value='" . $row['ID_PROVINCIA'] . "'>" . $row['NOMBRE_PROVINCIA'] . "</option>";
                                                       
                                }
                                    
                            ?>
                        </select>
                    </div>

                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="direccion.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($direccion): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">
                        <input type="hidden" name="idDistrito"
                            value="<?php
                                        echo $direccion['ID_DISTRITO'];
                                    ?>" required>

                        <input type="hidden" name="idProvincia"
                            value="<?php
                                        echo $direccion['ID_PROVINCIA'];
                                    ?>" required>

                        <input type="hidden" name="idCanton"
                            value="<?php
                                        echo $direccion['ID_CANTON'];
                                    ?>" required>

                        <div>
                            <p class="form-input-title">ID de la Sucursal</p>
                            <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL"
                                value="<?php
                                        echo $direccion['ID_SUCURSAL'];
                                        ?>" required>
                        </div>

                        <div>
                            <p class="form-input-title">Detalle de la Direccion</p>
                            <input type="text" name="detalleDireccion" placeholder="DETALLE DE LA DIRECCION"
                                value="<?php
                                        echo $direccion['DETALLE_DIRECCION'];
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

                                        if($direccion['ID_ESTADO'] == $row['ID_ESTADO']){
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
                    <a href="direccion.php" class="cancel-button">Cancelar</a>

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
                <a href="direccion.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="direccion.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>

</body>
</html>