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
Tambah Data PIC
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-lahan"></i> Info Data PIC</a></li>
        <li class="active">Data Dasar</li>
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
            	<form action="proses-tambah-pic.php" method="POST" class="form-horizontal" enctype="multipart/form-data">
            		<div class="form-group">
            			<label class="col-sm-1">Nama </label>
            			<div class="col-sm-8">
            				<input type="text" name="nama_pic" placeholder="Nama" class="form-control" required>
            			</div>
            		</div>
                <hr>
                <div class="form-group">
                  <label class="col-sm-1">Jenis Kelamin</label>
                  <div class="col-sm-8">
                    
                    <select class="form-control" name="jk" required="">
                      <option value="" disabled="" selected="">--Pilih Jenis Kelamin--</option>
                      <option value="Laki-Laki">Laki-Laki</option>
                      <option value="Perempuan">Perempuan</option>
                    </select>
                  </div>
                </div>
                  <hr>
                
                <div class="form-group">
                  <label class="col-sm-1">Jabatan </label>
                  <div class="col-sm-8">
                    <select class="form-control" name="jabatan" required="">
                      <option value="" disabled="" selected="">--Pilih Jabatan--</option>
                      <option value="Projek Manajer">Projek Manajer</option>
                      <option value="Programmer Senior">Programmer Senior</option>
                      <option value="Programmer Junior">Programmer Junior</option>
                      <option value="Peserta Magang">Peserta Magang</option>
                    </select>
                  </div>
                </div>
                <hr>
                <div class="form-group">
                  <label class="col-sm-1">Alamat</label>
                  <div class="col-sm-8">
                    <textarea  name="alamat" placeholder="Alamat" class="form-control" required></textarea>
                  </div>
                </div>
                <hr>
                
          


<!--                 <div class="form-group">
                  <label class="col-sm-1">Persyaratan Tumbuh </label>
                  <div class="col-sm-10">
                    <textarea name="des_2" class="form-control" rows="7"></textarea>
                  </div>
                </div>
                <hr> 
                <div class="form-group">
                  <label class="col-sm-1">Persemaian </label>
                  <div class="col-sm-10">
                    <textarea name="des_3" class="form-control" rows="7"></textarea>
                  </div>
                </div>
                <hr> 
                <div class="form-group">
                  <label class="col-sm-1">Penyiapan Lahan dan Penanaman </label>
                  <div class="col-sm-10">
                    <textarea name="des_4" class="form-control" rows="7"></textarea>
                  </div>
                </div>
                <hr>
                 <div class="form-group">
                  <label class="col-sm-1">Pemupukan</label>
                  <div class="col-sm-10">
                    <textarea name="des_5" class="form-control" rows="7"></textarea>
                  </div>
                </div>
                <hr><div class="form-group">
            			<label class="col-sm-1">Panen dan Pasca Panen</label>
            			<div class="col-sm-10">
            				<textarea name="des_6" class="form-control" rows="7"></textarea>
            			</div>
            		</div>
            		<hr>
 -->            		
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