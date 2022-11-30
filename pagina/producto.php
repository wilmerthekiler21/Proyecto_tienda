<?php
 include "header.html";
 include "conexion.php";
 $id=$_GET['id'];
?>
<?php

//Display all the cateories that are active
//Sql Query
$sql = "SELECT * FROM imagenes WHERE idimagenes = $id";


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
        $descricion = $row['descricion'];
        $fecha=$row['fecha'];
        $ofetar = $row['ofetar'];
        ?>
          <?php
    {

?>
<div> 
    <div class="mundo">
        <div class="mad">
            <img src="img/<?php echo $foto?>" alt="" while="300px" height="300px">
            <a href=""><button>Comprar</button></a>
        </div>
        <div class="info">
            <h2><?php echo $nombre;?></h2>
            <p>PRECIO:$<br>
            <?php echo $mexica;?></BR><?php echo $ofetar;?>% Mexicano</p>
            <p>PRECIO:$ <br>
            <?php echo $usd;?><br><?php echo $ofetar;?>% Estados Unidos</p>
            <p>Informacion: <br>
            <?php echo $descricion;?><p>
            <p>Fecha de lanzamiento: <br>
            <?php echo $fecha;?></p>
    </div>
    <?php
            }
            ?>
</div>
<?php
}
      }
      ?>