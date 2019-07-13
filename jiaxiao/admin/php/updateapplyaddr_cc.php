<?php
require("../configs/conn.php");  
$id=$_POST["id"];
$name=$_POST["names"];
$tel=$_POST["tels"];
$addr=$_POST["addr"];
$path=$_POST["path"];
$sql="update applyaddr set name_aa='$name',addr_aa='$addr',tel_aa='$tel',path_aa='$path' where id_aa=$id";
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../updateapplyaddr.html");
?>