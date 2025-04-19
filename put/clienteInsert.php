<?php
include('sql/clienteCRUD.php');
include('sql/tipoClienteCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['insertar'])){
        $idCliente = trim($_POST['idCliente']);
        $nombreCliente = trim($_POST['nombreCliente']);
        $primerApellido = trim($_POST['primerApellido']);
        $segundoApellido = trim($_POST['segundoApellido']);
        $email = trim($_POST['email']);
        $numTelefono = trim($_POST['numTelefono']);
        $idTipoCliente = trim($_POST['idTipoCliente']);
        $idEstado = trim($_POST['idEstado']);

        if(is_numeric($idTipoCliente) && is_numeric($numTelefono)){
            $insertEnviado = true;

            $resultado = insertarCliente($idCliente, $nombreCliente, $primerApellido, $segundoApellido, $email, $numTelefono, $idTipoCliente, $idEstado);
            if($resultado){
                $insertRealizado = true;
            }
        }else{
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
                    <h3 class="message">Algunos de los datos proporcionaos no son validos</h3>
                <?php endif; ?>

                <p class="form-title">Insertar los datos</p>

                <div class="form-inputs-container">

                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idCliente" placeholder="ID DEL CLIENTE" required>
                    </div>
                    <div>
                        <p class="form-input-title">Nombre:</p>
                        <input type="text" name="nombreCliente" placeholder="NOMBRE DEL CLIENTE" required>
                    </div>
                    <div>
                        <p class="form-input-title">Primer Apellido:</p>
                        <input type="text" name="primerApellido" placeholder="PRIMER APELLIDO" required>
                    </div>
                    <div>
                        <p class="form-input-title">Segundo Apellido:</p>
                        <input type="text" name="segundoApellido" placeholder="SEGUNDO APELLIDO" required>
                    </div>
                    <div>
                        <p class="form-input-title">Email:</p>
                        <input type="text" name="email" placeholder="EMAIL" required>
                    </div>
                    <div>
                        <p class="form-input-title">Telefono:</p>
                        <input type="text" name="numTelefono" placeholder="TELEFONO" required>
                    </div>
                    <div>
                        <p class="form-input-title">Tipo de Cliente:</p>
                        <select name="idTipoCliente" required>
                            <option value="">TIPO CLIENTE</option>
                            <?php
                                $tipoClientes = obtenerTipoClientes();

                                while($row = oci_fetch_assoc($tipoClientes)){
                                    if($row['ID_ESTADO'] != 2){
                                        echo "<option value='" . $row['ID_TIPO_CLIENTE'] . "'>" . $row['DESCRIPCION'] . "</option>";
                                    }
                                }
                            ?>
                        </select>
                    </div>
                    <div>
                        <p class="form-input-title">Estado:</p>
                        <select name="idEstado" required>
                            <option value="">ESTADO</option>
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

                <input type="submit" name="insertar" values="Insertar" class="submit-button">
                <a href="cliente.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">El cliente ha sido registrado</h3>
                    <a href="cliente.php" class="continue-button">Continuar</a>
                </div>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">Ocurrio un error durante el regisro</h3>
                    <a href="cliente.php" class="continue-button">Continuar</a>
                </div>

            <?php endif; ?>
        
        <?php endif; ?>

    </div>
</body>
</html>