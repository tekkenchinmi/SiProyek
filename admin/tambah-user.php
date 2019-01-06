<?php
include '../header.php';
if ($_SESSION['role'] == null || $_SESSION['role'] != 1) {
  header('location:../index.php');
}
include '../menu.php';
?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah User
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-users"></i> User</a></li>
        <li class="active">Tambah User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="row">
       <div class="col-xs-12">
          <div class="box">
          	<div class="box-header">
          		<?php
          		if (!empty($_SESSION['error'])) {
          		?>
          		<div class="alert alert-danger" role="alert">Field <?= $_SESSION['error']; ?></div>
          		<?php 
          			unset($_SESSION['error']);
          		}

          		?>
            </div>
            <!-- /.box-header -->
             <div class="box-body">
            	<form action="proses-tambah-user.php" method="POST" class="form-horizontal">
            		<div class="form-group">
            			<label class="col-sm-1">Nama</label>
            			<div class="col-sm-8">
            				<input type="text" name="nama" placeholder="Nama" class="form-control" required>
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Username</label>
            			<div class="col-sm-8">
            				<input type="text" name="username" placeholder="Username" class="form-control" required>
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Password</label>
            			<div class="col-sm-8">
            				<input type="password" name="password" placeholder="Password" class="form-control" required>
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Konfirmasi Password</label>
            			<div class="col-sm-8">
            				<input type="password" name="konfirmasi_password" placeholder="Konfirmasi Password" class="form-control" required>
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