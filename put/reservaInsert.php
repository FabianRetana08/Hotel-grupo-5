<?php
include('sql/reservaCRUD.php');
include('sql/clienteCRUD.php');
include('sql/habitacionCRUD.php');
include('sql/tipoReservaCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['insertar'])){
        $numReserva = trim($_POST['numReserva']);
        $idCliente = trim($_POST['idCliente']);
        $idHabitacion = trim($_POST['idHabitacion']);

        $mes = trim($_POST['mes']);
        $dia = trim($_POST['dia']);
        $anio = trim($_POST['anio']);
        $fechaReservado = $mes . "/" . $dia . "/" . $anio;

        $idTipoReserva = trim($_POST['idTipoReserva']);
        $idEstado = trim($_POST['idEstado']);

        if(is_numeric($mes) && is_numeric($dia) && is_numeric($anio)){
            $insertEnviado = true;

            $resultado = insertarReserva($numReserva, $idCliente, $idHabitacion, $fechaReservado, $idTipoReserva,$idEstado);
            reservarHabitacion($idHabitacion);
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
    <title>Reservar una Habitacion</title>
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
                        <p class="form-input-title">Numero de reserva:</p>
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

                    
                    <div>
                        <p class="form-input-title">Mes:</p>
                        <input type="text" name="mes" placeholder="MES" required>
                    </div>

                    <div>
                        <p class="form-input-title">Dia:</p>
                        <input type="text" name="dia" placeholder="DIA" required>
                    </div>

                    <div>
                        <p class="form-input-title">Año:</p>
                        <input type="text" name="anio" placeholder="AÑO" required>
                    </div>

                    <div>
                        <p class="form-input-title">Tipo de Reserva:</p>
                        <select name="idTipoReserva" required>
                            <option value="">Seleccione una Tipo de Reserva</option>
                            <?php
                                $tiposReserva = obtenerTiposReserva();

                                while($row = oci_fetch_assoc($tiposReserva)){
                                    if($row['ID_ESTADO'] != 2){
                                        echo "<option value='" . $row['ID_TIPO_RESERVA'] . "'>" . $row['NOMBRE'] . "</option>";
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
                <a href="reserva.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">Se ha realizado la Reserva</h3>
                    <a href="reserva.php" class="continue-button">Continuar</a>
                </div>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">Ocurrio un error durante la reserva</h3>
                    <a href="reserva.php" class="continue-button">Continuar</a>
                </div>

            <?php endif; ?>
        
        <?php endif; ?>

    </div>
</body>
</html>