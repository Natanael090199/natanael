<?php
/* include 'conn.php'; */
if (isset($_POST['submit'])) {   
    if(is_uploaded_file($_FILES['fichero']['tmp_name'])) { 
     
     
      // creamos las variables para subir a la db
        $ruta = 'upload/'; 
        $nombrefinal = trim ($_FILES['fichero']['name']); //Eliminamos los espacios en blanco
        ///$nombrefinal = preg_replace(" ", "", $nombrefinal);//Sustituye una expresión regular
        $upload = $ruta.$nombrefinal;  



        if(move_uploaded_file($_FILES['fichero']['tmp_name'], $upload)) { //movemos el archivo a su ubicacion 
                    
                    echo "<b>Upload exitoso!. Datos:</b><br>";  
                  /*   echo "Nombre: <i><a href=\"".$ruta . $nombrefinal."\">".$_FILES['fichero']['name']."</a></i><br>";  
                    echo "Tipo MIME: <i>".$_FILES['fichero']['type']."</i><br>";  
                    echo "Peso: <i>".$_FILES['fichero']['size']." bytes</i><br>";  
                    echo "<br><hr><br>";  
                    $dir=opendir($ruta);
	                  while($archivo=readdir($dir)){
	                        if($archivo !== '.' && $archivo !== '..'){
                            echo $archivo.'<br>';
                            echo "Nombre: <i><a href=\"".$ruta . $archivo."\">".$archivo."</a></i><br>";
                            echo $ruta;
                          }
                    } */

                   $nombre  = $_POST["file_name"]; 
                   $description  = $_POST["description"]; 

/*$query= "INSERT INTO `archivos` (`id_file`, `file_name`, `description`, `ruta`, `tipo`, `size`) VALUES ('2', 'ffjjg', 'jjjjjjh', 'http://localhost:8080/phpmyadmin/tbl_change.php?db=proyecto_db&table=archivos', '.exe', '584')";
exit; 

       mysqli_query($connect,$query) or die(mysqli_error($connect)); 
       echo "El archivo '".$nombre."' se ha subido con éxito <br>";*/      
        }  
    }
}  
 
?> 

<body> 
<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data">  
    Seleccione archivo: <input name="fichero" type="file" size="150" maxlength="150">  
    <br><br> Nombre: <input name="file_name" type="text" size="70" maxlength="70"> 
    <br><br> Descripcion: <input name="description" type="text" size="100" maxlength="250"> 
    <br><br> 
  <input name="submit" type="submit" value="SUBIR ARCHIVO">   
</form>  
</body>