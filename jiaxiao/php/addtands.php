<?php
header("Access-Control-Allow-Origin: ityangs.net"); 

//如果需要设置允许所有域名发起的跨域请求，可以使用通配符 *
header("Access-Control-Allow-Origin: *"); 
require("../admin/configs/conn.php");  
$name = $_POST ["names"];
$tel = $_POST ["tels"];
$type=$_POST["types"];
$times=date("Y-m-d H:i:s");
$s=mysql_query ("insert into teaandstu values(null,'$name','$tel',0,$type,'$times')",$conn);
mysql_close($conn);
if($s){
	echo '1';
}else{
    echo '0';
}
?>