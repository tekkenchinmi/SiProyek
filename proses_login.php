<?php
session_start();
include('koneksi.php');
$username = $_POST['username'];
$password = md5($_POST['password']);
$role = $_POST['role'];

if ($role == 0) {
	$query = mysqli_query($konek, "SELECT * FROM tbl_user where username = '$username' and password = '$password'");
}elseif($role == 1){
	$query = mysqli_query($konek, "SELECT * FROM tbl_admin where username = '$username' and password = '$password'");
}else{
	header('location:index.php');
}
$hasil = mysqli_fetch_array($query);
if ($hasil != null) {
	session_start();
	$_SESSION['username'] = $username;
	$_SESSION['nama'] = $hasil['nama'];
	$_SESSION['id'] = $hasil[0];
	$_SESSION['foto'] = $hasil['foto'];
	if ($role == 0) {
		$_SESSION['role'] = '0';
	}else{
		$_SESSION['role'] = '1';
	}
	header('location:dashboard.php');
}else{
	$_SESSION['error'] = 'Username atau password salah';
	header('location:login.php');
}

?>