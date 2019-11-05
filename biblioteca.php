<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Biblioteca</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom.css">
</head>
<body>
    <header>        <nav>
            <ul>
                <li><a href="logout.php">Cerrar Sesión</a></li>
                <li><a href="">Perfíl</a></li>
                <li><a href="menu.html">Inicio</a></li>
                <li><a href="biblioteca.php">Biblioteca</a></li>
                <li><a href="ayuda.html">Ayuda</a></li>
            </ul>
            <nav class="navbar navbar-light bg-light">
                            <a class="navbar-brand"></a>
                            <form class="form-inline">
                              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                              <input class="btn btn-primary" type="submit" value="Submit">
                            </form>
                          </nav>
        </nav></header>
        <br>
    <h1>Biblioteca</h1>
    <h3>Carpetas y documentos de los emprendedores</h3>
    <div id="container">
    <?php
    echo "<h4>Haga click para descargar la documentación</h4><br>";
    $ruta= 'upload/';
    $dir=opendir($ruta);
  
	while($archivo=readdir($dir)){
	    if($archivo !== '.' && $archivo !== '..'){
            echo "$archivo : <i><a href=\"".$ruta . $archivo."\">".$archivo."</a></i><br>";
            }
        }
?>
</div>

</body>
</html>

