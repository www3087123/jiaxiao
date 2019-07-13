<?php 
function pics($pic,$s){
//$pic=$_FILES["pic"];
$filename=$pic[name];	
$filesize=$pic[size];
$filename_kz=substr($filename,-3,3);
$kz=array("jpg","png","gif","GPG","GIF","PNG");
$path="updatepic/".$s.time().".".$filename_kz;
$mark=0;

for($i=0;$i<count($kz);$i++){
  if($kz[$i]==$filename_kz){
	$mark=1;  
  }	
}
if($filesize<2000000 and $mark==1){
  move_uploaded_file($pic[tmp_name],"../../".$path);
  return $path;
}else{
  echo "<script type='text/javascript'>alert('格式不正确');history.go(-1);</script>"	;
}
}
?>