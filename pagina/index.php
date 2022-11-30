<?php
include ('conexion.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    include "header.html"
?>

<div class="mago">
<?php

//Display all the cateories that are active
//Sql Query
$sql = "SELECT * FROM imagenes";

//Execute the Query
$res = mysqli_query($conn, $sql);

//Count Rows
$count = mysqli_num_rows($res);

//CHeck whether categories available or not
if($count>0)
{
    //CAtegories Available
    while($row=mysqli_fetch_assoc($res))
    {
        //Get the Values
        $idimagenes = $row['idimagenes'];
        $foto = $row['foto'];
        $nombre =$row['nombre'];
        $mexica = $row['mexica'];
        $usd = $row['usd'];
        ?>
          <?php
    {

?>
        <div class="contenedor">
          <div class="con_img">
          <a href="producto.php?id=<?=$idimagenes?>"><img src="img/<?php echo $foto;?>"  width="200" height="200"></a>
            <div>
              <a href=""><p><?php echo $nombre;?></p></a>
              <a href=""><p><?php echo $mexica;?></p></a>
              <a href=""><p><?php echo $usd;?></p></a>
            </div>
            <?php
            }
            ?>
          </div>
        </div>
        <?php
        }
      }
      ?>
</div>
</body>
</html>

