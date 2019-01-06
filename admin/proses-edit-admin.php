<?php
session_start();
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:index.php');
}
include '../function.php';
include '../koneksi.php';
$target_dir = "../images/";
$id         = $_POST['id'];
$nama       = $_POST['nama'];
$username   = $_POST['username'];
$password   = $_POST['password'];
$k_password = $_POST['konfirmasi_password'];
$password   = $_POST['password'];

$query_check_username = mysqli_query($konek, "SELECT COUNT(*) as username FROM tbl_admin where username = '$username'");
$fetch_check_username = mysqli_fetch_assoc($query_check_username);

if($fetch_check_username['username'] > 0){
	if ($_SESSION['username'] != $username) {
		$_SESSION['error'] = 'Username sudah terpakai, coba untuk memasukkan username yang lain';
		header('location:edit-admin.php?id='.$id);
		die();
	}
}

if ($k_password != $password) {
	$_SESSION['error'] = 'password dan konfirmasi password tidak sama';
	header('location:edit-admin.php?id='.$id);
	die();
}

if (empty($_FILES['foto']['name'])) {
	if (empty($password)) {
		$query = mysqli_query($konek, "UPDATE tbl_admin set 
				username = '$username', 
				nama     = '$nama' where id_admin = '$id'");
	}else{
	$password  = md5($_POST['password']);
	$query     = mysqli_query($konek, "UPDATE tbl_admin set 
				username = '$username', 
				password = '$password', 
				nama 	 = '$nama' where id_admin = '$id'");
	}

}elseif(!empty($_FILES['foto']['name'])){

	$imageFileType = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
	$nama_foto     = "admin".rand(00000, 99999).'.'.$imageFileType;
	$target_file   = $target_dir . basename($nama_foto);
	
	if (empty($password)) {
		$query = mysqli_query($konek, "UPDATE tbl_admin set 
					foto     = '$nama_foto', 
					username = '$username', 
					nama     = '$nama' where id_admin = '$id'");
	}else{
		$password = md5($_POST['password']);
		$query    = mysqli_query($konek, "UPDATE tbl_admin set 
					foto     = '$nama_foto', 
					username = '$username', 
					password = '$password', 
					nama     = '$nama' where id_admin = '$id'");
	}
	if (file_exists($path_foto)) {
		unlink($path_foto);
	}
	move_uploaded_file($_FILES['foto']['tmp_name'], $target_file);
	$_SESSION['foto'] = $nama_foto;
}
$_SESSION['nama']     = $nama;
$_SESSION['username'] = $username;
header('location:../dashboard.php');
?>