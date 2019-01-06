<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
include '../koneksi.php';
$id_board = $_GET['id'];
$query = mysqli_query($konek, "DELETE FROM tbl_board where id_board = '$id_board'");
header('location:data-projek.php');
?>