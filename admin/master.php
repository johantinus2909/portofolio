<?php 
include 'header.php'; 
// session_start(); // Memulai sesi

// Periksa apakah sesi 'kode' sudah diinisialisasi
if (!isset($_SESSION['kode'])) {
    // Jika tidak, redirect ke halaman login atau tampilkan pesan kesalahan
    header("Location: login.php"); // Redirect ke halaman login
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Master</title>
    <link rel="stylesheet" href="path_to_css_files"> <!-- Ganti dengan path ke file CSS Anda -->
</head>
<body>
    <!-- Counts Section -->
    <br>
    <section class="statistics">
        <div class="container-fluid">
            <div class="row d-flex">
                <div class="col-lg-12">
                    <div class="card data-usage">
                        <h2 class="display h4">Id User : <?php echo htmlspecialchars($_SESSION['kode']); ?> johan </h2>
                        <div class="row d-flex align-items-center">
                            <div class="col-sm-12">
                                <img width="100%" height="370px" src="../img/slide_johan.png" alt="Slide Johan">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Updates Section -->
    <br>
    <?php include 'footer.php'; ?>
</body>
</html>
