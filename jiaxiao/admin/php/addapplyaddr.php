<?php
require("../configs/conn.php");  
$name=$_POST["names"];
$tel=$_POST["tels"];
$addr=$_POST["addr"];
$path=$_POST["path"];
$sql="insert into applyaddr values(null,'$name','$addr','$tel','$path')";
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../applyaddr.html");
?>