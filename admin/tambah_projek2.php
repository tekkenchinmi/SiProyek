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
Tambah Projek
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-lahan"></i> Info Data Tambah Projek</a></li>
        <li class="active">Data Projek</li>
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
            	<form action="proses-tambah-projek2.php" method="POST" class="form-horizontal" enctype="multipart/form-data">
            		<div class="form-group">
            			<label class="col-sm-1">Tanggal Mulai </label>
            			<div class="col-sm-8">
            				<input  type="date" name="tgl_mulai" placeholder="Tanggal Mulai" class="form-control" required>
            			</div>
            		</div>
                <hr>

                <div>


                <div class="form-group">
                  <label class="col-sm-1">Tanggal Selesai </label>
                  <div class="col-sm-8">
                    <input type="date" name="tgl_selesai" placeholder="Tanggal Selesai" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Nama PIC </label>
                  <div class="col-sm-8">
                    <input type="text" name="nama_pic"  placeholder="Nama PIC" class="form-control" required>
                  </div>
                </div>                
                  <hr>
                <div class="form-group">
                  <label class="col-sm-1">Nama Perusahaan</label>
                  <div class="col-sm-8">
                    <input type="text" name="nama_perusahaan" placeholder="Nama Perusahaan" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Prosentase</label>
                  <div class="col-sm-8">
                    <input type="text" name="prosentase" placeholder="Prosentase" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Status</label>
                  <div class="col-sm-8">
                    <input type="text" name="status" placeholder="Status" class="form-control" required>
                  </div>
                </div>
                <hr>

                <div class="form-group">
                  <label class="col-sm-1">Tindak Lanjut</label>
                  <div class="col-sm-8">
                    <input type="text" name="tindak_lanjut" placeholder="Tindak Lanjut" class="form-control" required>
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