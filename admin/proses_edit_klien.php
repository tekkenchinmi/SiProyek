<?php
include '../koneksi.php';
$id = $_POST['id_klien'];
$nama_perusahaan = $_POST['nama_perusahaan'];
$alamat = $_POST['alamat'];

$query = mysqli_query($konek, "UPDATE tbl_klien set nama_perusahaan = '$nama_perusahaan', alamat = '$alamat' where id_klien = '$id'");
header('location:data-klien.php');

?>