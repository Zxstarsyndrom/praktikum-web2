<?php
include "../connection.php";

// Ambil ID dari parameter URL
$id = $_GET['id'];

// Lakukan validasi ID
if (!empty($id) && is_numeric($id)) {
    // Query untuk menghapus data matakuliah
    $result = mysqli_query($con, "DELETE FROM matakuliah WHERE id=$id");

    if ($result) {
        // Redirect ke halaman matakuliah-show jika berhasil
        header("Location:../admin/?page=matakuliah-show");
    } else {
        // Tampilkan pesan error jika gagal
        die("Error: " . mysqli_error($con));
    }
} else {
    // Redirect jika ID tidak valid
    header("Location:../admin/?page=matakuliah-show");
    exit();
}

// Alternatif jika header redirect tidak bekerja
// echo "<meta http-equiv='refresh' content='0; url=../admin/?page=matakuliah-show'>";
