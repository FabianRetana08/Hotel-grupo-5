<?php
include('sql/estadoCRUD.php');
include('sql/productoCRUD.php');
include('sql/categoriaProductoCRUD.php');

$busquedaRealizada = false;
$actualizacionRealizada = false;
$datosInvalidos = false;

if($_SERVER["REQUEST_METHOD"] == "POST"){
    if(isset($_POST['buscar'])){
        $idProducto = trim($_POST['idProducto']);

        if(is_numeric($idProducto)){
            $busquedaRealizada = true;
            $producto = obtenerProducto($idProducto);
        }else{
            $datosInvalidos = true;
        }
    }else if(isset($_POST['actualizar'])){
        $idProducto = trim($_POST['idProducto']);
        $nombre = trim($_POST['nombre']);
        $descripcion = trim($_POST['descripcion']);
        $idCategoria = trim($_POST['idCategoria']);
        $idSucursal = trim($_POST['idSucursal']);
        $idEstado = trim($_POST['idEstado']);

        $actualizado = actualizarProducto($idProducto, $nombre, $descripcion, $idCategoria, $idSucursal, $idEstado);
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
    <title>Actualizar un Producto</title>
</head>
<body>
<?php include('header/header.php'); ?>

    <div class="principal-container">

        <?php if(!$busquedaRealizada && !$actualizacionRealizada): ?>

            <form action="" method="POST">

                <?php if($datosInvalidos): ?>

                    <h3 class="message">El ID proporcionado contiene digitos invalidos</h3>

                <?php endif; ?>

                <h3 class="form-title">Buscar Producto</h3>

                <div class="form-inputs-container">
                    <div>
                        <p class="form-input-title">ID:</p>
                        <input type="text" name="idProducto" placeholder="ID DEL PRODUCTO" required>
                    </div>
                </div>

                <input type="submit" name="buscar" value="Buscar" class="submit-button">
                <a href="producto.php" class="cancel-button">Cancelar</a>

            </form>

        <?php elseif (!$actualizacionRealizada): ?>

            <?php if($producto): ?>

                <form action="" method="POST">

                    <p class="form-title">Inserta los Datos Actualizados</p>

                    <div class="form-inputs-container">

                        <input type="hidden" name="idProducto"
                            value="<?php
                                    echo $producto['ID_PRODUCTO'];
                                    ?>" required>

                    </div>

                    <div>
                        <p class="form-input-title" required>Nombre:</p>
                        <input type="text" name="nombre" placeholder="NOMBRE DEL PRODUCTO"
                            value="<?php
                                    echo $producto['NOMBRE'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title" required>Descripcion:</p>
                        <input type="text" name="descripcion" placeholder="DESCRIPCION"
                            value="<?php
                                    echo $producto['DESCRIPCION'];
                                    ?>" required>
                    </div>

                    <div>
                        <p class="form-input-title">Categoria:</p>
                        <select name="idCategoria" required>
                        <option value="">Seleccione una Categoria</option>
                            <?php
                                $categorias = obtenerCategoriasProducto();

                                while($row = oci_fetch_assoc($categorias)){
                                    $seleccionado = "";

                                    if($producto['ID_CATEGORIA'] == $row['ID_CATEGORIA']){
                                        $seleccionado = "selected";
                                    }

                                    
                                        echo "<option value='" . $row['ID_CATEGORIA'] . "' " . $seleccionado . " >" . $row['NOMBRE'] . "</option>";
                                    
                                }
                                
                            ?>
                        </select>
                    </div>

                    
                    <div>
                        <p class="form-input-title" required>ID Sucursal:</p>
                        <input type="text" name="idSucursal" placeholder="ID DE LA SUCURSAL"
                            value="<?php
                                    echo $producto['ID_SUCURSAL'];
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

                                    if($producto['ID_ESTADO'] == $row['ID_ESTADO']){
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
                    <a href="producto.php" class="cancel-button">Cancelar</a>

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
                <a href="producto.php" class="continue-button">Aceptar</a>
            </div>

        <?php elseif($actualizacionRealizada && !$actualizado): ?>

            <div class="db-message-container">
                <h3 class="db-message">Hubo un error al actualizar los datos</h3>
                <a href="producto.php" class="continue-button">Aceptar</a>
            </div>

        <?php endif; ?>

    </div>
</body>
</html>