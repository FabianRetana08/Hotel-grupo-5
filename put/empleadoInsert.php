<?php


include('sql/empleadoCRUD.php');
include('sql/areaTrabajoCRUD.php');
include('sql/puestoTrabajoCRUD.php');
include('sql/estadoCRUD.php');

$insertEnviado = false;
$insertRealizado = false;
$datosInvalidos = false;

if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['insertar'])){
        $idEmpleado = trim($_POST['idEmpleado']);
        $nombreEmpleado = trim($_POST['nombreEmpleado']);
        $primerApellido = trim($_POST['primerApellido']);
        $segundoApellido = trim($_POST['segundoApellido']);
        $email = trim($_POST['email']);
        $numTeleono = trim($_POST['numTelefono']);
        $idPuestoTrabajo = trim($_POST['idPuestoTrabajo']);
        $idAreaTrabajo = trim($_POST['idAreaTrabajo']);
        $idSucursal = trim($_POST['idSucursal']);
        $idEstado = trim($_POST['idEstado']);

        if(is_numeric($numTeleono) && is_numeric($idSucursal)){
            $insertEnviado = true;

            $resultado = insertarEmpleado($idEmpleado, $nombreEmpleado, $primerApellido, $segundoApellido, $email, $numTeleono, $idPuestoTrabajo, $idAreaTrabajo, $idSucursal, $idEstado);
            if ($resultado){
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
    <title>Insertar un Empleado</title>
</head>
<body>
    <?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$insertEnviado): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>
                    <h3 class="message">Algunos de los datos son invalidos</h3>
                <?php endif; ?>

                <p class="form-title">Inserta los datos</p>

                <div class="form-inputs-container">

                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idEmpleado" placeholder="ID DEL EMPLEADO" required>
                    </div>
                    <div>
                        <p class="form-input-title">Nombre:</p>
                        <input type="text" name="nombreEmpleado" placeholder="NOMBRE DEL EMPLEADO" required>
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
                        <p class="form-input-title">Puesto de Trabajo:</p>
                        <select name="idPuestoTrabajo" required>
                            <option value="">Seleccione un Puesto de Trabajo</option>
                            <?php
                                $puestosTrabajo = obtenerPuestosTrabajo();

                                while($row = oci_fetch_assoc($puestosTrabajo)){
                                    
                                        echo "<option value='" . $row['ID_PUESTO_TRABAJO'] . "'>" . $row['NOMBRE'] . "</option>";
                                    
                                }
                                    
                            ?>
                        </select>
                    </div>

                    <div>
                        <p class="form-input-title">Area de Trabajo:</p>
                        <select name="idAreaTrabajo" required>
                            <option value="">Seleccione un Area de Trabajo</option>
                            <?php
                                $areasTrabajo = obtenerAreasTrabajo();

                                while($row = oci_fetch_assoc($areasTrabajo)){
                                    
                                        echo "<option value='" . $row['ID_AREA_TRABAJO'] . "'>" . $row['NOMBRE'] . "</option>";
                                    
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
                <a href="empleado.php" class="cancel-button">Cancelar</a>

            </form>

        <?php else: ?>

            <?php if($insertRealizado): ?>

                <div class="db-message-container">
                    <h3 class="db-message">El Distrito ha sido registrado correctamente</h3>
                    <a href="empleado.php" class="continue-button">Continuar</a>
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