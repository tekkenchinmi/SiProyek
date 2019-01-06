<?php
include '../koneksi.php';
$id = $_POST['id'];
$tgl_mulai = $_POST['tgl_mulai'];
$tgl_selesai = $_POST['tgl_selesai'];
$nama_pic = $_POST['nama_pic'];
$leader = $_POST['leader'];
$nama_perusahaan = $_POST['nama_perusahaan'];
$jenis_projek = $_POST['jenis_projek'];
$progres = $_POST['progres'];
$prosentase = $_POST['prosentase'];
$status = $_POST['status'];
$tindak_lanjut = $_POST['tindak_lanjut'];

$sql= "UPDATE tbl_board SET tgl_mulai='$tgl_mulai', tgl_selesai='$tgl_selesai', nama_pic='$nama_pic', leader='$leader', nama_perusahaan='$nama_perusahaan' ,jenis_projek='$jenis_projek', progres='$progres',prosentase='$prosentase',status='$status',tindak_lanjut='$tindak_lanjut' WHERE id_board = '$id'";
$query = mysqli_query($konek, $sql);
header('location:data-projek.php');
//echo $sql;
?>