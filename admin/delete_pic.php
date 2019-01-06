<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
include '../koneksi.php';
$id_pic = $_GET['id'];
$query = mysqli_query($konek, "DELETE FROM tbl_pic where id_pic = '$id_pic'");
header('location:data-pic.php');
?>