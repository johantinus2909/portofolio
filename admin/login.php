<?php 
include '../koneksi.php';

if(isset($_POST["btnlogin"])){
    $txtusername = mysqli_real_escape_string($konek, $_POST['txtusername']); // Menghindari SQL Injection
    $txtpassword = mysqli_real_escape_string($konek, $_POST['txtpassword']); // Menghindari SQL Injection
    $txtpassword_md5 = md5($txtpassword); // Menggunakan md5 untuk hashing password

    $cek = mysqli_query($konek, "SELECT * FROM tbl_user WHERE user_name='$txtusername' AND password='$txtpassword_md5'");
    $count = mysqli_num_rows($cek);

    if($count > 0){
        $hasil = mysqli_fetch_array($cek);
        $nama1 = $hasil['kode'];
        session_start();
        $_SESSION['kode'] = $nama1;
        header("location: master.php"); 
    } else {
        // Tambahkan pesan kesalahan jika login gagal
        echo "Username atau password salah.";
    }
}
?>
