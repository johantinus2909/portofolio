<?php
include '../koneksi.php';
session_start();
if (empty($_SESSION['kode'])) {
    // Arahkan pengguna ke halaman login jika mereka belum login
    header("Location: index.php");
    exit(); // Pastikan eksekusi berhenti setelah pengalihan
} else {
    // Tampilkan konten jika pengguna sudah login
    echo "LOGIN BERHASIL";
}
?>
