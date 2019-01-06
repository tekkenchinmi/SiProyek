<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
include '../koneksi.php';
$id_user = $_GET['id'];
$query = mysqli_query($konek, "DELETE FROM tbl_user where id_user = '$id_user'");
header('location:data-user.php');
?>