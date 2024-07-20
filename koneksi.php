<?php
$server= 'localhost'; 
$user= 'root';
$password= ''; 
$database= 'profil_pribadi';
$konek= mysqli_connect($server,$user,$password,$database);
if (!$konek){
		die( "GAGAL KONEK KE DATABASE : " . mysqli_connect_error());
}
// 		{							
// 		echo "koneksi berhasil johan";
// }
?>
