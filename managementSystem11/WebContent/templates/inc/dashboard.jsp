
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="<%= request.getContextPath()%>/templates/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<%= request.getContextPath()%>/templates/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Plugin CSS -->
    <link href="<%= request.getContextPath()%>/templates/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<%= request.getContextPath()%>/templates/css/sb-admin.css" rel="stylesheet">
	<link rel="shortcut icon" href="<%= request.getContextPath()%>/templates/public/images/logo.png" type="image/x-icon" />

 	 <script src="<%= request.getContextPath()%>/templates/vendor/jquery/jquery.min.js"></script>
	<script src="<%= request.getContextPath()%>/templates/vendor/jquery/jquery.validate.min.js"></script>

  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  <link rel="stylesheet prefetch" href="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.css">
    <style type="text/css">
      .hiden{display:none}
      .error{color:red}

    .label-info {background-color: #5bc0de;}
    </style>

  </head>

  <body class="fixed-nav" id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <a class="navbar-brand" href="">ADMIN CP</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav">
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
            <a class="nav-link" href="/admin">
              <i class="fa fa-fw fa-dashboard"></i>
              <span class="nav-link-text">
                Dashboard</span>
            </a>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#trainee">
              <i class="fa fa-fw fa-user"></i>
              <span class="nav-link-text">
                Trainee</span>
            </a>
            <ul class="sidenav-second-level collapse" id="trainee">
              <li>
                <a href=""><i class="fa fa-fw fa-users"></i> List trainee</a>
              </li>
              <li>
                <a href=""><i class="fa fa-fw fa-plus"></i> Add new trainee</a>
              </li>
              <li>
                <a href=""><i class="fa fa-fw fa-info"></i> Your profile</a>
              </li>
            </ul>
          </li>

          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#trainer">
              <i class="fa fa-fw fa-user" ></i>
              <span class="nav-link-text">
                Trainer</span>
            </a>
            <ul class="sidenav-second-level collapse" id="trainer">
              <li>
                <a href=""><i class="fa fa-list" ></i> List trainer</a>
              </li>
              <li>
                <a href=""><i class="fa fa-fw fa-plus"></i> Add trainer</a>
              </li>
            </ul>
          </li>
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#class">
              <i class="fa fa-fw fa-tag"></i>
              <span class="nav-link-text">
                Classes</span>
            </a>
            <ul class="sidenav-second-level collapse" id="class">
              <li>
                <a href=""><i class="fa fa-fw fa-tag"></i> List Class</a>
              </li>
              <li>
                <a href=""><i class="fa fa-fw fa-plus"></i> Add new class</a>
              </li>
            </ul>
          </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="contact">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#room">
              <i class="fa fa-product-hunt" ></i>
              <span class="nav-link-text">
                Rooms</span>
          </a>
          <ul class="sidenav-second-level collapse" id="room">
            <li>
              <a href=" "><i class="fa fa-fw fa-list"></i> List rooms</a>
            </li>
            <li>
              <a href=" "><i class="fa fa-fw fa-plus"></i> Add new room</a>
            </li>
          </ul>
        </li>
       
        </ul>
        <script type="text/javascript">
      jQuery(document).ready(function($){
        var url = window.location.href;
          $(".nav-item a").each(function() {
              if(url == (this.href)) {
                  $(this).closest("li").addClass("active");
              }
          });
      });
     </script>
        <ul class="navbar-nav sidenav-toggler">
          <li class="nav-item">
            <a class="nav-link text-center" id="sidenavToggler">
              <i class="fa fa-fw fa-angle-left"></i>
            </a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">

          <li class="nav-item">
            <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
              <i class="fa fa-fw fa-sign-out"></i>
              Logout</a>
          </li>
        </ul>
      </div>
    </nav>
