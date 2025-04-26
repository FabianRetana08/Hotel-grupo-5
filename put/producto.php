<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/plantilla.css"> 
    <link rel="stylesheet" href="css/menu.css"> 
    <title>Document</title>
</head>
<body>
    <?php include('header/header.php'); ?>

    <div class="principal-container">
        <div class="menu">
            <a href="listaProductos.php" class="link">Ver lista de Productos</a>
            <a href="productoInsert.php" class="link">Insertar un Producto</a>
            <a href="productoActualizar.php" class="link">Actualizar un Producto</a>
            <a href="listaCategoriasProducto.php" class="link">Ver lista de Categorias de Productos</a>
            <a href="categoriaProductoInsert.php" class="link">Insertar Categoria de Producto</a>
            <a href="categoriaProductoActualizar.php" class="link">Actualizar Categoria de Producto</a>
        </div>
    </div>
</body>
</html>