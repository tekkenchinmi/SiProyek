<?php
include '../header.php';
if ($_SESSION['role'] == null) {
  header('location:/');
}
include '../menu.php';
?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Klien
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-lahan"></i> Klien</a></li>
        <li class="active">Edit Klien</li>
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
              <form action="proses_edit_klien.php" method="POST" class="form-horizontal">
              <?php 
              include '../koneksi.php';
              $id = $_GET['id'];
              $query = mysqli_query($konek, "SELECT * FROM tbl_klien where id_klien = '$id'");
              $data = mysqli_fetch_assoc($query);
              ?>
              <input type="hidden" value="<?= $id ?>" name="id_klien">
                <div class="form-group">
                  <label class="col-sm-1">Nama Perusahaan</label>
                  <div class="col-sm-8">
                    <input type="text" name="nama_perusahaan" value="<?= $data['nama_perusahaan'] ?>" placeholder="Nama Perusahaan" class="form-control">
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <label class="col-sm-1">Alamat</label>
                  <div class="col-sm-8">
                    <textarea name="alamat" class="form-control"> <?= $data['alamat'] ?></textarea>
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <div class="col-sm-offset-1 col-sm-11">
                    <button type="submit" class="btn btn-flat btn-info">Submit</button>
                  </div>
                </div>
              </form>
             </div>
          </div>
       </div>
    </div>
    
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

 <?php include '../footer.php' ?>
</html>