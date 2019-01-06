<?php
include '../header.php';
if ($_SESSION['role'] == 0) {
  header('location:/');
}
?>
<link rel="stylesheet" type="text/css" href="../dist/assets/dataTables/css/dataTables.bootstrap.min.css">
<?php
include '../menu.php';

?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Bobot Kriteria
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-leaf"></i> Nilai Bobot Kriteria</a></li>
        <li class="active">Data Nilai Bobot Kriteria</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="row">
       <div class="col-xs-12">
          <div class="box">
          <?php if ($_SESSION['role'] == 1): ?>
            <div class="box-header">
              <a href="<?php url('admin/tambah-bobot-kriteria.php') ?>" class="btn btn-flat btn-success">Tambah Nilai Bobot Kriteria</a>
            </div>
          <?php endif ?>
            <!-- /.box-header -->
             <div class="box-body">
                <table id="table-bobot-kriteria" class="table table-hover table-bordered">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Aturan Kriteria</th>
                      <th>Nilai</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                  include '../koneksi.php';
                  $no = 1;
                  $id_bobot = $_GET['id'];
                  $query = mysqli_query($konek, "SELECT * FROM tbl_aturan_bobot where id_bobot = '$id_bobot'");
                  $test = mysqli_fetch_assoc($query);
                  foreach ($query as $data) {
                  ?>
                    <tr>
                      <td><?= $no ?></td>
                      <td><?= $data['aturan'] ?></td>
                      <td><?= $data['nilai'] ?></td>
                  <?php $no++; } ?>
                  </tbody>
                </table>
             </div>
          </div>
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
    $('#table-bobot-kriteria').DataTable();
} );
</script>
</html>