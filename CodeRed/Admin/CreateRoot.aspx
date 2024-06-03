﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRoot.aspx.cs" Inherits="CodeRed.Admin.CreateRoot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin| Courses</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
      
          <!-- Notifications: style can be found in dropdown.less -->

          <!-- Tasks: style can be found in dropdown.less -->
     
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             
                <span class="hidden-xs">
                  <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> </span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
               

                <p>
                
                  <small>Member since . 2024</small>
                </p>
              </li>
              <!-- Menu Body -->
          
              <!-- Menu Footer-->
              <li class="user-footer">
              
                <div class="pull-right">
                  <a href="index.aspx" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         <%-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>--%>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
     <section class="sidebar">
      <!-- Sidebar user panel -->

   
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
		   <li class="active"><a href="index.aspx"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        <li class="active treeview">
		   
        </li>

        <li class="header">User Option</li>
       
             <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Tour Packages</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </a>
           <ul class="treeview-menu">
       <%--     <li><a href="Alumini.aspx"><i class="fa fa-circle-o"></i> Alumini</a></li>--%>
            <li><a href="createPackage.aspx"><i class="fa fa-circle-o"></i> Create</a></li>
            <li><a href="managePackages.aspx"><i class="fa fa-circle-o"></i> Manage</a></li>
          <%--   <li><a href="ManageJob.aspx"><i class="fa fa-circle-o"></i> Manage Job_Drive</a></li>--%>
         
          </ul>
        </li>
     
       <%--<li><a href="courses.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>Courses</span></a></li>--%>
       <%--   <li><a href="funds_view.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>Funds</span></a></li>--%>
        <li><a href="ManageUser.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>View Users</span></a></li>
       <li><a href="ManageBooking.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>Manage Booking</span></a></li>
       <li><a href="manageenquires.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>manage enquires</span></a></li>
   <%--    <li><a href="view_alumuni_meet.aspx"><i class="fa fa-circle-o text-yellow"></i> <span>Alumini meet</span></a></li>--%>
        <li><a href="../logout.aspx"><i class="fa fa-sign-out text-aqua"></i> <span>Logout</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Upload Root Details
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
      <section class="content">
           <div class="box box-default">
     
        <!-- /.box-header -->
                 <form runat="server">
        <div class="box-body">
          <div class="row">
            
         
              <!-- /.form-group -->
     
              <!-- /.form-group -->
              <div class="col-md-6">
                <div class="form-group">
                <label>Source </label>
              <input type="text" class="form-control" id="source" runat="server" placeholder="Source">
              </div>
             </div>
              <div class="col-md-6">
                <div class="form-group">
                <label>Destination</label>
              <input type="text" class="form-control" id="destination" runat="server" placeholder="Destination">
              </div>
             </div>

                 <div class="col-md-6">
                <div class="form-group">
                <label>Source Lattitude</label>
              <input type="text" class="form-control" id="SLattitude" runat="server" placeholder="Source Lattitude">
              </div>
             </div>   <div class="col-md-6">
                <div class="form-group">
                <label>Source Longitude</label>
              <input type="text" class="form-control" id="SLongitude" runat="server" placeholder="Source Longitude">
              </div>
             </div>

                <div class="col-md-6">
                <div class="form-group">
                <label>Destination Lattitude</label>
              <input type="text" class="form-control" id="DLattitude" runat="server" placeholder="Destination Lattitude">
              </div>
             </div>   <div class="col-md-6">
                <div class="form-group">
                <label>Destination Longitude</label>
              <input type="text" class="form-control" id="DLongitude" runat="server" placeholder="Destination Longitude">
              </div>
             </div>
       
                 <div class="box-footer">
              
                <button type="submit" class="btn btn-info pull-right" onserverclick="Unnamed_ServerClick1" runat="server">Upload</button>
              </div>
            </div>

                <%-- <div class="col-md-6">
              <div class="form-group">
               <%-- <label>fertilizer Details</label>
              <input type="text" class="form-control" id="ferdet" runat="server" placeholder="Enter ...">--%>
              </div>
              <!-- /.form-group -->
          <%-- <div class="form-group">
                <label>Cost/acre</label>
              <input type="text" class="form-control" id="cost" runat="server" placeholder="Enter ...">
              </div>--%>
              <!-- /.form-group -->
                       </form>
            </div>



        </section>

           
            <!-- /.col -->
                 <%-- <div class="col-md-12">
              <div class="form-group">
                <label>cultivation Details </label>
             <textarea class="form-control" rows="3" id="desc" runat="server" placeholder="Enter ..."></textarea>
              </div>--%>
              <!-- /.form-group -->
         
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
      
                 <%--<div class="box-footer">
              
                <button type="submit" class="btn btn-info pull-right" onserverclick="Unnamed_ServerClick1" runat="server">Upload</button>
              </div>--%>
             
        <!-- /.box-body -->
    
   
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2024 <a target="_blank" href="">@admin2024</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
