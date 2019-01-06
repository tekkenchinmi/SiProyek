<?php
include '../koneksi.php';
$id = $_POST['id'];
$progres = $_POST['progres'];
$prosentase = $_POST['prosentase'];
$status = $_POST['status'];
$tindak_lanjut = $_POST['tindak_lanjut'];

$sql= "UPDATE tbl_board SET progres='$progres',prosentase='$prosentase',status='$status',tindak_lanjut='$tindak_lanjut' WHERE id_board = '$id'";
$query = mysqli_query($konek, $sql);
header('location:user-data-projek.php');
?>