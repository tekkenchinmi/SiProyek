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
        Edit Projek
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-lahan"></i> Edit Progres Projek</a></li>
        <li class="active">Edit Projek</li>
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
              <form action="proses_edit_projek.php" method="POST" class="form-horizontal">
              <?php 
              include '../koneksi.php';
              $id = $_GET['id'];
              $query = mysqli_query($konek, "SELECT * FROM tbl_board where id_board = '$id'");
              $data1 = mysqli_fetch_assoc($query);
              ?>
<div class="form-group">
                  <label class="col-sm-1">Tanggal Mulai </label>
                  <div class="col-sm-8">
                    <input type="date" name="tgl_mulai" value="<?= $data1['tgl_mulai'] ?>"  placeholder="Tanggal Mulai" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div>


                <div class="form-group">
                  <label class="col-sm-1">Tanggal Selesai </label>
                  <div class="col-sm-8">
                    <input type="date" name="tgl_selesai" value="<?= $data1['tgl_selesai'] ?>" placeholder="Tanggal Selesai" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Nama PIC </label>
                  <div class="col-sm-8">
                    <?php
                      $con = mysqli_connect("localhost", "root", "", "db_siproyek");
                    ?>
                    
                    <select class="form-control" name="nama_pic" required="">
                      <option value="" disabled="" selected="">-- Pilih Nama PIC --</option>
                      <?php 
                        $sql = "select * from tbl_pic";
                        $result = mysqli_query($con, $sql);
                        if (mysqli_num_rows($result)!='') {
                          while ($data = mysqli_fetch_array($result, MYSQLI_NUM)) {
                       ?>

                       <option value="<?php echo($data[1])?>" selected> <?php echo $data[1]?></option>
                       <?php
                       }
                       }else{
                       echo "Data Tidak Ada";
                       } 
                       ?>
                    </select>
                  </div>
                </div>                
                  <hr>

                  <div class="form-group">
                  <label class="col-sm-1">Nama Leader </label>
                  <div class="col-sm-8">
                    <?php
                      $con = mysqli_connect("localhost", "root", "", "db_siproyek");
                    ?>
                    
                    <select class="form-control" name="leader" required="">
                      <option value="" disabled="" selected="">-- Pilih Nama Leader --</option>
                      <?php 
                        $sql = "select * from tbl_pic ORDER BY nama asc";
                        $result = mysqli_query($con, $sql);
                        if (mysqli_num_rows($result)!='') {
                          while ($data = mysqli_fetch_array($result, MYSQLI_NUM)) {
                       ?>

                       <option  value="<?php echo($data[1])?>" selected> <?php echo $data[1]?></option>
                       <?php
                       }
                       }else{
                       echo "Data Tidak Ada";
                       } 
                       ?>
                    </select>
                  </div>
                </div>                
                  <hr>

                <div class="form-group">
                  <label class="col-sm-1">Nama Perusahaan</label>
                  <div class="col-sm-8">
                    <?php
                      $con = mysqli_connect("localhost", "root", "", "db_siproyek");
                    ?>

                    <select class="form-control" name="nama_perusahaan" required="">
                      <option value="" disabled="" selected="">-- Pilih Nama Perusahaan --</option>
                      <?php 
                        $sql = "select * from tbl_klien ORDER BY nama_perusahaan asc ";
                        $result = mysqli_query($con, $sql);
                        if (mysqli_num_rows($result)!='') {
                          while ($data = mysqli_fetch_array($result, MYSQLI_NUM)) {
                       ?>
                       <option  value="<?php echo($data[1])?>" selected> <?php echo $data[1]?></option>
                       <?php
                       }
                       }else{
                       echo "Data Tidak Ada";
                       } 
                       ?>
                    </select>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Jenis Projek</label>
                  <div class="col-sm-8">
                      <select class="form-control" name="jenis_projek" required="">
                      <option value="" disabled="" selected="">-- Pilih Jenis Projek --</option>
                      <option value="SLIK" <?php $data1['jenis_projek'] == 'SLIK' ? print "selected" : "";?> >SLIK</option>
                      <option value="SIPP" <?php $data1['jenis_projek'] == 'SIPP' ? print "selected" : "";?> >SIPP</option>
                       </select>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Progres</label>
                  <div class="col-sm-8">
                    <textarea name="progres" placeholder="Progres" class="form-control" required><?= $data1['progres'] ?></textarea>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Prosentase</label>
                  <div class="col-sm-8">
                    <input type="number" min="0" max="100" name="prosentase" value="<?= $data1['prosentase'] ?>" placeholder="Prosentase" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Status</label>
                  <div class="col-sm-8">
                  <select class="form-control" name="status">
                      <option disabled="" selected="">-- Pilih Status --</option>
                      <option value="Belum Selesai" <?php $data1['status'] == 'Belum Selesai' ? print "selected" : "";?> >Belum Selesai</option>
                      <option value="Selesai" <?php $data1['status'] == 'Selesai' ? print "selected" : "";?> >Selesai</option>
                    </select>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Tindak Lanjut</label>
                  <div class="col-sm-8">
                    <textarea name="tindak_lanjut" placeholder="Tindak Lanjut" class="form-control" required><?= $data1['tindak_lanjut'] ?></textarea>
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