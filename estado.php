<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="plantilla.css"> 

    <style>
        .header {
            color: blue;
        }
    </style>

</head>
<body>    
    <?php
    include('header.php');
    ?>

    <div class="principal-container">    

    <?php
    require('info.php');
    ?>

    </div>
    
</body>
</html>