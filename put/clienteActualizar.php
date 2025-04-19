<?php
include('sql/estadoCRUD.php');
include('sql/tipoClienteCRUD.php');
include('sql/clienteCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $idCliente = trim($_POST['idCliente']);

        if(is_numeric($idCliente)){
            $busquedaRealizada = true;
            $cliente = obtenerCliente($idCliente);
        }else{
            $datosInvalidos = true;
        }

    }else if(isset($_POST['actualizar'])) {

        $idCliente = trim($_POST['idCliente']);
        $nombreCliente = trim($_POST['nombreCliente']);
        $primerApellido = trim($_POST['primerApellido']);
        $segundoApellido = trim($_POST['segundoApellido']);
        $email = trim($_POST['email']);
        $numTelefono = trim($_POST['numTelefono']);
        $idTipoCliente = trim($_POST['idTipoCliente']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarCliente($idCliente, $nombreCliente, $primerApellido, $segundoApellido, $email, $numTelefono, $idTipoCliente, $idEstado);
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

                    <h3 class="message">El ID proporcionado contiene digitos invalidos</h3>

                <?php endif; ?>

                <h3 class="form-title">Buscar Cliente</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idCliente" placeholder="ID DEL CLIENTE" required>
                    </div>
                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="cliente.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($cliente): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizado</p>

                    <div class="form-inputs-container">

                        <input type="hidden" name="idCliente"
                            value="<?php
                                    echo $cliente['ID_CLIENTE'];
                                    ?>" required>

                    </div>

                    <div>
                        <p class="form-input-title" required>Nombre:</p>
                        <input type="text" name="nombreCliente" placeholder="NOMBRE DEL CLIENTE"
                            value="<?php
                                    echo $cliente['NOMBRE_CLIENTE'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title" required>Primer Apellido:</p>
                        <input type="text" name="primerApellido" placeholder="PRIMER APELLIDO"
                            value="<?php
                                    echo $cliente['PRIMER_APELLIDO'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title" required>Segundo Apellido:</p>
                        <input type="text" name="segundoApellido" placeholder="SEGUNDO APELLIDO"
                            value="<?php
                                    echo $cliente['SEGUNDO_APELLIDO'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title" required>Email:</p>
                        <input type="text" name="email" placeholder="EMAIL"
                            value="<?php
                                    echo $cliente['EMAIL'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title" required>Telefono:</p>
                        <input type="text" name="numTelefono" placeholder="TELEFONO"
                            value="<?php
                                    echo $cliente['NUM_TELEFONO'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title">Tipo de Cliente</p>
                        <select name="idTipoCliente" required>
                            <option value="">Seleccione un Tipo de Cliente</option>
                            <?php
                            
                                $tipoClientes = obtenerTipoClientes();

                                while($row = oci_fetch_assoc($tipoClientes)){
                                    $seleccionado = "";

                                    if($cliente['ID_TIPO_CLIENTE'] == $row['ID_TIPO_CLIENTE']){
                                            $seleccionado = "selected";
                                    }

                                    echo "<option value='" . $row['ID_TIPO_CLIENTE'] . "' " . $seleccionado . " >" . $row['DESCRIPCION'] . "</option>";
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
                                    $seleccionado = "";

                                    if($cliente['ID_ESTADO'] == $row['ID_ESTADO']){
                                        $seleccionado = "selected";
                                    }

                                    if($row['ID_ESTADO'] == 1 || $row['ID_ESTADO'] == 2){
                                        echo "<option value='" . $row['ID_ESTADO'] . "' " . $seleccionado . " >" . $row['ESTADO'] . "</option>";
                                    }                                    
                                }
                                
                            ?>
                        </select>
                    </div>

                    <input type="submit" name="actualizar" value="Actualizar" class="submit-button">
                    <a href="cliente.php" class="cancel-button">Cancelar</a>

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
                <a href="cliente.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="cliente.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>
</body>
</html>