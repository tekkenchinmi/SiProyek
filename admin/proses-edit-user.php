<?php
session_start();
if ($_SESSION['role'] == null) {
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

$query_username_awal = mysqli_query($konek, "SELECT username FROM tbl_user where id_user = '$id'");
$username_awal       = mysqli_fetch_array($query_username_awal);

$query_check_username = mysqli_query($konek, "SELECT COUNT(*) as hitung_username, username FROM tbl_user where username = '$username'");
$fetch_check_username = mysqli_fetch_array($query_check_username);

if($fetch_check_username['hitung_username'] > 0){
	if ($fetch_check_username[1] != $username_awal[0]) {
		$_SESSION['error'] = 'Username sudah terpakai, coba untuk memasukkan username yang lain';
		header('location:edit-user.php?id='.$id);
		die();
	}
}

if ($k_password != $password) {
	$_SESSION['error'] = 'password dan konfirmasi password tidak sama';
	header('location:edit-user.php?id='.$id);
	die();
}

if (empty($_FILES['foto']['name'])) {
	if (empty($password)) {
		$query = mysqli_query($konek, "UPDATE tbl_user set 
				username = '$username', 
				nama     = '$nama' where id_user = '$id'");
	}else{
	$password  = md5($_POST['password']);
	$query     = mysqli_query($konek, "UPDATE tbl_user set 
				username = '$username', 
				password = '$password', 
				nama 	 = '$nama' where id_user = '$id'");
	}

}elseif(!empty($_FILES['foto']['name'])){

	$imageFileType = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
	$nama_foto     = "user".rand(00000, 99999).'.'.$imageFileType;
	$target_file   = $target_dir . basename($nama_foto);
	
	if (empty($password)) {
		$query = mysqli_query($konek, "UPDATE tbl_user set 
					foto     = '$nama_foto', 
					username = '$username', 
					nama     = '$nama' where id_user = '$id'");
	}else{
		$password = md5($_POST['password']);
		$query    = mysqli_query($konek, "UPDATE tbl_user set 
					foto     = '$nama_foto', 
					username = '$username', 
					password = '$password', 
					nama     = '$nama' where id_user = '$id'");
	}
	if (file_exists($path_foto)) {
		unlink($path_foto);
	}
	move_uploaded_file($_FILES['foto']['tmp_name'], $target_file);
}
header('location:data-user.php');
?>