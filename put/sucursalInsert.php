<?php


include('sql/sucursalCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['insertar'])){
        $idSucursal = trim($_POST['idSucursal']);
        $telefono = trim($_POST['telefono']);
        $email = trim($_POST['email']);
        $idEstado = trim($_POST['idEstado']);

        
            $insertEnviado = true;

            $resultado = insertarSucursal($idSucursal, $telefono, $email, $idEstado);
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
    <title>Insertar una Sucursal</title>
</head>
<body>
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$insertEnviado): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado no es valido</h3>
                <?php endif; ?>

                <p class="form-title">Inserta los datos</p>

                <div class="form-inputs-container">

                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL" required>
                    </div>
                    <div>
                        <p class="form-input-title">Telefono:</p>
                        <input type="text" name="telefono" placeholder="TELEFONO DE LA SUCURSAL" required>
                    </div>
                    <div>
                        <p class="form-input-title">Email:</p>
                        <input type="text" name="email" placeholder="EMAIL DE LA SUCURSAL" required>
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
                <a href="  sucursal.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">La Sucursal ha sido registrada correctamente</h3>
                    <a href="  sucursal.php" class="continue-button">Continuar</a>
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