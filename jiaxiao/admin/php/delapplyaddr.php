<?php
require("../configs/conn.php");  
$id=$_GET["id"];
$sql="delete from applyaddr where id_aa=".$id;
mysql_query($sql,$conn);
mysql_close($conn);
header("location:../applyaddr.html");
?>