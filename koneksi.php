<?php
$kon=mysqli_connect("localhost","root","","test1",3306);
if(mysqli_connect_errno()){
	echo "Failed to Connect to Mysql : ".mysqli_connect_error();
}
?>