<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
include '../koneksi.php';
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$k_password = $_POST['konfirmasi_password'];
$cek_username=mysqli_num_rows(mysqli_query($konek, "SELECT * FROM tbl_user WHERE username='$username'"));

if ($password != $k_password) {
	$_SESSION['error'] = 'password dan konfirmasi password tidak sama!';
	header('location:tambah-user.php');
	die();
}
	$password = md5($_POST['password']);

if ($cek_username > 0){
 $_SESSION['error'] = 'Username sudah ada, buat yang lain';
	header('location:tambah-user.php');
	die();
}
					
	else {
	
	$query = mysqli_query($konek, "INSERT INTO tbl_user (username, password, nama)VALUES('$username', '$password', '$nama')");

	header('location:data-user.php');

}
?>