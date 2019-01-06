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
        Edit PIC
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-lahan"></i> PIC</a></li>
        <li class="active">Edit PIC</li>
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
              <form action="proses_edit_pic.php" method="POST" class="form-horizontal">
              <?php 
              include '../koneksi.php';
              $id = $_GET['id'];
              $query = mysqli_query($konek, "SELECT * FROM tbl_pic where id_pic = '$id'");
              $data = mysqli_fetch_assoc($query);
              ?>
              <input type="hidden" value="<?= $id ?>" name="id_pic">
                <div class="form-group">
                  <label class="col-sm-1">Nama PIC</label>
                  <div class="col-sm-8">
                    <input type="text" name="nama_pic" value="<?= $data['nama_pic'] ?>" placeholder="Nama PIC" class="form-control">
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <label class="col-sm-1">Jenis Kelamin</label>
                  <div class="col-sm-8">
                    
                    <select class="form-control" name="jk" required="" value="<?= $data['alamat'] ?>" >
                      <option value="" disabled="" selected="">--Pilih Jenis Kelamin--</option>
                      <option value="Laki-Laki" <?php $data['jk'] == 'Laki-Laki' ? print "selected" : "";?> >Laki-Laki</option>
                      <option value="Perempuan" <?php $data['jk'] == 'Perempuan' ? print "selected" : "";?>>Perempuan</option>
                    </select>
                  </div>
                </div>
                  <hr>
                  <div class="form-group">
                  <label class="col-sm-1">Jabatan </label>
                  <div class="col-sm-8">
                    <select class="form-control" name="jabatan" required="">
                      <option value="" disabled="" selected="">--Pilih Jabatan--</option>
                      <option value="Projek Manajer" <?php $data['jabatan'] == 'Projek Manajer' ? print "selected" : "";?>>Projek Manajer</option>
                      <option value="Programmer Senior" <?php $data['jabatan'] == 'Programmer Senior' ? print "selected" : "";?>>Programmer Senior</option>
                      <option value="Programmer Junior" <?php $data['jabatan'] == 'Programmer Junior' ? print "selected" : "";?>>Programmer Junior</option>
                      <option value="Peserta Magang" <?php $data['jabatan'] == 'Peserta Magang' ? print "selected" : "";?>>Peserta Magang</option>
                    </select>
                  </div>
                </div>
                  <hr>
                  <div class="form-group">
                  <label class="col-sm-1">Alamat</label>
                  <div class="col-sm-8">
                   <textarea name="alamat" class="form-control"><?= $data['alamat'] ?></textarea>
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