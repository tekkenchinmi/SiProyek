</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="dashboard.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>SPK</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">SIPROYEK</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
            <span class="hidden-xs">Selamat Datang</span>
            
              <?php if (!file_exists($path_foto) || $_SESSION['foto'] == null) { ?>
                <img src="<?= ROOTDIR ."dist/img/user2-160x160.jpg" ?>" class="user-image" alt="User Image">
              <?php }else{ ?>
                 <img src="<?= ROOTDIR ."images/".$_SESSION['foto']; ?>" class="user-image" alt="User Image">
              <?php } ?>
              
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
             <span class="hidden-xs"><?= $_SESSION['nama'] ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <?php if (!file_exists($path_foto) || $_SESSION['foto'] == null) { ?>
                <img src="<?= ROOTDIR ."dist/img/user2-160x160.jpg" ?>" class="img-circle" alt="User Image">
              <?php }else{ ?>
                 <img src="<?= ROOTDIR ."images/".$_SESSION['foto']; ?>" class="img-circle" alt="User Image">
              <?php } ?>

                <p>
                  <?= $_SESSION['nama'] ?>
                  <small>User</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                <?php if ($_SESSION['role'] == 1){ ?>
                  <a href="<?php url('admin/edit-admin.php?id='.$_SESSION['id']) ?>" class="btn btn-default btn-flat">Edit</a>
                </div>
                <?php }elseif($_SESSION['role'] == 0){ ?>
                  <a href="<?php url('user/edit-user.php?id='.$_SESSION['id']) ?>" class="btn btn-default btn-flat">Edit</a>
                </div>
                <?php } ?>
                <div class="pull-right">
                  <a href="<?php url('logout.php') ?>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <?php if (!file_exists($path_foto) || $_SESSION['foto'] == null) { ?>
                <img src="<?= ROOTDIR ."dist/img/user2-160x160.jpg" ?>" class="img-circle" alt="User Image">
              <?php }else{ ?>
                 <img src="<?= ROOTDIR ."images/".$_SESSION['foto']; ?>" width="160" height="160" class="img-circle" alt="User Image">
              <?php } ?>
        </div>
        <div class="pull-left info">
          <p><?= $_SESSION['nama'] ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">MENU NAVIGATION</li>
        <!-- Optionally, you can add icons to the links -->
        <li><a href="<?php url('dashboard.php') ?>"><i class="fa fa-home"></i> <span>Home</span></a></li>

        <?php if ($_SESSION['role'] == 1) { ?>
        <li class="treeview">
          <a href="#"><i class="fa fa-users"></i> <span>User</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php url('admin/tambah-user.php') ?>"><i class="fa fa-plus" aria-hidden="true"></i> <span>Tambah User</span></a></li>
            <li><a href="<?php url('admin/data-user.php') ?>"><i class="fa fa-users" aria-hidden="true"></i> <span>Data User</span></a></li>
          </ul>
        </li>
                <?php } ?>

<!-- menu kiri data klien -->
 <?php if ($_SESSION['role'] == 1) { ?>
        <li class="treeview">
          <a href="#"><i class="fa fa-leaf"></i> <span>Data Klien</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>

          <ul class="treeview-menu">
            <li><a href="<?php url('admin/tambah_klien.php') ?>"><i class="fa fa-plus" aria-hidden="true"></i> <span>Tambah Data Klien</span></a></li>
            <li><a href="<?php url('admin/data-klien.php') ?>"><i class="fa fa-users" aria-hidden="true"></i> <span>Lihat Data Klien</span></a></li>
          </ul>
 </li>

 <li class="treeview">
          <a href="#"><i class="fa fa-leaf"></i> <span>Data PIC</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>

          <ul class="treeview-menu">
            <li><a href="<?php url('admin/tambah_pic.php') ?>"><i class="fa fa-plus" aria-hidden="true"></i> <span>Tambah Data PIC</span></a></li>
            <li><a href="<?php url('admin/data-pic.php') ?>"><i class="fa fa-users" aria-hidden="true"></i> <span>Lihat Data PIC</span></a></li>
          </ul>
 </li>


  <li class="treeview">
          <a href="#"><i class="fa fa-leaf"></i> <span>Board Proyek</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>

          <ul class="treeview-menu">
            <li><a href="<?php url('admin/tambah_projek.php') ?>"><i class="fa fa-plus" aria-hidden="true"></i> <span>Tambah Pekerjaan</span></a></li>
            <li><a href="<?php url('admin/data-projek.php') ?>"><i class="fa fa-users" aria-hidden="true"></i> <span>Lihat Board Proyek</span></a></li>
          </ul>
 </li>


  <li class="treeview">
          <a href="#"><i class="fa fa-leaf"></i> <span>Laporan</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>

          <ul class="treeview-menu">
            <li><a href="<?php url('admin/lap_data_projek_selesai.php') ?>"><i class="fa fa-book" aria-hidden="true"></i> <span>Proyek Sudah Selesai</span></a></li>
            <li><a href="<?php url('admin/lap_data_projek_belum.php') ?>"><i class="fa fa-book" aria-hidden="true"></i> <span>Proyek Belum Selesai</span></a></li>
          </ul>
 </li>
  <?php }
        ?>
<!-- akhir menu kiri data admin -->

<!-- menu untuk user -->
        
        <?php if ($_SESSION['role'] == 0) { ?>
        
   <li class="treeview">
          <a href="#"><i class="fa fa-leaf"></i> <span>Board Proyek</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>

          <ul class="treeview-menu">
            <li><a href="<?php url('user/user-data-projek.php') ?>"><i class="fa fa-users" aria-hidden="true"></i> <span>Lihat Board Proyek</span></a></li>
          </ul>
 </li>


   <?php }
        ?>

        <li><a href="<?php url('logout.php') ?>"><i class="fa fa-sign-out" aria-hidden="true"></i> <span>Logout</span></a></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>