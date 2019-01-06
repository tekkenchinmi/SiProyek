<?php
session_start();
include '../koneksi.php';
$nama_perusahaan = $_POST['nama_perusahaan'];
//$foto = $_FILES['foto']['name'];
//$asal = $_FILES['foto']['tmp_name'];
//$tujuan = "../images/".$foto;
$alamat = $_POST['alamat'];


$query = mysqli_query($konek, "INSERT INTO tbl_klien VALUES('', '$nama_perusahaan', '$alamat')");


//move_uploaded_file($asal, $tujuan);

header('location:../admin/data-klien.php');
?>