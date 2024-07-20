<?php 
include '../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Pertama, ambil data untuk mendapatkan path file
    $select_query = mysqli_query($konek, "SELECT data_file FROM tbl_file WHERE kode='$id'");
    
    if ($select_query) {
        $data = mysqli_fetch_array($select_query);

        if ($data) {
            $lokasi = $data['data_file'];
            $hapus_gambar = "project/$lokasi";

            // Sekarang, hapus data dari tabel
            $delete_query = mysqli_query($konek, "DELETE FROM tbl_file WHERE kode='$id'");

            if ($delete_query) {
                // Periksa apakah file ada sebelum menghapusnya
                if (file_exists($hapus_gambar)) {
                    unlink($hapus_gambar);
                }
                header('Location: project_tampil.php');
            } else {
                // Tangani kesalahan jika query delete gagal
                echo "Kesalahan saat menghapus data: " . mysqli_error($konek);
            }
        } else {
            // Tangani kasus ketika data tidak ditemukan
            echo "Tidak ada data yang ditemukan dengan ID yang diberikan.";
        }
    } else {
        // Tangani kesalahan jika query select gagal
        echo "Kesalahan saat mengambil data: " . mysqli_error($konek);
    }
} else {
    echo "ID tidak diset.";
}
?>
