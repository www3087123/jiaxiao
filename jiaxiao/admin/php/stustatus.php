<?php
require("../configs/conn.php");  
$id=$_GET["id"];
$sql="update teaandstu set status_ts=1 where id_ts=".$id;
$m=mysql_query($sql,$conn);
mysql_close($conn);
if($m){
	echo "ok";
}else{
	echo "no";
}
?>