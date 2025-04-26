<?php
include('sql/estadoCRUD.php');
include('sql/tipoHabitacionCRUD.php');
include('sql/habitacionCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $idHabitacion = trim($_POST['idHabitacion']);

        
            $busquedaRealizada = true;
            $habitacion = obtenerHabitacion($idHabitacion);
        

    }else if (isset($_POST['actualizar'])){
        
        $idHabitacion = trim($_POST['idHabitacion']);
        $idTipoHabitacion = trim($_POST['idTipoHabitacion']);
        $idSucursal = trim($_POST['idSucursal']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarHabitacion($idHabitacion, $idTipoHabitacion, $idSucursal, $idEstado);
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
    <title>Actualizar una Habitacion</title>
</head>
<body>
    
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El id proporcionado contiene digitos invalidos</h3>
                <?php endif; ?>

                <h3 class="form-title">Buscar una Habitacion</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idHabitacion" placeholder="ID DE LA HABITACION" required>                        
                    </div>
                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="habitacion.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($habitacion): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">
                        <input type="hidden" name="idHabitacion"
                            value="<?php
                                        echo $habitacion['ID_HABITACION'];
                                    ?>" required>

                        <div>
                            <p class="form-input-title">Tipo de Habitacion:</p>
                            <select name="idTipoHabitacion" required>
                            <option value="">Seleccione un Tipo de Habitacion</option>
                                <?php
                                    $tiposHabitacion = obtenerTiposHabitacion();

                                    while($row = oci_fetch_assoc($tiposHabitacion)){
                                        $seleccionado = "";

                                        if($habitacion['ID_TIPO_HABITACION'] == $row['ID_TIPO_HABITACION']){
                                            $seleccionado = "selected";
                                        }

                                        
                                            echo "<option value='" . $row['ID_TIPO_HABITACION'] . "' " . $seleccionado . " >" . $row['DESCRIPCION'] . "</option>";
                                        
                                    }
                                    
                                ?>
                            </select>
                        </div>
                    

                        <div>
                            <p class="form-input-title">Id Sucursal</p>
                            <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL"
                                value="<?php
                                        echo $habitacion['ID_SUCURSAL'];
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

                                        if($habitacion['ID_ESTADO'] == $row['ID_ESTADO']){
                                            $seleccionado = "selected";
                                        }

                                        
                                            echo "<option value='" . $row['ID_ESTADO'] . "' " . $seleccionado . " >" . $row['ESTADO'] . "</option>";
                                        
                                    }
                                    
                                ?>
                            </select>
                        </div>
                    </div>

                    <input type="submit" name="actualizar" value="Actualizar" class="submit-button">
                    <a href="habitacion.php" class="cancel-button">Cancelar</a>

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
                <a href="habitacion.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="habitacion.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>

</body>
</html>