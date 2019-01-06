<?php
session_start();
include '../koneksi.php';
$tgl_mulai = $_POST['tgl_mulai'];
$tgl_selesai = $_POST['tgl_selesai'];
$nama_pic = $_POST['nama_pic'];
$nama_leader = $_POST['leader'];
$nama_perusahaan = $_POST['nama_perusahaan'];
$jenis_projek = $_POST['jenis_projek'];
$progres = $_POST['progres'];
$prosentase = $_POST['prosentase'];
$status = $_POST['status'];
$tindak_lanjut = $_POST['tindak_lanjut'];


$query = mysqli_query($konek, "INSERT INTO tbl_board VALUES('','$tgl_mulai','$tgl_selesai','$nama_pic','$nama_leader','$nama_perusahaan','$jenis_projek','$progres','$prosentase','$status','$tindak_lanjut')");


header('location:../admin/data-projek.php');
?>