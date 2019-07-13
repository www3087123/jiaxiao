<?php
require("../configs/conn.php");  
require("../configs/loadpic.php");
$oldp=$_GET["path"];
$id=$_GET["id"];
$sql="delete from schoolpics where id_sp=".$id;
mysql_query($sql,$conn);
unlink("../../".$oldp);
mysql_close($conn);
header("location:../schoolpic.html");
?>