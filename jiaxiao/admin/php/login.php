<?php  
session_start();
require("../configs/conn.php");  
$code = $_POST ["code"];
if (strtoupper ( $code ) == strtoupper ( $_SESSION ["code"] )) {
	$name = $_POST ["name"];
	$pwd = md5($_POST ["pwd"]);
	$sql="select * from admins where name_admin='$name' and pwd_admin='$pwd'";
	$result = mysql_query($sql,$conn);
	if (mysql_num_rows ( $result ) > 0) {
		$_SESSION ["admin"] = $name;
		echo "banner.html";
	} else {
		echo "error";
	}
	
} else {
	echo "code";
	}

?>