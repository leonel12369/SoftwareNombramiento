<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>SISTEMA DE NOMRAMIENTO</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="Boostrap/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="Boostrap/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="Boostrap/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="Boostrap/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="Boostrap/dist/css/skins/_all-skins.min.css">
</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!--Toda la Barra Supeior-->
  <header class="main-header">
    <!-- Logo -->
    <a href="" class="logo">
      <!-- mini logo -->
      <span class="logo-mini"><b>S</b>NOM</span>
      <!-- logo regular -->
      <span class="logo-lg"><b>Sistema</b>Nombramiento</span>
    </a>
    <!-- Navegacion en la parte superior -->
    <nav class="navbar navbar-static-top">
      <!-- Boton para aparecer y deesvanecer la lista-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!---barra superior-->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Mensajes-->
          <!-- Cuenta del Usuario -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="Boostrap/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">LEONEL ROJAS</span>
            </a>
            <!--Modal de usuario -->
            <ul class="dropdown-menu">
              <!-- Imagen del Usuario -->
              <li class="user-header">
                <img src="Boostrap/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>
                  LEONEL ROJAS
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!--Termina Imagen del Usuario -->
              <!-- Menu Usuario-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="index.html" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
              <!--Termina menu Usuario-->
            </ul>
            <!-- Termina Modal de usuario -->
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- Columna del lado Izquierdo-->
  <aside class="main-sidebar">
    <!-- sidebar:Barra Lateral -->
    <section class="sidebar">
      <!-- Sidebar del usuario -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="Boostrap/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>LEONEL ROJAS</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- MENU Total-->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">NAVEGACION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Usuarios</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
              <li class="active"><a href="RegistrarUsuario.jsp"><i class="fa fa-circle-o"></i> Agregar Usuario</a></li>
            <li><a href="ListarUsuario.jsp"><i class="fa fa-circle-o"></i> Modificar Usuario</a></li>
            <li><a href="ListarUsuario.jsp"><i class="fa fa-circle-o"></i> Eliminar Usuario</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Inscripcion</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="FormularioInscripcion.jsp"><i class="fa fa-circle-o"></i>Agregar Docente postulante</a></li>
            <li><a href="ComprobantePago.jsp"><i class="fa fa-circle-o"></i> Comprobante de Pago</a></li>
            <li><a href="ComisionEvaluadora.jsp"><i class="fa fa-circle-o"></i> Comision Evaluadora</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Documentos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href=""><i class="fa fa-circle-o"></i>Emitir Resolucion Decanal</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Emitir Memorandun</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Resultados</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="AgregarResultados.jsp"><i class="fa fa-circle-o"></i>Ingresar Resultados</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Resultados de Examen</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Resultados de Entrevista</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Resultados de Clase</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Resultados General</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i> Docente Aceptados</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>
