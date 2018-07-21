<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controlador.Conexion"%>
<%@page import="Controlador.Conexion"%>
<jsp:include page="Cabezera.jsp"/>
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <div class="register-box">
          <div class="register-logo">
                <a href=""><b>EDITAR USUARIO</a>
          </div>
                <% 
                String cod=request.getParameter("cod");
                try{
                Conexion cn=new Conexion();
                Connection con=null;
                Statement sta=null;
                ResultSet rs=null;
                sta=cn.getConexion().createStatement();
                rs=sta.executeQuery("select * from usuario where dni_usuario='"+cod+"'");
                while(rs.next()){
                %>
          <div class="register-box-body">
              <form action="EditarUsuario" method="post">
                <div class="hidden-lg bg-succes" >
                  <input type="text" name="dni_usuario" value="<%=rs.getString(1)%>" class="form-control"  >
                  <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <input type="text" name="codigo_facultad" value="<%=rs.getString(2)%>" class="form-control" placeholder="Codigo Facultad" >
                  <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <input type="text" name="nombre_usuario" value="<%=rs.getString(3)%>" class="form-control" placeholder="Nombre">
                  <span class="glyphicon glyphicon-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <input type="text" name="apellido_usuario" value="<%=rs.getString(4)%>" class="form-control" placeholder="Apellido ">
                  <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <input type="eamil" name="email" value="<%=rs.getString(5)%>" class="form-control" placeholder="email">
                  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                  <input type="password" name="pass" value="<%=rs.getString(6)%>" class="form-control" placeholder="Password">
                  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
              <div class="row">
                <div class="col-xs-8">
                  <div class="checkbox icheck">
                  </div>
                </div>
        
                <div class="row">
                    <div class="col-xs-12">
                      <button type="submit" class="btn btn-sm btn-info btn-flat pull-left">ACEPTAR</button>
                      <button class="btn btn-sm btn-default btn-flat pull-right"><a href="Contenido.jsp">CANCELAR</button>
                    </div>
                </div>
              </div>
            </form>      
                  <%

                }
        }catch(Exception e){}
                %>
          </div>
          <!-- /.form-box -->
        </div>
    </section>
  </div>

<jsp:include page="PiePagina.jsp"/>