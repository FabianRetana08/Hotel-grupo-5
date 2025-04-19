<?php


include('sql/tipoClienteCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['insertar'])){
        $idTipoCliente = trim($_POST['idTipoCliente']);
        $descripcion = trim($_POST['descripcion']);
        $idEstado = trim($_POST['idEstado']);

        if(is_numeric($idTipoCliente)){
            $insertEnviado = true;

            $resultado = insertarTipoCliente($idTipoCliente, $descripcion, $idEstado);
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

                <p class="form-title">Inserta los datos</p>

                <div class="form-inputs-container">

                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idTipoCliente" placeholder="ID DEL TIPO DE CLIENTE" required>                        
                    </div>
                    <div>
                        <p class="form-input-title">Descripcion:</p>
                        <input type="text" name="descripcion" placeholder="DESCRIPCION" required>                        
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
                <a href="cliente.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">El Tipo de Cliente ha sido registrado correctamente</h3>
                    <a href="cliente.php" class="continue-button">Continuar</a>
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