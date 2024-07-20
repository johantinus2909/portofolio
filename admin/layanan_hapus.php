<?php 
include '../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $qry = mysqli_query($konek, "DELETE FROM tbl_jabatan WHERE kode='$id'");
    
    if ($qry) {
        header('Location: layanan_add.php');
    } else {
        echo "Error: " . mysqli_error($konek);
    }
}
?>
