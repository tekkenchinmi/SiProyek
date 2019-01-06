<?php
session_start();
include '../koneksi.php';
$tgl_mulai = $_POST['tgl_mulai'];
$nama = $_POST['nama_pic'];
$nama_perusahaan = $_POST['nama_perusahaan'];
$prosentase = $_POST['prosentase'];
$status = $_POST['status'];
$tindak_lanjut = $_POST['tindak_lanjut'];
$tgl_selesai = $_POST['tgl_selesai'];


$query = mysqli_query($konek, "INSERT INTO tbl_board2 VALUES('$tgl_mulai', '$nama', '$nama_perusahaan', '$prosentase', '$status', '$tindak_lanjut', '$tgl_selesai')");

header('location:../admin/data-projek2.php');
?>