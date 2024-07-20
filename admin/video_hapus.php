<?php 
include '../koneksi.php';

if (isset($_GET['id'])) {
    // Menggunakan prepared statement untuk keamanan
    $stmt = $konek->prepare("DELETE FROM tbl_bulan WHERE kode = ?");
    $stmt->bind_param("s", $_GET['id']);
    $stmt->execute();
    
    // Pengalihan ke halaman lain setelah query selesai
    header('Location: video_add.php');
    exit(); // Pastikan eksekusi berhenti setelah pengalihan
}
?>
