
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controlador.Conexion"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Cabezera.jsp"/>
  <!-- contenedor de todo la pagina-->
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <h1>ELIMINAR  USUARIOS</h1>
        
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Eliminar Usuario</h3>
            </div>
        <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">idUsuario</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Nombre</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Apellido</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Nombre Usuario</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">contraseña</th> <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Accion</th></tr>
                </thead>
                <% 
                    try{
                        String cod=request.getParameter("cod");
                        Conexion cn=new Conexion();
                        Connection con=null;
                        Statement sta=null;
                        ResultSet rs=null;
                        sta=cn.getConexion().createStatement();
                        sta.executeUpdate("delete from usuario where dni_usuario='"+cod+"'");
                        request.getRequestDispatcher("ListarUsuario.jsp").forward(request, response);
                        sta.close();
                        rs.close();
                        con.close();
                    }
                    catch(Exception e){
                        System.out.println("Error"+e);
                    }
                %>               
            </tr>
            
        </table>
    </section>
  </div>
<jsp:include page="PiePagina.jsp"/>