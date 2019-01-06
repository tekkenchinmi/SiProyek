<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
include '../koneksi.php';
$id_klien = $_GET['id'];
$query = mysqli_query($konek, "DELETE FROM tbl_klien where id_klien = '$id_klien'");
header('location:data-klien.php');
?>