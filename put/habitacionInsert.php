<?php
include('sql/tipoHabitacionCRUD.php');
include('sql/habitacionCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['insertar'])){
        $idHabitacion = trim($_POST['idHabitacion']);
        $idTipoHabitacion = trim($_POST['idTipoHabitacion']);
        $idSucursal = trim($_POST['idSucursal']);
        $idEstado = trim($_POST['idEstado']);

        if(is_numeric($idSucursal)){
            $insertEnviado = true;

            $resultado = insertarHabitacion($idHabitacion, $idTipoHabitacion, $idSucursal, $idEstado);
            if($resultado){
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
    <title>Insertar una Habitacion</title>
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
                        <input type="text" name="idHabitacion" placeholder="ID DE LA HABITACION" required>
                    </div>

                    <div>
                        <p class="form-input-title">Tipo de Habitacion:</p>
                        <select name="idTipoHabitacion" required>
                            <option value="">Seleccione un Tipo de Habitacion</option>
                            <?php
                                $tiposHabitacion = obtenerTiposHabitacion();

                                while($row = oci_fetch_assoc($tiposHabitacion)){
                                    
                                        echo "<option value='" . $row['ID_TIPO_HABITACION'] . "'>" . $row['DESCRIPCION'] . "</option>";
                                    
                                }
                            ?>
                        </select>
                    </div>
                    

                    <div>
                        <p class="form-input-title">ID Sucursal:</p>
                        <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL" required>
                    </div>                    
                    
                    <div>
                        <p class="form-input-title">Estado:</p>
                        <select name="idEstado" required>
                            <option value="">ESTADO</option>
                            <?php
                                $estados = obtenerEstados();

                                while($row = oci_fetch_assoc($estados)){
                                    
                                        echo "<option value='" . $row['ID_ESTADO'] . "'>" . $row['ESTADO'] . "</option>";
                                    
                                }
                            ?>
                        </select>
                    </div>

                </div>

                <input type="submit" name="insertar" values="Insertar" class="submit-button">
                <a href="habitacion.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">La Habitacion ha sido registrada</h3>
                    <a href="habitacion.php" class="continue-button">Continuar</a>
                </div>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">Ocurrio un error durante el regisro</h3>
                    <a href="habitacion.php" class="continue-button">Continuar</a>
                </div>

            <?php endif; ?>
        
        <?php endif; ?>

    </div>
</body>
</html>