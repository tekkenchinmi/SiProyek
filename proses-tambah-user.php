<?php
session_start();
include 'function.php';
include 'koneksi.php';
$target_dir = "images/";
$nama = $_POST['nama'];
$username = $_POST['username'];
$imageFileType = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
$nama_foto = $_FILES['foto']['name'] = "user".rand(00000, 99999).'.'.$imageFileType;
$target_file = $target_dir . basename($nama_foto);
$password = $_POST['password'];
$k_password = $_POST['konfirmasi_password'];

$query_check_username = mysqli_query($konek, "SELECT COUNT(*) as username FROM tbl_user where username = '$username'");
$fetch_check_username = mysqli_fetch_assoc($query_check_username);

if ($fetch_check_username['username'] > 0) {
	$_SESSION['error'] = 'Maaf username sudah terpakai, silakan menggunakan username yang lain';
	header('location:buat-akun.php');
	die();
}

if ($password != $k_password) {
	$_SESSION['error'] = 'password dan konfirmasi password tidak sama!';
	header('location:buat-akun.php');
	die();
}

	$password = md5($_POST['password']);
	$query = mysqli_query($konek, "INSERT INTO tbl_user (foto, username, password, nama)VALUES('$nama_foto', '$username', '$password', '$nama')");
	move_uploaded_file($_FILES['foto']['tmp_name'], $target_file);
	$_SESSION['message'] = 'Akun Berhasil Dibuat';
	header('location:index.php');
?>