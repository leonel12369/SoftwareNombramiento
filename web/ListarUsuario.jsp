<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="Cabezera.jsp"/>
  <!-- contenedor de todo la pagina-->
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <h1>LISTADO DE USUARIOS</h1>
 
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">TABLA DE COMPROBANTE DE PAGO</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                    <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">DNI</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Codigo Facultad</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Nombre</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Apellido</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">email</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Password</th> <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Accion</th></tr>
                </thead>
                <% 
                    try{
                    Conexion cn=new Conexion();
                    Connection con=null;
                    Statement sta=null;
                    ResultSet rs=null;
                    sta=cn.getConexion().createStatement();
                    rs=sta.executeQuery("select * from usuario");
                    while(rs.next()){
                %>
                <tbody>  
                <tr role="row" class="odd">
                  <td><%=rs.getString(1)%></td>
                  <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                  <td><%=rs.getString(4)%></td>
                  <td><%=rs.getString(5)%></td>
                  <td><%=rs.getString(6)%></td>
                  <td>
                    <a href="EditarUsuario.jsp?cod=<%=rs.getString(1)%>">   
                        <img  src="Boostrap/dist/img/editar.png" >
                        </a>||
                        <a href="EliminarUsuario.jsp?cod=<%=rs.getString(1)%>">
                        <img src="Boostrap/dist/img/deleteusers.png" >
                    </a>
                <%
                    }
                    sta.close();
                    rs.close();
                    con.close();
                    }catch(Exception e){}
                %>
                  </td>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
 
    </section>
  </div>
<jsp:include page="PiePagina.jsp"/>