<?php
include ('conexion.php');
?>
<?php
    include "header.html"
?>

<div class="mago">
<?php

//Display all the cateories that are active
//Sql Query
$sql = "SELECT * FROM  imagenes";

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
          <a href="producto.php?id=<?=$idimagenes?>"><img src="img/<?php echo $foto;?>" width="200" height="200"></a>
            <div>
              <a href=""><p>NOMBRE:<?php echo $nombre;?></p></a>
              <a href=""><p>Precio Mexicano:<?php echo $mexica;?></p></a>
              <a href=""><p>Precio USD:<?php echo $usd;?></p></a>
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