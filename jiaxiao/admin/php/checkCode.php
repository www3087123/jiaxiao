<?php
session_start ();
$code = $_POST ["code"];
if (strtoupper($code) == strtoupper($_SESSION ["code"])) {
	echo "ok";
} else {
	echo "error";
}
?>