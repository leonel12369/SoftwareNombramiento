<jsp:include page="Cabezera.jsp"/>
  <!-- contenedor de todo la pagina-->
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <div class="register-box">
          <div class="register-logo">
            <a href=""><b>Sist.</b>Nombramiento</a>
          </div>

          <div class="register-box-body">
              <form action="RegistrarUsuario" method="post">
              <div class="form-group has-feedback">
                <input type="text" name="dni_usuario" class="form-control" placeholder="DNI" maxlength="8">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                  <input type="text" name="codigo_facultad" class="form-control" placeholder="Codigo Facultad(27)" maxlength="2">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                <input type="text" name="nombre_usuario" class="form-control" placeholder="Nombre" >
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                <input type="text" name="apellido_usuario" class="form-control" placeholder="Apellido">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                <input type="email" name="email" class="form-control" placeholder="email">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
              </div>
              <div class="form-group has-feedback">
                <input type="password" name="pass" class="form-control" placeholder="Password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
              </div>
                <!-- /.col -->
                <div class="row">
                    <div class="col-xs-12">
                        <button  type="submit" class="btn btn-sm btn-info btn-flat pull-left">Registrar</button>
                        <button class="btn btn-sm btn-default btn-flat pull-right"><a href="Contenido.jsp">CANCELAR</button>
                    </div>
                </div>

            </form>
          </div>
          <!-- /.form-box -->
        </div>
      </section>
  </div>
<jsp:include page="PiePagina.jsp"/> 