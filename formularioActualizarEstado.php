<?php
    include('conection.php');

    if(isset($_POST['buscar'])){
        if(
            strlen($_POST['id']) >= 1 
            ){
                $id = trim($_POST['id']);

                $query = 'CALL FIDE_ESTADO_TB_OBTENER_SP(:cursor, :idEstado)';

                require('conection.php');

                $stid = oci_parse($conn, $query);

                oci_bind_by_name($stid, ":idEstado", $id);

                $cursor = oci_new_cursor($conn);

                //Y luego ese cursor se vincula con el parametro de salida del procedimiento
                oci_bind_by_name($stid, ":cursor", $cursor, -1, OCI_B_CURSOR);

                //Se ejecuta el procedimiento
                oci_execute($stid);

                // Ejecutar el cursor para llenarlo con los resultados
                oci_execute($cursor);  // Esto es necesario para que el cursor esté listo para ser leído

                $resultado = oci_fetch_assoc($cursor);

                if($resultado){
                    $estado = $resultado['ESTADO'];
                    $descripcionEstado = $resultado['DESCRIPCION_ESTADO'];
                }else{
                    $mensaje = "No se encontro ningun estado con este id";
                     // Redirigir a formulario.php con el mensaje
                    header("Location: buscarActualizarEstado.php?mensaje=" . urlencode($mensaje));
                    exit;                    
                }
        }else{
            $mensaje = "Digita un id";
            // Redirigir a formulario.php con el mensaje
            header("Location: buscarActualizarEstado.php?mensaje=" . urlencode($mensaje));
            exit;  
        }
    }

?>

<!-- Formulario para editar el estado -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="plantilla.css"> 
    <title>Actualizar Estado</title>
</head>
<body>
    <?php
        include('header.php');        
    ?>

    <div class="principal-container">

        <h3>Actualizar Estado</h3>

        <?php
        if (isset($_GET['mensaje'])) {
            echo "<h3>" . htmlspecialchars($_GET['mensaje']) . "</h3>";
        }
        ?>

        <form action="actualizarEstado.php" method="POST">
            <input type="hidden" name="id" 
                value="<?php 
                            if(!empty($id)){
                            echo $id; 
                            }                
                        ?>">

            <label for="estado">Estado:</label>
            <input type="text" name="estado" id="estado" 
                value="<?php 
                            if(!empty($estado)){
                            echo htmlspecialchars($estado); 
                            }
                        ?>" required><br>

            <label for="descripcion">Descripción:</label>
            <input type="text" name="descripcion" id="descripcion" 
            value="<?php 
                        if(!empty($descripcionEstado)){
                        echo htmlspecialchars($descripcionEstado); 
                        }            
                    ?>" required><br>
            <div>
                <input type="submit" name="actualizar" value="Actualizar">            
                <button><a href="index.php">Cancelar</a></button>          
            </div>            
        </form>            
    </div>    
</body>
</html>