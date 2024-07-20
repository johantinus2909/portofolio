<?php 
include '../koneksi.php';
if (isset($_GET['id'])){
    $kode = mysqli_real_escape_string($konek, $_GET['id']); // Menghindari SQL Injection

    $qry = mysqli_query($konek, "SELECT * FROM tbl_blog WHERE kode='$kode'");
    $data = mysqli_fetch_array($qry);

    if ($data) {
        $lokasi = $data['gambar'];
        if (!empty($lokasi)) {
            $hapus_gambar = "../img/blog/$lokasi";
            
            if (file_exists($hapus_gambar)) {
                if (unlink($hapus_gambar)) { // Menghapus gambar dari direktori
                    mysqli_query($konek, "DELETE FROM tbl_blog WHERE kode='$kode'");
                    header('location: blog_tampil.php');
                } else {
                    echo "Gagal menghapus gambar.";
                }
            } else {
                echo "File gambar tidak ditemukan.";
            }
        } else {
            echo "Tidak ada gambar yang terkait.";
        }
    } else {
        echo "Data tidak ditemukan.";
    }
}
?>
