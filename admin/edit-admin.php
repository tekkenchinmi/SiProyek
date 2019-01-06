<?php
include '../header.php';
if ($_SESSION['role'] == null || $_SESSION['role'] == 0) {
  header('location:/');
}

$id = $_GET['id'];
include '../menu.php';
?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Admin
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-us"></i> Admin</a></li>
        <li class="active">Edit Admin</li>
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
          		<div class="alert alert-danger" role="alert"><?= $_SESSION['error'] ?></div>
          		<?php 
          			unset($_SESSION['error']);
          		}

          		?>
            </div>
            <!-- /.box-header -->
             <div class="box-body">
            	<form action="proses-edit-admin.php" method="POST" class="form-horizontal" enctype="multipart/form-data">
              <input type="hidden" name="id" value="<?= $id ?>">
              <?php
              include '../koneksi.php';
              $query = mysqli_query($konek, "SELECT * FROM tbl_admin where id_admin = '$id'");
              $data = mysqli_fetch_assoc($query);
              ?>
              <?php if (!is_null($data['foto']) && file_exists($path_foto)): ?>
                <table>
                  <tr>
                    <td><img width="200" height="200" src="<?php url('images/'.$data['foto']) ?>"></td>
                  </tr>
                </table>
                <br>
              <?php endif ?>
                <div class="form-group">
                  <label class="col-sm-1">Foto</label>
                  <div class="col-sm-8">
                    <input type="file" name="foto" value="<?= $data['foto'] ?>" class="form-control">
                  </div>
                </div>
                <hr>
            		<div class="form-group">
            			<label class="col-sm-1">Nama</label>
            			<div class="col-sm-8">
            				<input type="text" name="nama" placeholder="Nama" value="<?= $data['nama'] ?>" class="form-control">
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Username</label>
            			<div class="col-sm-8">
            				<input type="text" name="username" value="<?= $data['username'] ?>" placeholder="Username" class="form-control">
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Password</label>
            			<div class="col-sm-8">
            				<input type="password" name="password" placeholder="Password" class="form-control">
            			</div>
            		</div>
            		<hr>
            		<div class="form-group">
            			<label class="col-sm-1">Konfirmasi Password</label>
            			<div class="col-sm-8">
            				<input type="password" name="konfirmasi_password" placeholder="Konfirmasi Password" class="form-control">
            			</div>
            		</div>
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