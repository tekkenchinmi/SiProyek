<?php
include '../koneksi.php';
$id = $_POST['id_pic'];
$nama = $_POST['nama_pic'];
$jk = $_POST['jk'];
$jabatan = $_POST['jabatan'];
$alamat = $_POST['alamat'];

$query = mysqli_query($konek, "UPDATE tbl_pic set nama_pic = '$nama', jk = '$jk', jabatan = '$jabatan', alamat = '$alamat' where id_pic = '$id'");
header('location:data-pic.php');

?>