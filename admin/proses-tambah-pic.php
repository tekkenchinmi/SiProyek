<?php
session_start();
include '../koneksi.php';
$nama = $_POST['nama_pic'];
$jk = $_POST['jk'];
$jabatan = $_POST['jabatan'];
$alamat = $_POST['alamat'];
$id = $_SESSION['id'];

$query = mysqli_query($konek, "INSERT INTO tbl_pic VALUES('', '$nama', '$jk','$jabatan','$alamat')");

header('location:../admin/data-pic.php');
?>