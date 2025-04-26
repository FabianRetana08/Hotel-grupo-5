<?php

include('sql/cantonCRUD.php');
include('sql/provinciaCRUD.php');
include('sql/distritoCRUD.php');
include('sql/direccionCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['insertar'])){
        $idSucursal = trim($_POST['idSucursal']);
        $detalleDireccion = trim($_POST['detalleDireccion']);
        $idDistrito = trim($_POST['idDistrito']);
        $idCanton = trim($_POST['idCanton']);
        $idProvincia = trim($_POST['idProvincia']);
        $idEstado = trim($_POST['idEstado']);

        
            $insertEnviado = true;

            $resultado = insertarDireccion($idSucursal, $detalleDireccion, $idDistrito, $idCanton, $idProvincia, $idEstado);
            if ($resultado){
                $insertRealizado = true;
            }
        
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

        <?php if(!$insertEnviado): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado no es valido</h3>
                <?php endif; ?>

                <p class="form-title">Inserta los datos de la Direccion</p>

                <div class="form-inputs-container">

                    <div>
                        <p class="form-input-title">ID Sucursal:</p>
                        <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL" required>
                    </div>

                    <div>
                        <p class="form-input-title">Direccion Detallada:</p>
                        <input type="text" name="detalleDireccion" placeholder="DETALLE DE LA DIRECCION" required>
                    </div>
                    
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

                    <div>
                        <p class="form-input-title">Estado:</p>
                        <select name="idEstado" required>
                            <option value="">Seleccione un Estado</option>
                            <?php
                                $estados = obtenerEstados();

                                while($row = oci_fetch_assoc($estados)){
                                    if($row['ID_ESTADO'] == 1 || $row['ID_ESTADO'] == 2){
                                        echo "<option value='" . $row['ID_ESTADO'] . "'>" . $row['ESTADO'] . "</option>";
                                    }                                    
                                }
                                    
                            ?>
                        </select>
                    </div>

                </div>

                <input type="submit" name="insertar" value="Insertar" class="submit-button">
                <a href="  direccion.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">La direccion ha sido registrada correctamente</h3>
                    <a href="  direccion.php" class="continue-button">Continuar</a>
                </div>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">Ocurrio un error durante el registro</h3>
                    <a href="" class="continue-button">Continuar</a>
                </div>

            <?php endif; ?>

        <?php endif; ?>

    </div>

</body>
</html>