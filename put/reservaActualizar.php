<?php
include('sql/reservaCRUD.php');
include('sql/clienteCRUD.php');
include('sql/habitacionCRUD.php');
include('sql/tipoReservaCRUD.php');
include('sql/estadoCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    if(isset($_POST['buscar'])){

        $numReserva = trim($_POST['numReserva']);
        $idCliente =trim($_POST['idCliente']);
        $idHabitacion = trim($_POST['idHabitacion']);

        if (is_numeric($numReserva)){
            $busquedaRealizada = true;
            $reserva = obtenerReserva($numReserva, $idCliente, $idHabitacion);

            list($mes, $dia, $anio) = explode('/', $reserva['FECHA_RESERVADO']);
        }else{
            $datosInvalidos = true;
        }

    }else if (isset($_POST['actualizar'])){
        
        $numReserva = trim($_POST['numReserva']);
        $idCliente = trim($_POST['idCliente']);
        $idHabitacion = trim($_POST['idHabitacion']);

        $mes = trim($_POST['mes']);
        $dia = trim($_POST['dia']);
        $anio = trim($_POST['anio']);
        $fechaReservado = $mes . "/" . $dia . "/" . $anio;

        $idTipoReserva = trim($_POST['idTipoReserva']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarReserva($numReserva, $idCliente, $idHabitacion, $fechaReservado, $idTipoReserva, $idEstado);
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
    <title>Actualizar una Reserva</title>
</head>
<body>
    
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">El numero de reserva proporcionado contiene digitos invalidos</h3>
                <?php endif; ?>

                <h3 class="form-title">Buscar Reserva</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">Numero de la Reserva:</p>
                        <input type="text" name="numReserva" placeholder="NUMERO DE LA RESERVA" required>                        
                    </div>

                    <div>
                        <p class="form-input-title">Cliente:</p>
                        <select name="idCliente" required>
                            <option value="">Selecciona un Cliente</option>
                            <?php
                                $clientes = obtenerClientes();

                                while($row = oci_fetch_assoc($clientes)){
                                    IF($row['ID_ESTADO'] != 2){
                                    echo "<option value='" . $row['ID_CLIENTE'] . "'>" . $row['NOMBRE_CLIENTE'] . " " . $row['PRIMER_APELLIDO'] . " " . $row['SEGUNDO_APELLIDO'] . "</option>";
                                    }
                                    
                                }
                            ?>
                        </select>
                    </div>

                    <div>
                        <p class="form-input-title">Habitacion:</p>
                        <select name="idHabitacion" required>
                            <option value="">Selecciona una Habitacion</option>
                            <?php
                                $habitaciones = obtenerHabitaciones();

                                while($row = oci_fetch_assoc($habitaciones)){
                                    IF($row['ID_ESTADO'] == 3){
                                    echo "<option value='" . $row['ID_HABITACION'] . "'>" . $row['ID_HABITACION'] . "</option>";
                                    }
                                    
                                }
                            ?>
                        </select>
                    </div>
                </div>

                

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="reserva.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($reserva): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">
                        <input type="hidden" name="numReserva"
                            value="<?php
                                        echo $reserva['NUM_RESERVA'];
                                    ?>" required>

                        <input type="hidden" name="idCliente"
                            value="<?php
                                        echo $reserva['ID_CLIENTE'];
                                    ?>" required>

                        <input type="hidden" name="idHabitacion"
                            value="<?php
                                        echo $reserva['ID_HABITACION'];
                                    ?>" required>

                        <div>
                            <p class="form-input-title">Mes</p>
                            <input type="text" name="mes" placeholder="MES DE LA RESERVA"
                                value="<?php
                                        echo $mes;
                                        ?>" required>
                        </div>

                        <div>
                            <p class="form-input-title">Dia</p>
                            <input type="text" name="dia" placeholder="DIA DE LA RESERVA"
                                value="<?php
                                        echo $dia;
                                        ?>" required>
                        </div>

                        <div>
                            <p class="form-input-title">Año</p>
                            <input type="text" name="anio" placeholder="AÑO DE LA RESERVA"
                                value="<?php
                                        echo $anio;
                                        ?>" required>
                        </div>
                        
                        <div>
                            <p class="form-input-title">Tipo de Reserva:</p>
                            <select name="idTipoReserva" required>
                            <option value="">Seleccione un Tipo de Reserva</option>
                                <?php
                                    $tiposReserva = obtenerTiposReserva();

                                    while($row = oci_fetch_assoc($tiposReserva)){
                                        $seleccionado = "";

                                        if($reserva['ID_TIPO_RESERVA'] == $row['ID_TIPO_RESERVA']){
                                            $seleccionado = "selected";
                                        }

                                        
                                            echo "<option value='" . $row['ID_TIPO_RESERVA'] . "' " . $seleccionado . " >" . $row['NOMBRE'] . "</option>";
                                        
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

                                        if($reserva['ID_ESTADO'] == $row['ID_ESTADO']){
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
                    <a href="reserva.php" class="cancel-button">Cancelar</a>

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
                <a href="reserva.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="reserva.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>

</body>
</html>