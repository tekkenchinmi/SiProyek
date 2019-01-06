<?php
session_start();
include '../koneksi.php';
$nama_pemilik = $_POST['nama_pemilik'];
$alamat_lahan = $_POST['alamat_lahan'];
$luas_lahan = $_POST['luas_lahan'];
$id_user = $_SESSION['id'];

$query = mysqli_query($konek, "INSERT INTO tbl_lahan VALUES('','$id_user', '$nama_pemilik', '$alamat_lahan', '$luas_lahan')");
header('location:../data-lahan.php');
?>