<?php
include '../koneksi.php';

if (isset($_GET["id"])) {
    // Pertama, ambil informasi entri berdasarkan ID
    $qry = mysqli_query($konek, "SELECT * FROM tbl_folio WHERE kode='" . mysqli_real_escape_string($konek, $_GET["id"]) . "'");
    $data = mysqli_fetch_array($qry);

    if ($data) {
        // Simpan lokasi gambar
        $lokasi = $data['gambar'];
        $hapus_gambar = "../gambar/galeri/$lokasi";

        // Lakukan operasi DELETE untuk menghapus entri
        $delete_qry = mysqli_query($konek, "DELETE FROM tbl_folio WHERE kode='" . mysqli_real_escape_string($konek, $_GET["id"]) . "'");

        if ($delete_qry) {
            // Hapus gambar dari direktori jika file ada
            if (file_exists($hapus_gambar)) {
                unlink($hapus_gambar);
            }
            // Redirect setelah sukses menghapus
            header('location: folio_add.php');
        } else {
            echo "Gagal menghapus data dari database.";
        }
    } else {
        echo "Data tidak ditemukan.";
    }
}
?>
