<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta charset="viewport">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script type="text/javascript"></script>
</head>
<body>
    <header></header>
    <main>
        <table class="table table-hover">
            <thead >
                <tr >
                    <th>Nombres</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    require_once("../controllers/controlador.php");
                        foreach ($lista as $Datos){
                            echo "<tr>
                                    <td>$Datos->Nombre</td>
                                    <td>S/. $Datos->Precio</td>
                                 </tr>";
                        }
                ?>
            </tbody>
            <tfoot></tfoot>
        </table>

        <a href="../index.php">Volver a Index">

    </main>
    <footer>
        SENATI - <?php echo date("Y");?>;
    </footer>
</body>
</html>