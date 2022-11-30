<?php
include ('conexion.php');
?>
 <?php
    include "header.html"
    ?>
    <?php


$sql = "SELECT * FROM consejos";

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
        $idimagenes = $row['idconsejos'];
        $foto = $row['foto'];
        $titu =$row['titu'];
        $sub = $row['sub'];
        ?>
         <div class="Nan">
            <aside>
                <img src="img/<?php echo $foto;?>" alt="" width="500" height="500">
            </aside>
            <section class="Padre">
                <h2 class="h2__title" ><?php echo $titu;?></h2>
                <p><?php echo $sub;?></p>
            </section>
            <?php
        }
      }
      ?>
        </div>