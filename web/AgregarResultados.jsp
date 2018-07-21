<jsp:include page="Cabezera.jsp"/>
  <!-- contenedor de todo la pagina-->
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <div class="register-box">
          <div class="register-logo">
            <a href="">SUBIR NOTAS</a>
          </div>

          <div class="register-box-body">
              <form action="RegistrarUsuario" method="post">
              <div class="form-group has-feedback">
                <input type="text" name="nombre" class="form-control" placeholder="Nombre" >
              </div>
              <div class="form-group has-feedback">
                <input type="text" name="apellido" class="form-control" placeholder="Apellido">
              </div>
              <div class="form-group has-feedback">
                <input type="text" name="nomUsuario" class="form-control" placeholder="DNI">
              </div>
              <div class="form-group has-feedback">
                <input type="password" name="pass" class="form-control" placeholder="NOTA">
              </div>
              <div class="row">
                <!-- /.col -->
                <div class="row">
                    <div class="col-xs-12">
                      <button class="btn btn-sm btn-info btn-flat pull-left">SUBIR</button>
                      <button class="btn btn-sm btn-default btn-flat pull-right"><a href="Contenido.jsp">CANCELAR</button>
                    </div>
               </div>   
                
                <!-- /.col -->
              </div>
            </form>
          </div>
          <!-- /.form-box -->
        </div>
      </section>
  </div>
<jsp:include page="PiePagina.jsp"/> 