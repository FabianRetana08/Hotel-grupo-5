<?php
include('sql/tipoReservaCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['insertar'])){
        $idTipoReserva = trim($_POST['idTipoReserva']);
        $nombre = trim($_POST['nombre']);
        $descripcion = trim($_POST['descripcion']);
        $idEstado = trim($_POST['idEstado']);

        
            $insertEnviado = true;

            $resultado = insertarTipoReserva($idTipoReserva, $nombre, $descripcion, $idEstado);
            if($resultado){
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
    <title>Insertar un Tipo de Reserva</title>
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
                        <input type="text" name="idTipoReserva" placeholder="ID DEL TIPO DE RESERVA" required>
                    </div>
                    <div>
                        <p class="form-input-title">Nombre:</p>
                        <input type="text" name="nombre" placeholder="NOMBRE DEL TIPO DE RESERVA" required>
                    </div>                    

                    <div>
                        <p class="form-input-title">Descripcion:</p>
                        <input type="text" name="descripcion" placeholder="DESCRIPCION DEL TIPO DE RESERVA" required>
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
                    <h3 class="db-message">El tipo de Reserva ha sido registrado</h3>
                    <a href="reserva.php" class="continue-button">Continuar</a>
                </div>

            <?php else: ?>

                <div class="db-message-container">
                    <h3 class="db-message">Ocurrio un error durante el regisro</h3>
                    <a href="reserva.php" class="continue-button">Continuar</a>
                </div>

            <?php endif; ?>
        
        <?php endif; ?>

    </div>
</body>
</html>