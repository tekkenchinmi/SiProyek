<?php
include '../header.php';
if ($_SESSION['role'] == null || $_SESSION['role'] != 0) {
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
        Data Progres Pengerjaan Projek
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-users"></i>Progres Pengerjaan Projek</a></li>
        <li class="active">Progres Pengerjaan Projek</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="table-user" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Tanggal Mulai</th>
                  <th>Tanggal Selesai</th>
                  <th>Nama PIC</th>
                  <th>Nama Leader</th>
                  <th>Nama Klien</th>
                  <th>Jenis Projek</th>
                  <th>Progres</th>
                  <th>Prosentase (%)</th>
                  <th>Status</th>
                  <th>Tindak Lanjut</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                <?php
                include('../koneksi.php');
                $no = 1;
                $query = mysqli_query($konek, "SELECT * FROM tbl_board WHERE status ='Belum Selesai' ORDER BY nama_pic asc ");
                foreach ($query as $data) {
                ?>
                <tr>
                  <td><?= $no ?></td>
                  <td><?= $data['tgl_mulai'] ?></td>
                  <td><?= $data['tgl_selesai'] ?></td>
                  <td><?= $data['nama_pic'] ?></td>
                  <td><?= $data['leader'] ?></td>
                  <td><?= $data['nama_perusahaan'] ?></td>
                  <td><?= $data['jenis_projek'] ?></td>
                  <td><?= $data['progres'] ?></td>
                  <td><?= $data['prosentase'] ?></td>
                  <td><?= $data['status'] ?></td>
                  <td><?= $data['tindak_lanjut'] ?></td>
                  <td><a href="user-edit-projek.php?id=<?= $data['id_board'] ?>" class="btn btn-flat btn-warning" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></i></a></td>
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