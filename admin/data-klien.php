<?php
include '../header.php';
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:/');
}
?>

<link rel="stylesheet" type="text/css" href="../dist/assets/dataTables/css/dataTables.bootstrap.min.css">

<?php include '../menu.php' ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Klien
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-users"></i>Klien</a></li>
        <li class="active">Data Klien</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><a href="tambah_klien.php" class="btn btn-flat btn-success">Tambah Klien</a></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="table-user" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Perusahaan</th>
                  <th>Alamat</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                <?php
                include('../koneksi.php');
                $no = 1;
                $query = mysqli_query($konek, "SELECT * FROM tbl_klien ORDER BY nama_perusahaan asc");
                foreach ($query as $data) {
                ?>
                <tr>
                  <td><?= $no ?></td>
                  <td><?= $data['nama_perusahaan'] ?></td>
                  <td><?= $data['alamat'] ?></td>

                  <td><a href="edit_klien.php?id=<?= $data['id_klien'] ?>" class="btn btn-flat btn-warning" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil" aria-hidden="true"></i></a>|<a href="delete_klien.php?id=<?= $data['id_klien'] ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini?')" class="btn btn-flat btn-danger" data-toggle="tooltip" data-placement="top" title="Hapus"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                  
                </tr>
                <?php $no++; } ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          </div>
        </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include '../footer.php' ?>

<script type="text/javascript" src="../dist/assets/dataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../dist/assets/dataTables/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#table-user').DataTable();
} );
</script>
</html>